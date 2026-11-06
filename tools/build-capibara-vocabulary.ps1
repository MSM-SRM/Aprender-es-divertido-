$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$assetDir = Join-Path $root 'peques\imagenes\capibara-vocabulario'
$dataFile = Join-Path $root 'peques\capibara-vocabulario.json'
$null = New-Item -ItemType Directory -Force -Path $assetDir
$headers = @{ 'User-Agent' = 'MiMundoAprendizaje/1.0 (https://github.com/MSM-SRM/Aprender-es-divertido-; educational vocabulary game)' }
$packs = @(
  @{ id='supermercado'; es='Supermercado'; en='Supermarket'; emoji='🛒'; terms=@(
    'manzana|apple','leche|milk','pan|bread','huevos|eggs','queso|cheese','arroz|rice','pasta|pasta','tomate|tomato','plátano|banana','naranja|orange','yogur|yogurt','cereales|cereal','carrito|shopping cart','cesta|shopping basket','caja|checkout counter','cajera o cajero|cashier','precio|price tag','monedas|coins','bolsa|shopping bag','estantería|shelf') },
  @{ id='camping'; es='Camping'; en='Camping'; emoji='⛺'; terms=@(
    'tienda de campaña|tent','saco de dormir|sleeping bag','linterna|flashlight','brújula|compass','mochila|backpack','mapa|map','fogata|campfire','nubes de azúcar|marshmallows','prismáticos|binoculars','botella de agua|water bottle','botas|hiking boots','chubasquero|rain jacket','pino|pine tree','río|river','campamento|campsite','farol|lantern','cuerda|rope','silbato|whistle','repelente de insectos|insect repellent','botiquín|first aid kit') },
  @{ id='aeropuerto'; es='Aeropuerto'; en='Airport'; emoji='✈️'; terms=@(
    'avión|airplane','aeropuerto|airport','pasaporte|passport','tarjeta de embarque|boarding pass','maleta|suitcase','mochila|backpack','puerta de embarque|boarding gate','pista|runway','piloto|pilot','auxiliar de vuelo|flight attendant','carrito de equipaje|luggage cart','control de seguridad|security checkpoint','panel de salidas|departure board','billete|plane ticket','cinturón de seguridad|seat belt','ventanilla|airplane window','terminal|airport terminal','recogida de equipaje|baggage claim','etiqueta de equipaje|luggage tag','aduana|customs') },
  @{ id='medico-hospital'; es='Médico y hospital'; en='Doctor and hospital'; emoji='🩺'; terms=@(
    'médica o médico|doctor','enfermera o enfermero|nurse','hospital|hospital','estetoscopio|stethoscope','tirita|bandage','termómetro|thermometer','sala de espera|waiting room','consulta|examination room','medicina|medicine','farmacia|pharmacy','silla de ruedas|wheelchair','muletas|crutches','mascarilla|face mask','gel desinfectante|hand sanitizer','cita médica|appointment','cartel de letras|eye chart','radiografía|X-ray','escayola|cast','tensiómetro|blood pressure monitor','ambulancia|ambulance') },
  @{ id='escuela'; es='Escuela'; en='School'; emoji='🎒'; terms=@(
    'lápiz|pencil','goma de borrar|eraser','cuaderno|notebook','pupitre|school desk','silla|chair','mochila|backpack','libro|book','tijeras|scissors','pegamento|glue','regla|ruler','ceras de colores|crayons','pincel|paintbrush','aula|classroom','maestra o maestro|teacher','pizarra|blackboard','globo terráqueo|globe','fiambrera|lunchbox','biblioteca|library','reloj|clock','ordenador|computer') },
  @{ id='taller-coche'; es='Taller de coche'; en='Car repair shop'; emoji='🔧'; terms=@(
    'mecánica o mecánico|mechanic','coche|car','rueda|wheel','neumático|tire','volante|steering wheel','caja de herramientas|toolbox','llave inglesa|wrench','destornillador|screwdriver','martillo|hammer','gato hidráulico|car jack','motor|engine','batería|car battery','aceite de motor|motor oil','faro|headlight','freno|brake','cinturón de seguridad|seat belt','taller|repair shop','cono de tráfico|traffic cone','chaleco reflectante|high-visibility vest','elevador de coche|car lift') },
  @{ id='centro-comercial'; es='Centro comercial'; en='Shopping mall'; emoji='🏬'; terms=@(
    'centro comercial|shopping mall','tienda|shop','escalera mecánica|escalator','ascensor|elevator','zona de restaurantes|food court','fuente|fountain','escaparate|shop window','ropa|clothes','zapatos|shoes','juguetería|toy shop','librería|bookstore','cine|cinema','aparcamiento|parking lot','entrada|entrance','salida|exit','mapa del centro|mall map','bolsa de compras|shopping bag','recibo|receipt','probador|fitting room','vigilante de seguridad|security guard') },
  @{ id='bernabeu'; es='Estadio Santiago Bernabéu'; en='Santiago Bernabéu Stadium'; emoji='⚽'; terms=@(
    'estadio|stadium','campo de fútbol|football pitch','portería|goal','poste de portería del Bernabéu|goalpost at the Bernabéu','red|goal net','balón|football','camiseta|football jersey','bufanda|scarf','afición|football fans','jugadora o jugador|football player','portera o portero|goalkeeper','árbitra o árbitro|referee','silbato|whistle','marcador|scoreboard','entrada|ticket','torniquete|turnstile','grada|grandstand','focos|stadium floodlights','trofeo|trophy','banderín de córner|corner flag') },
  @{ id='parque-atracciones'; es='Parque de atracciones'; en='Amusement park'; emoji='🎡'; terms=@(
    'montaña rusa|roller coaster','noria|Ferris wheel','carrusel|carousel','coches de choque|bumper cars','atracción de agua|water ride','taquilla|ticket booth','cola|queue','operadora u operador|ride operator','palomitas|popcorn','algodón de azúcar|cotton candy','helado|ice cream','cartel de altura mínima|height requirement sign','mapa del parque|park map','fuente|fountain','desfile|parade','mascota|mascot','recuerdo|souvenir','parque infantil|playground','salida|exit sign','barra de seguridad|safety bar') },
  @{ id='playa'; es='Playa'; en='Beach'; emoji='🏖️'; terms=@(
    'arena|sand','mar|sea','ola|wave','concha|shell','cubo|bucket','pala|spade','toalla de playa|beach towel','sombrilla|beach umbrella','bañador|swimsuit','gafas de sol|sunglasses','gorra|sun hat','protector solar|sunscreen','socorrista|lifeguard','torre de socorrismo|lifeguard tower','gaviota|seagull','cangrejo|crab','castillo de arena|sandcastle','pelota de playa|beach ball','chanclas|flip-flops','orilla|shoreline') },
  @{ id='montana'; es='Montaña'; en='Mountain'; emoji='⛰️'; terms=@(
    'montaña|mountain','colina|hill','cima|summit','sendero|hiking trail','botas de montaña|hiking boots','bastón de senderismo|walking stick','mochila|backpack','brújula|compass','mapa|map','arroyo|stream','cascada|waterfall','pino|pine tree','águila|eagle','cabra montés|mountain goat','marmota|marmot','nieve|snow','glaciar|glacier','refugio|mountain hut','señal de sendero|trail sign','prismáticos|binoculars') }
)

