# Comprobacion rapida de produccion en GitHub Pages.
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File tools\check-prod.ps1
param(
  [string]$BaseUrl = "https://msm-srm.github.io/Aprender-es-divertido-/peques"
)

$stamp = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()
$checks = @(
  @{ Name = "index.html";                 Url = "$BaseUrl/index.html?v=$stamp";                 Esperado = 200 },
  @{ Name = "mundo-mireia.html";          Url = "$BaseUrl/mundo-mireia.html?v=$stamp";          Esperado = 200 },
  @{ Name = "evento-especial.html";       Url = "$BaseUrl/evento-especial.html?v=$stamp";       Esperado = 200 },
  @{ Name = "areas-test.html";            Url = "$BaseUrl/areas-test.html?v=$stamp";            Esperado = 200 },
  @{ Name = "abecedario-capibara.html";   Url = "$BaseUrl/abecedario-capibara.html?v=$stamp";   Esperado = 200 },
  @{ Name = "capibara-se-va-de-aventura.html"; Url = "$BaseUrl/capibara-se-va-de-aventura.html?v=$stamp"; Esperado = 200 },
  @{ Name = "capibara-vocabulario.json";  Url = "$BaseUrl/capibara-vocabulario.json?v=$stamp";  Esperado = 200 },
  @{ Name = "imagenes/fpbg.mp4";          Url = "$BaseUrl/imagenes/fpbg.mp4?v=$stamp";          Esperado = 200; Bytes = 3469917 },
  @{ Name = "imagenes/fpbg.png";          Url = "$BaseUrl/imagenes/fpbg.png?v=$stamp";          Esperado = 200 },
  @{ Name = "audio abecedario EN (A)";    Url = "$BaseUrl/audios/abecedario/en/A.mp3?v=$stamp"; Esperado = 200; Tipo = "audio/mp3" },
  @{ Name = "audio abecedario ES (Ñ)";    Url = "$BaseUrl/audios/abecedario/es/N-tilde.mp3?v=$stamp"; Esperado = 200; Tipo = "audio/mp3" },
  @{ Name = "audio vocabulario EN";       Url = "$BaseUrl/audios/capibara-vocabulario/en/supermercado-01.mp3?v=$stamp"; Esperado = 200; Tipo = "audio/mp3" },
  @{ Name = "audio vocabulario ES";       Url = "$BaseUrl/audios/capibara-vocabulario/es/supermercado-01.mp3?v=$stamp"; Esperado = 200; Tipo = "audio/mp3" }
)

$rows = foreach ($c in $checks) {
  try {
    $r = Invoke-WebRequest -UseBasicParsing -Method Head -Uri $c.Url -TimeoutSec 25
    $ok = ($r.StatusCode -eq $c.Esperado)
    if ($c.ContainsKey("Bytes") -and $r.Headers["Content-Length"]) {
      $ok = $ok -and ([long]$r.Headers["Content-Length"] -eq [long]$c.Bytes)
    }
    if ($c.ContainsKey("Tipo") -and $r.Headers["Content-Type"]) {
      $ok = $ok -and ($r.Headers["Content-Type"] -like "$($c.Tipo)*")
    }
    [pscustomobject]@{
      Recurso  = $c.Name
      Estado   = $r.StatusCode
      Tipo     = $r.Headers["Content-Type"]
      Bytes    = $r.Headers["Content-Length"]
      Correcto = $ok
    }
  } catch {
    [pscustomobject]@{
      Recurso  = $c.Name
      Estado   = "ERROR"
      Tipo     = ""
      Bytes    = ""
      Correcto = $false
    }
  }
}

$rows | Format-Table -AutoSize | Out-String -Width 160

if ($rows.Where({ -not $_.Correcto }).Count -gt 0) {
  Write-Host "Hay comprobaciones fallidas. GitHub Pages puede tardar 40-60 s en publicar." -ForegroundColor Yellow
  exit 1
} else {
  Write-Host "Produccion correcta." -ForegroundColor Green
  exit 0
}
