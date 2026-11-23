# Herramientas de «Banderas del mundo»

Dos scripts de PowerShell para regenerar los materiales del juego. No se ejecutan desde la página: producen archivos locales que después se sirven como cualquier otro recurso.

## Requisitos

- Windows con **Windows PowerShell 5.1** (los scripts usan WinRT). No hace falta instalar nada más; calculan la raíz del proyecto por su cuenta y se pueden lanzar desde cualquier carpeta.
- **Chrome** instalado, solo para `generar-mapas.ps1`: los bboxes se miden en Chrome headless por CDP con `qa/cdp/cdp-lib.ps1` (puerto 9521).
- Voz **Microsoft Helena** (`es-ES`) instalada en Windows, solo para `generar-audios.ps1`. Si no está, el script usa otra voz `es-ES` y avisa.

## generar-mapas.ps1

Lee los continentes y países de `peques/banderas/datos.js`, toma la geometría de la fuente, calcula el bbox real de cada `path` y escribe los seis mapas.

```powershell
# Los seis mapas, reutilizando los bboxes ya calculados
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1

# Un solo continente
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1 -Continente europa

# Volver a medir los bboxes en Chrome (obligatorio si cambia la fuente)
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1 -RecalcularBbox

# Usar otra copia de la fuente o de la caché de bboxes
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-mapas.ps1 -Fuente "C:\ruta\world.svg" -BboxCache "C:\ruta\_bbox-mundo.json"
```

- `-Continente` acepta `todos` (por defecto), `europa`, `norteamerica`, `sudamerica`, `asia`, `africa` u `oceania`.
- `-Force` se acepta pero hoy no cambia nada: los mapas se reescriben en cada pasada.
- Si no encuentra `qa/fuente-mundo.svg`, descarga `@svg-maps/world@1.0.1` desde jsDelivr y la guarda ahí.

## generar-audios.ps1

Crea un MP3 por país con su nombre en español: SpeechSynthesizer → WAV → MediaTranscoder → MP3, con la voz Microsoft Helena.

```powershell
# Genera solo los que faltan
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1

# Muestra de tres países (it, de, pt), útil para comprobar la voz
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1 -Test

# Rehacer todo
powershell -NoProfile -ExecutionPolicy Bypass -File peques\banderas\herramientas\generar-audios.ps1 -Force
```

Sin `-Force`, omite los MP3 que ya existen y pesan más de 2 KB.

## Fuente, licencia y atribución

- Geometría: `@svg-maps/world` 1.0.1, licencia **CC BY 4.0**, basada en MapSVG (https://mapsvg.com/maps/world).
- La atribución es obligatoria y ya aparece al pie de `peques/banderas-mundo.html`: «Mapas: MapSVG · svg-maps (CC BY 4.0)». Si se reutilizan los mapas en otro sitio, hay que copiarla.

## Estructura de salida

- `peques/banderas/mapas/<continente>.svg`: un SVG por continente, con `<defs>`, un `<pattern>` por país, un grupo `.contexto` gris y un `<g class="pais">` por país interactivo.
- Los encuadres actuales están en `$viewBoxes` de `generar-mapas.ps1`: europa `380 165 212 230`, norteamerica `-4 7 337 441`, sudamerica `163 423 219 234`, asia `540 270 352 232`, africa `399 345 245 273`, oceania `786 426 223 226`. Se eligen como unión de los países del juego con un margen mínimo, no del continente entero: por eso queda fuera casi toda Rusia en Europa y Asia, y las islas de la Línea de Kiribati en Oceanía. Al cambiarlos hay que regenerar y actualizar el mismo mapa en `qa/cdp/check-continente.ps1`.
- `peques/banderas/audios/<iso>.mp3`: un clip por código ISO, p. ej. `es.mp3` o `gb.mp3`.
- `qa/fuente-mundo.svg` y `qa/cdp/_bbox-mundo.json`: material de trabajo, no se publica.

## Notas técnicas

- Cada país se rellena con un `<pattern>` que sitúa la bandera local `banderas/banderas/<iso>.svg` sobre su **masa principal** (la mayor componente conectada del territorio, calculada rasterizando el `path` en un lienzo de 300×300) y la estira con `preserveAspectRatio="none"`. Así la bandera no se deforma por islas lejanas (Canarias, Azores, Alaska, Creta, Groenlandia). Si no hay masa clara (Kiribati y sus islas diminutas), se usa el bbox completo. Si el territorio cruza el borde del encuadre (Rusia, Kiribati), el patrón se recorta a la parte visible para que la bandera se vea completa. Por eso la ruta de la bandera es relativa a `banderas-mundo.html`, que es quien inyecta el SVG.
- Los países con bbox menor de 8×8 unidades añaden un `<circle class="zona-toque">` transparente de radio 10 para poder tocarlos; la lista «Ver lista de países» del juego cubre el resto. En la página, el mapa usa la altura de la ventana (hasta 720 px) y el botón «🔍 Ampliar / ↺ Ver todo» lo duplica dentro del panel, sin tocar los SVG.
- La caché `qa/cdp/_bbox-mundo.json` solo se reutiliza si corresponde al viewBox `0 0 1010 666`, tiene al menos 250 entradas y todas incluyen la masa principal (`ppal`); si no, se vuelve a medir.
- Los SVG y los MP3 son archivos locales: la página no pide nada a Internet en tiempo de ejecución.

## Aviso

No publiques `qa/fuente-mundo.svg`: es la fuente de trabajo (1,2 MB) y no forma parte del sitio. Tampoco subas la caché de bboxes.
