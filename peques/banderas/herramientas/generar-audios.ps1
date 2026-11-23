<#
.SYNOPSIS
  Genera los MP3 con el nombre de cada país del juego «Banderas del mundo».

.DESCRIPTION
  Lee `peques/banderas/datos.js` y crea un MP3 por país en `peques/banderas/audios/<código>.mp3`
  con la voz española **Microsoft Helena (es-ES)** de Windows, usando la misma técnica WinRT
  que `qa/generate-audio.ps1` (SpeechSynthesizer → WAV → MediaTranscoder → MP3).

  Por defecto no vuelve a generar los archivos que ya existen; usa -Force para rehacerlos.

.EJEMPLOS
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1 -Force
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1 -Test
#>
param(
  [switch]$Force,
  [switch]$Test
)

$ErrorActionPreference = 'Stop'
$utf8 = [System.Text.Encoding]::UTF8
$raiz = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSScriptRoot))
$datosJs = Join-Path $raiz 'peques\banderas\datos.js'
$audiosDir = Join-Path $raiz 'peques\banderas\audios'

Add-Type -AssemblyName System.Runtime.WindowsRuntime
[Windows.Media.SpeechSynthesis.SpeechSynthesizer,Windows.Media.SpeechSynthesis,ContentType=WindowsRuntime] | Out-Null
[Windows.Media.SpeechSynthesis.SpeechSynthesisStream,Windows.Media.SpeechSynthesis,ContentType=WindowsRuntime] | Out-Null
[Windows.Media.Transcoding.MediaTranscoder,Windows.Media.Transcoding,ContentType=WindowsRuntime] | Out-Null
[Windows.Media.MediaProperties.MediaEncodingProfile,Windows.Media.MediaProperties,ContentType=WindowsRuntime] | Out-Null
[Windows.Storage.StorageFile,Windows.Storage,ContentType=WindowsRuntime] | Out-Null
[Windows.Storage.StorageFolder,Windows.Storage,ContentType=WindowsRuntime] | Out-Null

$asTaskGeneric = ([System.WindowsRuntimeSystemExtensions].GetMethods() | Where-Object {
  $_.Name -eq 'AsTask' -and $_.GetParameters().Count -eq 1 -and $_.GetParameters()[0].ParameterType.Name -eq 'IAsyncOperation`1'
})[0]

function Await-Op($op, [Type]$type) {
  $task = $asTaskGeneric.MakeGenericMethod($type).Invoke($null, @($op))
  if (-not $task.Wait(60000)) { throw 'Timeout esperando la operación WinRT' }
  return $task.Result
}

$voces = [Windows.Media.SpeechSynthesis.SpeechSynthesizer]::AllVoices
$vozEs = $voces | Where-Object { $_.Language -eq 'es-ES' -and $_.DisplayName -like '*Helena*' } | Select-Object -First 1
if (-not $vozEs) {
  $vozEs = $voces | Where-Object { $_.Language -eq 'es-ES' } | Select-Object -First 1
  if (-not $vozEs) { throw 'No hay ninguna voz es-ES instalada en Windows.' }
  Write-Host "Aviso: no se encontró Microsoft Helena; se usa $($vozEs.DisplayName)."
}
Write-Host "Voz: $($vozEs.DisplayName) ($($vozEs.Language))"

$synth = New-Object Windows.Media.SpeechSynthesis.SpeechSynthesizer
$synth.Voice = $vozEs
$perfilMp3 = [Windows.Media.MediaProperties.MediaEncodingProfile]::CreateMp3([Windows.Media.MediaProperties.AudioEncodingQuality]::Auto)
$transcoder = New-Object Windows.Media.Transcoding.MediaTranscoder
$tempDir = Join-Path $env:TEMP ('banderas-audio-' + [DateTimeOffset]::UtcNow.ToUnixTimeSeconds())
New-Item -ItemType Directory -Force -Path $tempDir | Out-Null

