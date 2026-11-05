# Copia archivos o carpetas a la carpeta de backups y genera SHA256.txt.
# Uso:
#   powershell -NoProfile -ExecutionPolicy Bypass -File tools\backup-files.ps1 -Motivo limpieza -Paths "peques/LEEME.txt","mi_mundo_aprendizaje.zip"
param(
  [Parameter(Mandatory = $true)]
  [string[]]$Paths,
  [string]$Motivo = "copia"
)

$ErrorActionPreference = "Stop"

# Permite pasar las rutas como array o como una lista separada por comas.
$Paths = $Paths |
  ForEach-Object { $_ -split "," } |
  ForEach-Object { $_.Trim() } |
  Where-Object { $_ -ne "" }

$repo = Split-Path -Parent $PSScriptRoot
$fecha = Get-Date -Format "yyyy-MM-dd"
$backupRoot = Join-Path "C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups" "MiMundo_backup_${fecha}_$Motivo"

if (Test-Path -LiteralPath $backupRoot) {
  $backupRoot = "${backupRoot}_$(Get-Date -Format 'HHmmss')"
}
New-Item -ItemType Directory -Force -Path $backupRoot | Out-Null

$rows = @()
foreach ($p in $Paths) {
  $source = if ([System.IO.Path]::IsPathRooted($p)) { $p } else { Join-Path $repo $p }
  if (-not (Test-Path -LiteralPath $source)) {
    Write-Host "AVISO: no existe $p" -ForegroundColor Yellow
    continue
  }
  $source = (Resolve-Path -LiteralPath $source).Path
  $rel = $source.Substring($repo.Length).TrimStart("\")
  $dest = Join-Path $backupRoot $rel
  $destDir = Split-Path -Parent $dest
  New-Item -ItemType Directory -Force -Path $destDir | Out-Null

  if (Test-Path -LiteralPath $source -PathType Container) {
    Copy-Item -LiteralPath $source -Destination $dest -Recurse -Force
    $files = Get-ChildItem -LiteralPath $dest -File -Recurse
    foreach ($f in $files) {
      $relFile = $f.FullName.Substring($backupRoot.Length).TrimStart("\")
      $srcFile = Join-Path $repo $relFile
      $h1 = (Get-FileHash -LiteralPath $srcFile -Algorithm SHA256).Hash
      $h2 = (Get-FileHash -LiteralPath $f.FullName -Algorithm SHA256).Hash
      $rows += [pscustomobject]@{ Archivo = $relFile.Replace("\", "/"); Bytes = $f.Length; SHA256 = $h1; Correcto = ($h1 -eq $h2) }
    }
  } else {
    Copy-Item -LiteralPath $source -Destination $dest -Force
    $h1 = (Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash
    $h2 = (Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash
    $rows += [pscustomobject]@{ Archivo = $rel.Replace("\", "/"); Bytes = (Get-Item -LiteralPath $dest).Length; SHA256 = $h1; Correcto = ($h1 -eq $h2) }
  }
}

$hashFile = Join-Path $backupRoot "SHA256.txt"
$rows | ForEach-Object { "$($_.SHA256)  $($_.Archivo)" } | Set-Content -LiteralPath $hashFile -Encoding UTF8

$rows | Format-Table -AutoSize | Out-String -Width 220
Write-Host ""
Write-Host "Backup: $backupRoot" -ForegroundColor Green
Write-Host "Hashes: $hashFile"

if (@($rows).Count -eq 0) {
  Write-Host "ERROR: no se copio ningun archivo." -ForegroundColor Red
  exit 1
}

if ($rows.Where({ -not $_.Correcto }).Count -gt 0) {
  Write-Host "ERROR: algun hash no coincide." -ForegroundColor Red
  exit 1
} else {
  Write-Host "Todos los hashes coinciden." -ForegroundColor Green
}
