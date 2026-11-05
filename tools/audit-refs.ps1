# Referencias reales entre paginas del sitio.
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File tools\audit-refs.ps1
$root = Join-Path (Split-Path -Parent $PSScriptRoot) "peques"

$pages = Get-ChildItem $root -Filter "*.html" -File
$siteSources = Get-ChildItem $root -Recurse -File | Where-Object { $_.Extension -in ".html", ".js", ".json" }
$docSources = Get-ChildItem $root -Recurse -File | Where-Object { $_.Extension -in ".md", ".txt" }

$rows = foreach ($p in $pages) {
  $siteRefs = @()
  foreach ($s in $siteSources) {
    if ($s.FullName -eq $p.FullName) { continue }
    if (Select-String -Path $s.FullName -SimpleMatch $p.Name -Quiet -ErrorAction SilentlyContinue) {
      $siteRefs += $s.Name
    }
  }
  $docRefs = @()
  foreach ($s in $docSources) {
    if (Select-String -Path $s.FullName -SimpleMatch $p.Name -Quiet -ErrorAction SilentlyContinue) {
      $docRefs += $s.Name
    }
  }
  [pscustomobject]@{
    Pagina     = $p.Name
    KB         = [math]::Round($p.Length / 1KB, 1)
    RefsSitio  = $siteRefs.Count
    DesdeSitio = ($siteRefs -join "; ")
    RefsDocs   = $docRefs.Count
  }
}

$rows | Sort-Object RefsSitio, Pagina | Format-Table -AutoSize | Out-String -Width 260