$usedPages = @{}
$completed = 0
$searchNumber = 0
foreach ($pack in $packs) {
  $candidates = @()
  for ($offset = 0; $offset -lt $pack.terms.Count; $offset += 10) {
    $group = @($pack.terms | Select-Object -Skip $offset -First 10)
    $clauses = @($group | ForEach-Object { '"' + $_.Split('|', 2)[1] + '"' })
    $query = 'filetype:bitmap ' + ($clauses -join ' OR ')
    $encoded = [uri]::EscapeDataString($query)
    $api = "https://commons.wikimedia.org/w/api.php?action=query&generator=search&gsrsearch=$encoded&gsrnamespace=6&gsrlimit=50&prop=imageinfo&iiprop=url%7Cextmetadata&iiurlwidth=360&format=json"
    $attempt = 0
    do {
      $attempt++
      try {
        $response = Invoke-RestMethod -Uri $api -Headers $headers
        $requestFailed = $false
      } catch {
        $requestFailed = $true
        if ($attempt -ge 4) { throw }
        Start-Sleep -Seconds ($attempt * 20)
      }
    } while ($requestFailed)
    $searchNumber++
    Start-Sleep -Seconds 6
    if ($response.query.pages) {
      $candidates += @($response.query.pages.PSObject.Properties | ForEach-Object { $_.Value } | Sort-Object index)
    }
    Write-Progress -Activity 'Searching Wikimedia Commons' -Status "$searchNumber / 22 search groups · $($pack.en)" -PercentComplete ($searchNumber / 22 * 100)
  }

  $items = @()
  $ordinal = 0
  foreach ($pair in $pack.terms) {
    $ordinal++
    $parts = $pair.Split('|', 2)
    $es = $parts[0]
    $en = $parts[1]
    $normalizedTerm = [regex]::Replace($en.ToLowerInvariant(), '[^a-z0-9]+', ' ').Trim()
    $lastWord = ($normalizedTerm -split '\s+')[-1]
    $best = $null
    $bestScore = -1
    for ($pass = 0; $pass -lt 2 -and -not $best; $pass++) {
      foreach ($candidate in $candidates) {
        if ($usedPages.ContainsKey([string]$candidate.pageid)) { continue }
        if ($candidate.title -notmatch '(?i)\.(jpg|jpeg|png)$') { continue }
        if ($candidate.title -match '(?i)\b(icon|logo|clipart|pictogram|diagram|vector|illustration|cartoon|drawing|painting|sketch|poster|screenshot|flag)\b') { continue }
        $info = $candidate.imageinfo[0]
        $metadata = $info.extmetadata
        $license = [string]$metadata.LicenseShortName.value
        if ($license -notmatch '^(CC0|CC BY(?:-SA)?(?:\s|$)|Public domain|PD(?:\s|$))' -or $license -match 'NC|Non.?commercial') { continue }
        $title = [System.Net.WebUtility]::HtmlDecode(($candidate.title -replace '^File:', '')).ToLowerInvariant()
        $title = [regex]::Replace($title, '[^a-z0-9]+', ' ').Trim()
        $description = [string]$metadata.ImageDescription.value
        $description = [System.Net.WebUtility]::HtmlDecode(($description -replace '<[^>]+>', ' ')).ToLowerInvariant()
        $description = [regex]::Replace($description, '[^a-z0-9]+', ' ').Trim()
        $score = 0
        if ($title.Contains($normalizedTerm)) { $score = 100 + $normalizedTerm.Length }
        elseif ($lastWord.Length -gt 2 -and $title -match "(^| )$([regex]::Escape($lastWord))($| )") { $score = 70 + $lastWord.Length }
        elseif ($lastWord.Length -gt 2 -and $description -match "(^| )$([regex]::Escape($lastWord))($| )") { $score = 35 + $lastWord.Length }
        if ($score -gt $bestScore -and $score -gt 0) { $best = $candidate; $bestScore = $score }
      }
      if (-not $best -and $pass -eq 0) {
        $targetedQuery = [uri]::EscapeDataString("filetype:bitmap intitle:`"$en`"")
        $targetedApi = "https://commons.wikimedia.org/w/api.php?action=query&generator=search&gsrsearch=$targetedQuery&gsrnamespace=6&gsrlimit=12&prop=imageinfo&iiprop=url%7Cextmetadata&iiurlwidth=360&format=json"
        $targeted = Invoke-RestMethod -Uri $targetedApi -Headers $headers
        Start-Sleep -Seconds 6
        if ($targeted.query.pages) {
          $candidates += @($targeted.query.pages.PSObject.Properties | ForEach-Object { $_.Value } | Sort-Object index)
        }
      }
    }
    if (-not $best) { throw "No distinct, openly licensed real photo found for $($pack.id): $en" }

    $info = $best.imageinfo[0]
    $metadata = $info.extmetadata
    $license = [string]$metadata.LicenseShortName.value
    $filename = '{0}-{1:D2}.jpg' -f $pack.id, $ordinal
    $dest = Join-Path $assetDir $filename
    $downloadAttempt = 0
    do {
      $downloadAttempt++
      try {
        $downloadHeaders = $headers.Clone()
        $downloadHeaders['Accept'] = 'image/jpeg'
        Invoke-WebRequest -Uri $info.thumburl -Headers $downloadHeaders -UseBasicParsing -OutFile $dest
        $downloadFailed = $false
      } catch {
        $downloadFailed = $true
        if ($downloadAttempt -ge 5) { throw }
        $retryAfter = 0
        try { $retryAfter = [int]$_.Exception.Response.Headers['Retry-After'] } catch {}
        if ($retryAfter -lt 6) { $retryAfter = 60 }
        Start-Sleep -Seconds ([Math]::Min(300, $retryAfter))
      }
    } while ($downloadFailed)
    Start-Sleep -Seconds 1
    if ((Get-Item $dest).Length -lt 1200) { throw "Image download is unexpectedly small: $dest" }
    $content = [IO.File]::ReadAllBytes($dest)
    if ($content.Length -ge 8 -and $content[0] -eq 137 -and $content[1] -eq 80 -and $content[2] -eq 78 -and $content[3] -eq 71) {
      Add-Type -AssemblyName System.Drawing
      $bitmap = [System.Drawing.Image]::FromFile($dest)
      $jpegTemp = "$dest.convert.jpg"
      $bitmap.Save($jpegTemp, [System.Drawing.Imaging.ImageFormat]::Jpeg)
      $bitmap.Dispose()
      Copy-Item $jpegTemp $dest -Force
      Remove-Item $jpegTemp
      $content = [IO.File]::ReadAllBytes($dest)
    }
    if ($content.Length -lt 3 -or $content[0] -ne 255 -or $content[1] -ne 216) { throw "Commons thumbnail could not be normalized to a JPEG: $dest" }
    $artist = [string]$metadata.Artist.value
    $artist = [System.Net.WebUtility]::HtmlDecode(($artist -replace '<[^>]+>', ' ' -replace '\s+', ' ')).Trim()
    if (-not $artist) { $artist = 'Artist not credited on Commons' }
    $items += [ordered]@{
      es = $es
      en = $en
      image = "imagenes/capibara-vocabulario/$filename"
      author = $artist
      license = $license
      licenseUrl = [string]$metadata.LicenseUrl.value
      source = [string]$info.descriptionurl
      file = [string]$best.title
    }
    $usedPages[[string]$best.pageid] = $true
    $completed++
    Write-Progress -Activity 'Downloading attributed Commons photographs' -Status "$completed / 220 · $($pack.en): $en" -PercentComplete ($completed / 220 * 100)
  }
  $pack.Remove('terms')
  $pack['items'] = $items
}

$packs | ConvertTo-Json -Depth 8 | Set-Content -Path $dataFile -Encoding UTF8
Write-Progress -Activity 'Downloading attributed Commons photographs' -Completed
Write-Output "Saved $completed photographs and their attribution to $dataFile"