function Convert-WavToMp3([string]$wav, [string]$mp3) {
  $input = Await-Op ([Windows.Storage.StorageFile]::GetFileFromPathAsync($wav)) ([Windows.Storage.StorageFile])
  $folderPath = [System.IO.Path]::GetDirectoryName($mp3)
  $fileName = [System.IO.Path]::GetFileName($mp3)
  $folder = Await-Op ([Windows.Storage.StorageFolder]::GetFolderFromPathAsync($folderPath)) ([Windows.Storage.StorageFolder])
  if (Test-Path $mp3) { Remove-Item $mp3 -Force }
  $output = Await-Op ($folder.CreateFileAsync($fileName, [Windows.Storage.CreationCollisionOption]::ReplaceExisting)) ([Windows.Storage.StorageFile])
  $prep = Await-Op ($transcoder.PrepareFileTranscodeAsync($input, $output, $perfilMp3)) ([Windows.Media.Transcoding.PrepareTranscodeResult])
  if (-not $prep.CanTranscode) { throw "No se puede transcodificar: $($prep.FailureReason)" }
  $null = $prep.TranscodeAsync()
  $last = -1
  $stable = 0
  for ($i = 0; $i -lt 250; $i++) {
    Start-Sleep -Milliseconds 40
    if (Test-Path $mp3) {
      $len = (Get-Item $mp3).Length
      if ($len -gt 0 -and $len -eq $last) {
        $stable++
        if ($stable -ge 2) { break }
      } else {
        $stable = 0
      }
      $last = $len
    }
  }
  if (-not (Test-Path $mp3) -or (Get-Item $mp3).Length -le 0) { throw 'El MP3 no se generó' }
}

# Países: [código, nombre, dificultad] de datos.js, sin repetir códigos.
$texto = [IO.File]::ReadAllText($datosJs, $utf8)
$paises = @{}
foreach ($m in [regex]::Matches($texto, "\['([a-z]{2})',\s*'([^']+)',\s*\d\]")) {
  $paises[$m.Groups[1].Value] = $m.Groups[2].Value
}
if ($paises.Count -lt 184) { Write-Host "Aviso: solo se han leído $($paises.Count) países de datos.js" }
Write-Host "Países en datos.js: $($paises.Count)"

if (-not (Test-Path $audiosDir)) { New-Item -ItemType Directory -Force -Path $audiosDir | Out-Null }

$lista = $paises.Keys | Sort-Object
if ($Test) { $lista = @('it', 'de', 'pt') }
$done = 0; $skipped = 0; $errors = @()
$inicio = Get-Date
foreach ($code in $lista) {
  $salida = Join-Path $audiosDir ($code + '.mp3')
  if (-not $Force -and (Test-Path $salida) -and (Get-Item $salida).Length -gt 2048) { $skipped++; continue }
  $nombre = $paises[$code]
  try {
    $wav = Join-Path $tempDir ($code + '.wav')
    $op = $synth.SynthesizeTextToStreamAsync($nombre)
    $stream = Await-Op $op ([Windows.Media.SpeechSynthesis.SpeechSynthesisStream])
    $net = [System.IO.WindowsRuntimeStreamExtensions]::AsStreamForRead($stream)
    $file = [System.IO.File]::Create($wav)
    $net.CopyTo($file)
    $file.Close(); $net.Close(); $stream.Dispose()
    Convert-WavToMp3 $wav $salida
    Remove-Item $wav -Force -ErrorAction SilentlyContinue
    $done++
    if ($done % 20 -eq 0) { Write-Host "Generados $done ..." }
  } catch {
    $msg = "ERROR $code ($nombre): $($_.Exception.Message)"
    $errors += $msg
    Write-Host $msg
  }
}
$transcurrido = (Get-Date) - $inicio
$total = (Get-ChildItem $audiosDir -Filter *.mp3 | Measure-Object -Property Length -Sum)
Write-Host ("Fin: {0} generados, {1} omitidos, {2} errores en {3:N1} s" -f $done, $skipped, $errors.Count, $transcurrido.TotalSeconds)
Write-Host ("Audios en {0}: {1} archivos, {2:N0} B ({3:N2} MB)" -f $audiosDir, $total.Count, $total.Sum, ($total.Sum / 1MB))
if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Host $_ }; exit 1 }

$synth.Dispose()
Remove-Item $tempDir -Recurse -Force -ErrorAction SilentlyContinue
