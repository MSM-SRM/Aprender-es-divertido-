<#
.SYNOPSIS
  Genera los seis mapas SVG por continente del juego «Banderas del mundo».

.DESCRIPTION
  Toma la geometría del mapamundi de `@svg-maps/world` (256 países, viewBox 0 0 1010 666),
  calcula los bboxes reales de cada `path` con Chrome headless (CDP) y escribe un SVG por
  continente en `peques/banderas/mapas/`. Cada país del juego es un `<g class="pais">`
  relleno con un `<pattern>` que estira su bandera local al bbox de su territorio; los
  países vecinos que caen dentro del encuadre se añaden como contexto gris no interactivo.

  Fuente: https://cdn.jsdelivr.net/npm/@svg-maps/world@1.0.1/world.svg
  Licencia: CC BY 4.0 — basada en MapSVG (https://mapsvg.com/maps/world).

.EJEMPLOS
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1 -Continente europa -RecalcularBbox
  powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1 -Fuente "C:\ruta\world.svg" -Force
#>
param(
  [string]$Fuente = '',
  [string]$BboxCache = '',
  [ValidateSet('todos', 'europa', 'norteamerica', 'sudamerica', 'asia', 'africa', 'oceania')]
  [string]$Continente = 'todos',
  [switch]$RecalcularBbox,
  [switch]$Force
)

$ErrorActionPreference = 'Stop'
$inv = [System.Globalization.CultureInfo]::InvariantCulture
$raiz = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PSScriptRoot))
$mapasDir = Join-Path $raiz 'peques\banderas\mapas'
$datosJs = Join-Path $raiz 'peques\banderas\datos.js'
$svgFuenteLocal = Join-Path $raiz 'qa\fuente-mundo.svg'
$urlFuente = 'https://cdn.jsdelivr.net/npm/@svg-maps/world@1.0.1/world.svg'

if (-not $BboxCache) { $BboxCache = Join-Path $raiz 'qa\cdp\_bbox-mundo.json' }

$viewBoxes = [ordered]@{
  europa       = '380 165 212 230'
  norteamerica = '-4 7 337 441'
  sudamerica   = '163 423 219 234'
  asia         = '540 270 352 232'
  africa       = '399 345 245 273'
  oceania      = '786 426 223 226'
}

# ---------- utilidades numéricas / de texto ----------

function Fmt([double]$v, [int]$decimales = 2) {
  $r = [math]::Round($v, $decimales)
  if ($r -eq 0) { $r = 0 }
  return $r.ToString('0.' + ('#' * $decimales), $inv)
}

function RedondearPath([string]$d, [int]$decimales) {
  $patron = '-?\d+(?:\.\d+)?(?:[eE][-+]?\d+)?'
  return [regex]::Replace($d, $patron, {
      param($m)
      $v = [double]::Parse($m.Value, $inv)
      return Fmt $v $decimales
    })
}

function EscaparXml([string]$s) {
  return $s.Replace('&', '&amp;').Replace('<', '&lt;').Replace('>', '&gt;').Replace('"', '&quot;')
}

# ---------- datos del juego ----------

function Leer-Continentes {
  $texto = [IO.File]::ReadAllText($datosJs, [Text.Encoding]::UTF8)
  $salida = [ordered]@{}
  $bloques = [regex]::Matches($texto, "(?s)id:\s*'([a-z]+)'.*?nombre:\s*'([^']+)'.*?paises:\s*\[(.*?)\]\s*\}")
  foreach ($b in $bloques) {
    $id = $b.Groups[1].Value
    $paises = @()
    foreach ($m in [regex]::Matches($b.Groups[3].Value, "\['([a-z]{2})',\s*'([^']+)',\s*(\d)\]")) {
      $paises += [PSCustomObject]@{ code = $m.Groups[1].Value; nombre = $m.Groups[2].Value; dif = [int]$m.Groups[3].Value }
    }
    if ($paises.Count -gt 0) { $salida[$id] = [PSCustomObject]@{ nombre = $b.Groups[2].Value; paises = $paises } }
  }
  return $salida
}

# ---------- fuente ----------

