# Servidor local para el sitio (sin dependencias)
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File tools\serve.ps1
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$port = 8767
$prefix = "http://127.0.0.1:$port/"

$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add($prefix)
$listener.Start()

Write-Host ""
Write-Host "Servidor local iniciado" -ForegroundColor Green
Write-Host "  Sitio:  ${prefix}peques/index.html?profile=guest"
Write-Host "  Raiz:   $root"
Write-Host "  Parar:  Ctrl+C"
Write-Host ""

$mime = @{
  ".html"  = "text/html; charset=utf-8"
  ".css"   = "text/css; charset=utf-8"
  ".js"    = "application/javascript; charset=utf-8"
  ".json"  = "application/json; charset=utf-8"
  ".svg"   = "image/svg+xml"
  ".png"   = "image/png"
  ".jpg"   = "image/jpeg"
  ".jpeg"  = "image/jpeg"
  ".webp"  = "image/webp"
  ".avif"  = "image/avif"
  ".gif"   = "image/gif"
  ".ico"   = "image/x-icon"
  ".mp4"   = "video/mp4"
  ".webm"  = "video/webm"
  ".mp3"   = "audio/mpeg"
  ".wav"   = "audio/wav"
  ".ogg"   = "audio/ogg"
  ".ttf"   = "font/ttf"
  ".woff"  = "font/woff"
  ".woff2" = "font/woff2"
  ".xml"   = "application/xml; charset=utf-8"
  ".txt"   = "text/plain; charset=utf-8"
  ".md"    = "text/markdown; charset=utf-8"
  ".pdf"   = "application/pdf"
}

function Send-Text {
  param($Context, [int]$Status, [string]$Text)
  $bytes = [System.Text.Encoding]::UTF8.GetBytes($Text)
  $Context.Response.StatusCode = $Status
  $Context.Response.ContentType = "text/plain; charset=utf-8"
  $Context.Response.ContentLength64 = $bytes.Length
  if ($Context.Request.HttpMethod -ne "HEAD") {
    $Context.Response.OutputStream.Write($bytes, 0, $bytes.Length)
  }
  $Context.Response.Close()
}

try {
  while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    try {
      $rel = [System.Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath).TrimStart("/")
      if ([string]::IsNullOrWhiteSpace($rel)) { $rel = "index.html" }

      $full = [System.IO.Path]::GetFullPath((Join-Path $root $rel))
      if (-not $full.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase)) {
        Send-Text $ctx 403 "403 - Prohibido"
        continue
      }

      if (Test-Path -LiteralPath $full -PathType Container) {
        $full = Join-Path $full "index.html"
      }

      if (-not (Test-Path -LiteralPath $full -PathType Leaf)) {
        Send-Text $ctx 404 "404 - No encontrado: $rel"
        continue
      }

      $bytes = [System.IO.File]::ReadAllBytes($full)
      $ext = [System.IO.Path]::GetExtension($full).ToLowerInvariant()
      $type = if ($mime.ContainsKey($ext)) { $mime[$ext] } else { "application/octet-stream" }

      $ctx.Response.ContentType = $type
      $ctx.Response.Headers.Add("Cache-Control", "no-store")
      $ctx.Response.Headers.Add("Accept-Ranges", "bytes")

      $range = $ctx.Request.Headers["Range"]
      $start = 0
      $end = $bytes.Length - 1
      $partial = $false

      if ($range -match "^bytes=(\d*)-(\d*)$") {
        if ($Matches[1] -ne "") { $start = [long]$Matches[1] }
        if ($Matches[2] -ne "") { $end = [long]$Matches[2] }
        if ($start -lt 0) { $start = 0 }
        if ($end -ge $bytes.Length) { $end = $bytes.Length - 1 }
        if ($start -gt $end -or $start -ge $bytes.Length) {
          $ctx.Response.StatusCode = 416
          $ctx.Response.Headers.Add("Content-Range", "bytes */$($bytes.Length)")
          $ctx.Response.Close()
          continue
        }
        $partial = $true
      }

      $length = [int]($end - $start + 1)
      if ($partial) {
        $ctx.Response.StatusCode = 206
        $ctx.Response.Headers.Add("Content-Range", "bytes $start-$end/$($bytes.Length)")
      } else {
        $ctx.Response.StatusCode = 200
      }
      $ctx.Response.ContentLength64 = $length

      if ($ctx.Request.HttpMethod -ne "HEAD") {
        if ($partial) {
          $chunk = [byte[]]::new($length)
          [Array]::Copy($bytes, $start, $chunk, 0, $length)
          $ctx.Response.OutputStream.Write($chunk, 0, $chunk.Length)
        } else {
          $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
        }
      }
      $ctx.Response.Close()
    } catch {
      if ($ctx) { try { Send-Text $ctx 500 "500 - Error interno" } catch {} }
    }
  }
} finally {
  try { $listener.Stop() } catch {}
  try { $listener.Close() } catch {}
  Write-Host "Servidor detenido." -ForegroundColor Yellow
}
