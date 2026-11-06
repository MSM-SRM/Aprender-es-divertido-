$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$assetDir = Join-Path $root 'peques\imagenes\capibara-vocabulario'
$workDir = Join-Path $PSScriptRoot 'capi-gif-frames'
$chrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
$null = New-Item -ItemType Directory -Force -Path $assetDir, $workDir
$template = @'
<svg xmlns="http://www.w3.org/2000/svg" width="480" height="320" viewBox="0 0 480 320">
<defs>
  <linearGradient id="sky" x2="0" y2="1"><stop stop-color="#f8fcff"/><stop offset="1" stop-color="#e4f4e3"/></linearGradient>
  <linearGradient id="gi" x2="0" y2="1"><stop stop-color="#ffb6d2"/><stop offset="1" stop-color="#f27fab"/></linearGradient>
  <linearGradient id="bag" x2="1" y2="1"><stop stop-color="#80a765"/><stop offset="1" stop-color="#4f7048"/></linearGradient>
  <filter id="shadow" x="-.2" y="-.3" width="1.4" height="1.7"><feGaussianBlur stdDeviation="3"/></filter>
</defs>
<rect width="480" height="320" rx="22" fill="url(#sky)"/>
<circle cx="414" cy="58" r="25" fill="#ffd974"/><path d="M0 247 Q120 225 228 249 T480 240 V320 H0Z" fill="#b9dd9e"/>
<path d="M0 279 Q110 264 224 279 T480 270 V320 H0Z" fill="#8fbf72"/>
<ellipse cx="227" cy="276" rx="106" ry="12" fill="#476647" opacity=".19" filter="url(#shadow)"/>
<g fill="#f3a5bf" opacity=".7"><path d="M55 231q-14-12-10-28 15 3 19 18 2-17 17-22 4 17-8 29 16-8 27 3-14 12-32 7-6 15-15 17-5-15 2-24Z"/><path d="M431 237q-10-10-7-21 11 2 14 13 2-12 13-16 3 12-6 20 12-6 20 2-10 9-22 5-4 11-11 12-4-10-1-17Z"/></g>
<!-- Far legs alternate behind the gi. -->
<g transform="rotate(__FARH__,175,207)" fill="#b57954" stroke="#674630" stroke-width="4" stroke-linejoin="round"><path d="M160 198q19-7 32 4l-3 52-9 13-28-1 8-17Z"/><path d="M156 258q18-7 31 1l4 9q-3 8-38 7-9-2 3-17Z"/></g>
<g transform="rotate(__FARF__,251,207)" fill="#b57954" stroke="#674630" stroke-width="4" stroke-linejoin="round"><path d="M239 198q17-7 31 5l-4 49-10 14-27-1 8-17Z"/><path d="M232 257q19-7 34 2l4 9q-3 8-39 7-9-2 1-18Z"/></g>
<!-- A roomy hiking backpack with a flap, pocket, straps and water bottle. -->
<g stroke="#384c32" stroke-width="4" stroke-linejoin="round">
  <path d="M125 133q1-27 28-32 32-1 38 29l1 67q-20 15-62 0Z" fill="url(#bag)"/>
  <path d="M130 128q18-19 47-8l13 17q-28 9-62-2Z" fill="#a5bf78"/>
  <path d="M134 154q23-9 49 1v30q-26 8-51 0Z" fill="#739354"/>
  <path d="M147 158v17m-7-9h14" fill="none" stroke="#dbe7be" stroke-width="3"/>
  <path d="M186 134q15 24 4 52" fill="none" stroke="#d9b677" stroke-width="7"/>
  <path d="M119 157h11v35h-11q-5-19 0-35Z" fill="#87b6c1"/>
