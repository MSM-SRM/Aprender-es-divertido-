# Referencias a archivos JavaScript desde el codigo del sitio.
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File tools\audit-js.ps1
$peques = Join-Path (Split-Path -Parent $PSScriptRoot) "peques"
$siteSources = Get-ChildItem $peques -Recurse -File | Where-Object { $_.Extension -in ".html", ".js", ".json" }
$jsFiles = Get-ChildItem $peques -File -Filter "*.js"

$rows = foreach ($j in $jsFiles) {
  $refs = @()
  foreach ($s in $siteSources) {
    if ($s.FullName -eq $j.FullName) { continue }
    if (Select-String -Path $s.FullName -SimpleMatch $j.Name -Quiet -ErrorAction SilentlyContinue) {
      $refs += $s.Name
    }
  }
  [pscustomobject]@{
    JS    = $j.Name
    KB    = [math]::Round($j.Length / 1KB, 1)
    Refs  = $refs.Count
    Desde = ($refs -join "; ")
  }
}

$rows | Sort-Object Refs, JS | Format-Table -AutoSize | Out-String -Width 200
