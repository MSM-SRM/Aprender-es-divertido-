# Referencias a imagenes, audios, videos y fuentes desde el codigo del sitio.
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File tools\audit-assets.ps1
$peques = Join-Path (Split-Path -Parent $PSScriptRoot) "peques"
$siteSources = Get-ChildItem $peques -Recurse -File | Where-Object { $_.Extension -in ".html", ".js", ".json" }
$assetExtensions = @(".png", ".jpg", ".jpeg", ".webp", ".avif", ".gif", ".svg", ".mp4", ".webm", ".mp3", ".wav", ".ogg", ".ttf", ".woff", ".woff2")
$assets = Get-ChildItem $peques -Recurse -File | Where-Object { $_.Extension -in $assetExtensions }

$rows = foreach ($a in $assets) {
  $rel = $a.FullName.Substring($peques.Length + 1).Replace("\", "/")
  $refs = @()
  foreach ($s in $siteSources) {
    if (Select-String -Path $s.FullName -SimpleMatch $rel -Quiet -ErrorAction SilentlyContinue) {
      $refs += $s.Name
    }
  }

  # Las imagenes de Addams se cargan dinamicamente con imagenes/addams/${c.src}.
  $nota = ""
  if ($rel -like "imagenes/addams/*") { $nota = "dinamico (memoria Addams)" }
  if ($rel -like "audios/abecedario/*") { $nota = "dinamico (letra + idioma)" }
  if ($rel -like "audios/capibara-vocabulario/*") { $nota = "dinamico (JSON de vocabulario)" }

  [pscustomobject]@{
    Asset  = $rel
    KB     = [math]::Round($a.Length / 1KB, 1)
    Refs   = $refs.Count
    Desde  = ($refs -join "; ")
    Nota   = $nota
  }
}

$rows | Sort-Object Refs, @{ Expression = "KB"; Descending = $true } | Format-Table -AutoSize | Out-String -Width 280