</g>
<!-- Near legs. -->
<g transform="rotate(__NEARH__,174,208)" fill="#8f583e" stroke="#563b2c" stroke-width="4" stroke-linejoin="round"><path d="M159 198q20-9 35 4l-4 54-11 15-29-2 9-18Z"/><path d="M150 260q21-8 39 1l4 9q-3 9-43 7-9-2 0-17Z"/><path d="M153 266q12 4 28 1" fill="none" stroke="#f08cb4" stroke-width="6"/></g>
<g transform="rotate(__NEARF__,252,208)" fill="#8f583e" stroke="#563b2c" stroke-width="4" stroke-linejoin="round"><path d="M238 198q19-8 34 5l-4 51-11 17-29-2 9-18Z"/><path d="M229 260q21-8 39 1l4 9q-3 9-43 7-9-2 0-17Z"/><path d="M232 266q12 4 27 1" fill="none" stroke="#f08cb4" stroke-width="6"/></g>
<!-- Capybara body and tail. -->
<path d="M296 183q-9 12-19 2" fill="none" stroke="#754a33" stroke-width="8" stroke-linecap="round"/>
<ellipse cx="222" cy="178" rx="87" ry="53" fill="#ae7350" stroke="#684630" stroke-width="4"/>
<!-- Pink Brazilian jiu-jitsu gi jacket. -->
<path d="M148 143q19-21 50-17l25 8 20-10q30 10 43 31l-11 45-30 11-39-8-27 9-38-16Z" fill="url(#gi)" stroke="#874562" stroke-width="4" stroke-linejoin="round"/>
<path d="M196 129l26 29 26-30 16 11-28 32 26 40-28 8-26-41-22 42-29-9 26-39-27-30Z" fill="#ffd6e5" stroke="#a95779" stroke-width="4" stroke-linejoin="round"/>
<path d="M190 193q35 13 74-1l7 16q-40 16-87 1Z" fill="#df5486" stroke="#874562" stroke-width="3"/>
<path d="M225 200l-5 25 14 4 8-27" fill="#f186ab" stroke="#874562" stroke-width="3"/>
<path d="M187 139q-15 14-9 39m84-35q12 14 10 32" fill="none" stroke="#ffe0eb" stroke-width="5"/>
<!-- Side-facing capybara head and square muzzle. -->
<path d="M271 148q3-43 39-48 38-2 48 30l-1 31q-9 27-43 28-35-3-43-23Z" fill="#bd805b" stroke="#684630" stroke-width="4"/>
<path d="M331 137q28-16 48-5 13 7 11 23-5 19-33 20l-29-8Z" fill="#d39a71" stroke="#684630" stroke-width="4"/>
<ellipse cx="383" cy="147" rx="5" ry="4" fill="#49352c"/>
<path d="M348 116q12-9 22 1" fill="none" stroke="#704832" stroke-width="5" stroke-linecap="round"/>
<path d="M287 106q-4-18 7-20 14 2 13 20" fill="#86573c" stroke="#684630" stroke-width="4"/>
<circle cx="318" cy="127" r="5" fill="#3c3028"/>
<path d="M310 132q-15 5-14 17" fill="none" stroke="#e9b995" stroke-width="3" stroke-linecap="round"/>
<path d="M295 166q14 10 27 3" fill="none" stroke="#684630" stroke-width="3" stroke-linecap="round"/>
<!-- The near arm reaches forward to hold the trail map. -->
<g transform="rotate(__ARM__,270,157)" stroke="#874562" stroke-width="4" stroke-linecap="round" stroke-linejoin="round">
  <path d="M268 151q22 0 38 18l27 10-5 12q-19 4-36-8l-29-8Z" fill="url(#gi)"/>
  <path d="M322 178q13-8 20 0l6 10-8 9q-11 3-18-7Z" fill="#bd805b"/>
</g>
<!-- Folded trail map, with a dashed route, hill, river and compass. -->
<g transform="rotate(__MAP__,363,171)" stroke="#536b47" stroke-width="3" stroke-linejoin="round">
  <path d="M337 147l23-8 22 9 23-7 2 43-25 8-21-9-22 8Z" fill="#fff3b7"/>
  <path d="M360 139v42m22-33v35" fill="none" stroke="#86a96b" stroke-width="2"/>
  <path d="M341 174l12-12 8 8 8-10 11 12" fill="none" stroke="#74a55d" stroke-width="4"/>
  <path d="M345 186q12-11 23-1t22-1" fill="none" stroke="#65a8cf" stroke-width="4"/>
  <path d="M348 154q8 6 13 3t9 4" fill="none" stroke="#d7786d" stroke-width="3" stroke-dasharray="3 4"/>
  <path d="M395 147l2 5 5 1-5 2-2 5-2-5-5-2 5-1Z" fill="#e99a46" stroke="none"/>