if ($Fuente) {
  if (-not (Test-Path $Fuente)) { throw "No existe la fuente indicada: $Fuente" }
  $rutaFuente = (Resolve-Path $Fuente).Path
} elseif (Test-Path $svgFuenteLocal) {
  $rutaFuente = $svgFuenteLocal
} else {
  Write-Host "Descargando la fuente desde $urlFuente ..."
  $dir = Split-Path -Parent $svgFuenteLocal
  if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  Invoke-WebRequest -Uri $urlFuente -OutFile $svgFuenteLocal -UseBasicParsing
  $rutaFuente = $svgFuenteLocal
}
$svgFuente = [IO.File]::ReadAllText($rutaFuente, [Text.Encoding]::UTF8)
Write-Host ("Fuente: {0} ({1:N0} B)" -f $rutaFuente, $svgFuente.Length)

# ---------- bboxes reales con Chrome headless ----------

function Obtener-Bbox {
  param([string]$svgTexto, [string]$cache)
  if (-not $RecalcularBbox -and (Test-Path $cache)) {
    $previo = [IO.File]::ReadAllText($cache, [Text.Encoding]::UTF8) | ConvertFrom-Json
    $primero = $previo.datos.PSObject.Properties | Select-Object -First 1
    if ($previo.viewBox -eq '0 0 1010 666' -and $previo.datos.PSObject.Properties.Name.Count -ge 250 -and $primero.Value.ppal) {
      Write-Host "Bboxes reutilizados de $cache"
      return $previo.datos
    }
  }
  $candidatos = @(@(Join-Path $raiz 'qa\cdp\cdp-lib.ps1') | Where-Object { Test-Path $_ })
  if ($candidatos.Count -eq 0) { throw 'No se encuentra qa\cdp\cdp-lib.ps1 para calcular los bboxes con Chrome.' }
  . $candidatos[0]

  $tmpDir = Join-Path $env:TEMP ('mapas-bbox-' + [guid]::NewGuid().ToString('N'))
  New-Item -ItemType Directory -Force -Path $tmpDir | Out-Null
  $html = Join-Path $tmpDir 'bbox.html'
  $sinCabecera = [regex]::Replace($svgTexto, '(?s)^\s*<\?xml[^>]*>', '')
  $documento = @'
<!doctype html><html lang="es"><head><meta charset="utf-8"><title>bbox</title>
<style>html,body{margin:0;background:#fff}#caja{position:absolute;left:0;top:0;width:1010px;height:666px;visibility:hidden}</style>
</head><body><div id="caja">
'@ + $sinCabecera + @'
</div><script>
window.__bbox = null; window.__error = null;
(async () => {
try {
  var svg = document.querySelector('#caja svg');
  svg.setAttribute('width', '1010'); svg.setAttribute('height', '666'); svg.style.display = 'block';
  var salida = {}, orden = [];
  var lado = 300;
  var lienzo = document.createElement('canvas');
  lienzo.width = lado; lienzo.height = lado;
  var ctx = lienzo.getContext('2d', { willReadFrequently: true });

  // Bbox de la masa principal (mayor componente conectado) de cada pais.
  // Sirve para ajustar la bandera al territorio principal y no al conjunto de
  // islas/territorios lejanos (Espana con Canarias, Portugal con Azores,
  // EE. UU. con Alaska, Noruega con Svalbard...).
  async function bboxPrincipal(p, b) {
    if (!(b.width > 0 && b.height > 0)) return null;
    var pad = 0.03;
    var vx = b.x - b.width * pad, vy = b.y - b.height * pad;
    var vw = b.width * (1 + pad * 2), vh = b.height * (1 + pad * 2);
    var svgTxt = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="' + vx + ' ' + vy + ' ' + vw + ' ' + vh +
      '" width="' + lado + '" height="' + lado + '" preserveAspectRatio="none"><path d="' + p.getAttribute('d') + '" fill="#000"/></svg>';
    var img = new Image();
    img.src = 'data:image/svg+xml;charset=utf-8,' + encodeURIComponent(svgTxt);
    await img.decode();
    ctx.fillStyle = '#fff'; ctx.fillRect(0, 0, lado, lado);
    ctx.drawImage(img, 0, 0, lado, lado);
    var datos = ctx.getImageData(0, 0, lado, lado).data;
    var visto = new Uint8Array(lado * lado);
    var cola = new Int32Array(lado * lado);
    var mejor = null;
    for (var i = 0; i < lado * lado; i++) {
      if (visto[i]) continue;
      visto[i] = 1;
      if (datos[i * 4] >= 128) continue;
      var cabeza = 0, ncola = 0, total = 0;
      var minx = lado, maxx = -1, miny = lado, maxy = -1;
      cola[ncola++] = i;
      while (cabeza < ncola) {
        var pos = cola[cabeza++];
        var px = pos % lado, py = (pos / lado) | 0;
        total++;
        if (px < minx) minx = px; if (px > maxx) maxx = px;
        if (py < miny) miny = py; if (py > maxy) maxy = py;
        if (px > 0 && !visto[pos - 1]) { visto[pos - 1] = 1; if (datos[(pos - 1) * 4] < 128) cola[ncola++] = pos - 1; }
        if (px < lado - 1 && !visto[pos + 1]) { visto[pos + 1] = 1; if (datos[(pos + 1) * 4] < 128) cola[ncola++] = pos + 1; }
        if (py > 0 && !visto[pos - lado]) { visto[pos - lado] = 1; if (datos[(pos - lado) * 4] < 128) cola[ncola++] = pos - lado; }
        if (py < lado - 1 && !visto[pos + lado]) { visto[pos + lado] = 1; if (datos[(pos + lado) * 4] < 128) cola[ncola++] = pos + lado; }
      }
      if (!mejor || total > mejor.total) mejor = { total: total, minx: minx, maxx: maxx, miny: miny, maxy: maxy };
    }
    if (!mejor || mejor.total < 4) return null;
    return {
      x: Math.round((vx + (mejor.minx / lado) * vw) * 1000) / 1000,
      y: Math.round((vy + (mejor.miny / lado) * vh) * 1000) / 1000,
      w: Math.round(((mejor.maxx + 1 - mejor.minx) / lado) * vw * 1000) / 1000,
      h: Math.round(((mejor.maxy + 1 - mejor.miny) / lado) * vh * 1000) / 1000
    };
  }

  var rutas = Array.prototype.slice.call(svg.querySelectorAll('path'));
  for (var k = 0; k < rutas.length; k++) {
    var p = rutas[k];
    var b = p.getBBox();
    var clave = p.getAttribute('id') || ('__sinid' + k);
    var ppal = null;
    try { ppal = await bboxPrincipal(p, b); } catch (e) { ppal = null; }
    salida[clave] = { x: Math.round(b.x * 1000) / 1000, y: Math.round(b.y * 1000) / 1000,
      w: Math.round(b.width * 1000) / 1000, h: Math.round(b.height * 1000) / 1000,
      n: p.getAttribute('name') || '', ppal: ppal };
    orden.push(clave);
  }
  window.__bbox = { viewBox: svg.getAttribute('viewBox') || '', datos: salida, orden: orden };
} catch (e) { window.__error = String(e && e.message || e); }
})();
</script></body></html>
'@
  [IO.File]::WriteAllText($html, $documento, (New-Object Text.UTF8Encoding($false)))
  $uri = ([uri]$html).AbsoluteUri
  Write-Host "Calculando bboxes en Chrome headless ($uri) ..."
  try {
    Start-CdpChrome -Url $uri -Port 9521 | Out-Null
    Start-Sleep -Milliseconds 1200
    $json = Invoke-CdpEval -Await -Expression @'
(async () => {
  for (let i = 0; i < 900; i++) { if (window.__bbox || window.__error) break; await new Promise(r => setTimeout(r, 100)); }
  if (window.__error) return 'ERROR: ' + window.__error;
  return JSON.stringify(window.__bbox);
})()
'@ -TimeoutSeconds 180
  } finally {
    Stop-CdpChrome
    Remove-Item -Recurse -Force $tmpDir -ErrorAction SilentlyContinue
  }
  if ($json -like 'ERROR:*') { throw $json }
  $datos = ($json | ConvertFrom-Json)
  $dirCache = Split-Path -Parent $cache
  if (-not (Test-Path $dirCache)) { New-Item -ItemType Directory -Force -Path $dirCache | Out-Null }
  [IO.File]::WriteAllText($cache, ($datos | ConvertTo-Json -Depth 8), (New-Object Text.UTF8Encoding($false)))
  Write-Host "Bboxes guardados en $cache"
  return $datos.datos
}

$bbox = Obtener-Bbox -svgTexto $svgFuente -cache $BboxCache
$continentes = Leer-Continentes

# Índice de paths: código -> d original
$paths = @{}
foreach ($m in [regex]::Matches($svgFuente, '(?s)<path\s+d="([^"]*)"\s+name="([^"]*)"\s+id="([a-z]{2})"')) {
  $paths[$m.Groups[3].Value] = $m.Groups[1].Value
}
Write-Host "Paths con código ISO: $($paths.Count)"

function Interseccion($b, [double]$x0, [double]$y0, [double]$w, [double]$h) {
  return ($b.x -lt ($x0 + $w)) -and (($b.x + $b.w) -gt $x0) -and ($b.y -lt ($y0 + $h)) -and (($b.y + $b.h) -gt $y0)
}

if (-not (Test-Path $mapasDir)) { New-Item -ItemType Directory -Force -Path $mapasDir | Out-Null }

$resumen = @()
foreach ($id in $viewBoxes.Keys) {
  if ($Continente -ne 'todos' -and $Continente -ne $id) { continue }
  if (-not $continentes.Contains($id)) { throw "datos.js no contiene el continente $id" }
  $vb = $viewBoxes[$id]
  $partes = $vb -split '\s+'
  $x0 = [double]$partes[0]; $y0 = [double]$partes[1]; $vw = [double]$partes[2]; $vh = [double]$partes[3]
  $paises = $continentes[$id].paises
  $nombreCont = $continentes[$id].nombre

  foreach ($p in $paises) {
    if (-not $paths.ContainsKey($p.code)) { throw "El código $($p.code) ($($p.nombre)) no existe en la fuente." }
    if (-not $bbox.PSObject.Properties.Name.Contains($p.code)) { throw "Sin bbox para $($p.code) ($($p.nombre))." }
  }

  $codigosJuego = @{}
  foreach ($p in $paises) { $codigosJuego[$p.code] = $true }

  # Contexto: cualquier otro path cuyo bbox interseque el encuadre.
  $contexto = @()
  foreach ($prop in $bbox.PSObject.Properties) {
    if ($codigosJuego.ContainsKey($prop.Name)) { continue }
    if (-not $paths.ContainsKey($prop.Name)) { continue }
    $b = $prop.Value
    if (Interseccion $b $x0 $y0 $vw $vh) { $contexto += $prop.Name }
  }

  # Precisión: primero 2 decimales en los países y 1 en el contexto; si el archivo
  # se pasa de 470 KB se baja la precisión de forma progresiva.
  $paleta = @(
    @{ inter = 2; ctx = 1 },
    @{ inter = 1; ctx = 1 },
    @{ inter = 1; ctx = 0 }
  )
  $generado = $null
  foreach ($tanda in $paleta) {
    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine('<svg xmlns="http://www.w3.org/2000/svg" viewBox="' + $vb + '" role="img" aria-labelledby="tituloMapa">')
    [void]$sb.AppendLine('<!-- Geometría: @svg-maps/world 1.0.1 (CC BY 4.0), basada en MapSVG (https://mapsvg.com/maps/world).')
    [void]$sb.AppendLine('     Las banderas (banderas/banderas/xx.svg) se resuelven contra peques/banderas-mundo.html, donde se inyecta este SVG. -->')
    [void]$sb.AppendLine('<title id="tituloMapa">Mapa de ' + (EscaparXml $nombreCont) + '</title>')
    [void]$sb.AppendLine('<defs>')
    foreach ($p in $paises) {
      $b = $bbox.PSObject.Properties[$p.code].Value
      # La bandera se ajusta a la masa principal del pais; si no hay datos,
      # se usa el bbox completo. Si el territorio cruza el borde del encuadre
      # (Rusia en Europa/Asia, Kiribati en Oceania...), se recorta a la parte
      # visible para que la bandera se vea completa.
      # Si el rasterizado no encuentra una masa clara (Kiribati y sus islas
      # diminutas dan 0x0), se usa el bbox completo.
      $pb = $b.ppal
      if (-not $pb -or $pb.w -lt 0.5 -or $pb.h -lt 0.5) { $pb = $b }
      $px = [math]::Max($pb.x, $x0)
      $py = [math]::Max($pb.y, $y0)
      $px2 = [math]::Min($pb.x + $pb.w, $x0 + $vw)
      $py2 = [math]::Min($pb.y + $pb.h, $y0 + $vh)
      $pw = [math]::Max($px2 - $px, 0.01)
      $ph = [math]::Max($py2 - $py, 0.01)
      [void]$sb.AppendLine('<pattern id="pat-' + $p.code + '" patternUnits="userSpaceOnUse" patternContentUnits="userSpaceOnUse" x="' +
        (Fmt $px 3) + '" y="' + (Fmt $py 3) + '" width="' + (Fmt $pw 3) + '" height="' + (Fmt $ph 3) + '">' +
        '<image href="banderas/banderas/' + $p.code + '.svg" x="0" y="0" width="' + (Fmt $pw 3) +
        '" height="' + (Fmt $ph 3) + '" preserveAspectRatio="none"/></pattern>')
    }
    [void]$sb.AppendLine('</defs>')

    # Contexto (gris, no interactivo)
    [void]$sb.AppendLine('<g class="contexto" pointer-events="none" aria-hidden="true">')
    foreach ($code in ($contexto | Sort-Object)) {
      $d = RedondearPath $paths[$code] $tanda.ctx
      [void]$sb.AppendLine('<path d="' + $d + '" fill="#22334a" stroke="#16263a" stroke-width="0.5" vector-effect="non-scaling-stroke"/>')
    }
    [void]$sb.AppendLine('</g>')

    # Países del juego: primero los grandes; los pequeños quedan encima.
    $ordenados = $paises | Sort-Object -Property @{ Expression = { $b = $bbox.PSObject.Properties[$_.code].Value; - ($b.w * $b.h) } }
    foreach ($p in $ordenados) {
      $b = $bbox.PSObject.Properties[$p.code].Value
      $d = RedondearPath $paths[$p.code] $tanda.inter
      [void]$sb.Append('<g class="pais" data-code="' + $p.code + '" role="button" tabindex="0" aria-label="' +
        (EscaparXml $p.nombre) + '" aria-pressed="false"><path class="silueta" d="' + $d + '" fill="url(#pat-' + $p.code + ')"/>')
      if ($b.w -lt 8 -and $b.h -lt 8) {
        [void]$sb.Append('<circle class="zona-toque" cx="' + (Fmt ($b.x + $b.w / 2) 3) + '" cy="' + (Fmt ($b.y + $b.h / 2) 3) + '" r="10"/>')
      }
      [void]$sb.AppendLine('</g>')
    }
    [void]$sb.AppendLine('</svg>')
    $texto = $sb.ToString()
    $bytes = [Text.Encoding]::UTF8.GetByteCount($texto)
    $generado = @{ texto = $texto; bytes = $bytes; inter = $tanda.inter; ctx = $tanda.ctx }
    if ($bytes -lt 470000) { break }
    Write-Host ("  {0}: {1:N0} B con precisión {2}/{3}; reintentando con menos decimales..." -f $id, $bytes, $tanda.inter, $tanda.ctx)
  }

  $destino = Join-Path $mapasDir ($id + '.svg')
  [IO.File]::WriteAllText($destino, $generado.texto, (New-Object Text.UTF8Encoding($false)))
  $peso = (Get-Item $destino).Length
  $resumen += [PSCustomObject]@{
    continente = $id
    viewBox    = $vb
    paises     = $paises.Count
    contexto   = $contexto.Count
    bytes      = $peso
    decInter   = $generado.inter
    decCtx     = $generado.ctx
  }
  Write-Host ("{0}: {1} países + {2} de contexto -> {3} ({4:N0} B, precisión {5}/{6})" -f $id, $paises.Count, $contexto.Count, $destino, $peso, $generado.inter, $generado.ctx)
}

Write-Host ''
$resumen | Format-Table -AutoSize