</g>
<circle cx="418" cy="93" r="4" fill="#80b06a"/><circle cx="82" cy="106" r="5" fill="#efb1c8"/>
</svg>
'@
$angles = @(-24,-12,0,12,24,12,0,-12)
$frameFiles = @()
for ($frame = 0; $frame -lt $angles.Count; $frame++) {
  $phase = $angles[$frame]
  $counter = -$phase
  $svg = $template.Replace('__FARH__', [string]$counter).Replace('__FARF__', [string]$phase).
    Replace('__NEARH__', [string]$phase).Replace('__NEARF__', [string]$counter).
    Replace('__ARM__', [string]($counter / 2)).Replace('__MAP__', [string]($phase / 3))
  $svgFile = Join-Path $workDir ('frame-{0:D2}.svg' -f $frame)
  $pngFile = Join-Path $workDir ('frame-{0:D2}.png' -f $frame)
  Set-Content -Path $svgFile -Value $svg -Encoding UTF8
  $uri = ([uri]$svgFile).AbsoluteUri
  $previousErrorPreference = $ErrorActionPreference
  $ErrorActionPreference = 'Continue'
  & $chrome --headless=new --disable-gpu --hide-scrollbars --no-first-run --no-default-browser-check "--user-data-dir=$(Join-Path $workDir 'chrome-profile')" "--window-size=480,320" "--screenshot=$pngFile" $uri 2>$null | Out-Null
  $chromeExitCode = $LASTEXITCODE
  $ErrorActionPreference = $previousErrorPreference
  if ($chromeExitCode -ne 0) { throw "Chrome could not render animation frame $frame (exit $chromeExitCode)" }
  if (-not (Test-Path $pngFile)) { throw "Chrome could not render animation frame $frame" }
  $frameFiles += $pngFile
}

$poster = Join-Path $assetDir 'capi-aventurera-poster.png'
Copy-Item $frameFiles[0] $poster -Force
Add-Type -AssemblyName System.Drawing
$images = @($frameFiles | ForEach-Object { [System.Drawing.Image]::FromFile($_) })
$gifPath = Join-Path $assetDir 'capi-aventurera.gif'
$codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object MimeType -eq 'image/gif'
$loopProperty = [Runtime.Serialization.FormatterServices]::GetUninitializedObject([System.Drawing.Imaging.PropertyItem])
$loopProperty.Id = 0x5101
$loopProperty.Type = 3
$loopProperty.Len = 2
$loopProperty.Value = [byte[]](0, 0)
$delayProperty = [Runtime.Serialization.FormatterServices]::GetUninitializedObject([System.Drawing.Imaging.PropertyItem])
$delayProperty.Id = 0x5100
$delayProperty.Type = 4
$delayProperty.Len = $images.Count * 4
$delayProperty.Value = New-Object byte[] ($images.Count * 4)
for ($i = 0; $i -lt $images.Count; $i++) {
  [Array]::Copy([BitConverter]::GetBytes([int]12), 0, $delayProperty.Value, $i * 4, 4)
}
$images[0].SetPropertyItem($loopProperty)
$images[0].SetPropertyItem($delayProperty)
$encoder = [System.Drawing.Imaging.Encoder]::SaveFlag
$parameters = New-Object System.Drawing.Imaging.EncoderParameters(1)
$parameters.Param[0] = [System.Drawing.Imaging.EncoderParameter]::new($encoder, [long][System.Drawing.Imaging.EncoderValue]::MultiFrame)
$images[0].Save($gifPath, $codec, $parameters)
for ($i = 1; $i -lt $images.Count; $i++) {
  $parameters.Param[0] = [System.Drawing.Imaging.EncoderParameter]::new($encoder, [long][System.Drawing.Imaging.EncoderValue]::FrameDimensionTime)
  $images[0].SaveAdd($images[$i], $parameters)
}
$parameters.Param[0] = [System.Drawing.Imaging.EncoderParameter]::new($encoder, [long][System.Drawing.Imaging.EncoderValue]::Flush)
$images[0].SaveAdd($parameters)
$images | ForEach-Object { $_.Dispose() }

$gifBytes = [IO.File]::ReadAllBytes($gifPath)
$frameCount = 0
for ($i = 0; $i -lt $gifBytes.Length - 2; $i++) {
  if ($gifBytes[$i] -eq 33 -and $gifBytes[$i + 1] -eq 249 -and $gifBytes[$i + 2] -eq 4) { $frameCount++ }
}
if ([Text.Encoding]::ASCII.GetString($gifBytes, 0, 6) -notmatch '^GIF8[79]a$' -or $frameCount -ne 8) { throw "Animated GIF verification failed; detected $frameCount frames" }
Write-Output "Created animated GIF ($frameCount frames) and reduced-motion poster: $gifPath"
Remove-Item $workDir -Recurse -Force
