# Real Madrid — Cromos y juegos

> **Estado:** Fase 2 en curso. **Integración DIAMANTE construida y verificada en local (16/11/2026):** `index.html` jugable con los 10 jugadores y 20 caras (MADRID/TODOS), datos en `data/players.json` y QA en `tests/validar-datos.html`. Sin publicar; pendientes: 9 retratos, cifras REVISAR, marcos Oro/Blanco-Violeta y quiz.
> **Documento maestro:** [`PLAN_MAESTRO_REAL_MADRID_CROMOS.md`](PLAN_MAESTRO_REAL_MADRID_CROMOS.md). Es la fuente de verdad; este README solo resume el inventario, la estructura de datos y cómo continuar.
> **Fecha del inventario:** 08/11/2026 · **Integración DIAMANTE:** 16/11/2026.

## 1. Qué es

Juego de cromos y preguntas sobre **50 futbolistas del Real Madrid**, dentro de *Mi Mundo de Aprendizaje*.

- Perfiles previstos: **Mireia** y **Guest** (sin backend).
- Cuatro idiomas: castellano, catalán, inglés y alemán.
- 10 cromos **Diamante**, 10 **Oro** y 30 **Blanco/Violeta**.
- Álbum, ficha de cada jugador y quiz «¿Quién es este jugador?» con cuatro opciones.
- Sin entrenadores, presidentes, escudo ni historia del estadio en esta primera entrega.

## 2. Estado real de la carpeta

```text
peques/real-madrid-cromos/
├── index.html                              ← juego: portada, cuenta atrás 10→1 con Atrás/Siguiente y carta MADRID/TODOS (CSS y JS en línea)
├── data/
│   └── players.json                        ← 10 jugadores, 20 caras, con fuente y estado de cada dato
├── tests/
│   └── validar-datos.html                  ← QA automático: 10 reglas PASS/FAIL en el navegador
├── CR7_DIAMANTE_MADRID_vista_previa.png    ← carta Diamante de Cristiano aprobada (única imagen del juego)
├── marco-oro-original-referencia.png       ← referencia del marco Oro (no rediseñar)
├── PLAN_MAESTRO_REAL_MADRID_CROMOS.md      ← documento maestro (fuente de verdad)
├── README.md                               ← este archivo
├── DECISIONES.md                           ← decisiones tomadas en la integración
├── TAREAS.md                               ← pendientes concretos
├── PLANTILLA-COMUN.md · REFERENCIA-DIAMANTE.md · README-REFERENCIAS.md
├── PROMPT_OPENCODE_GLM_5_3_REAL_MADRID_DIAMANTE.txt
└── REAL_MADRID_CROMOS_DIAMANTE_DATOS_10_JUGADORES.txt  ← dossier de datos (fuente de las cifras)
```

**Solo tiene una imagen de carta (Cristiano).** Los otros 9 jugadores se pintan con retrato placeholder (silueta SVG) y `assetPending: true`. No hay fotos reales con licencia verificada.

## 3. Material recuperado

### 3.1 Paquete de continuidad (en Descargas, fuera del repositorio)

- Ruta: `C:\Users\Usuario\Downloads\Real_Madrid_Cromos_Paquete_Continuidad.zip` (12.606 bytes).
- Copia extraída para lectura: `C:\Users\Usuario\AppData\Local\Temp\rm-cromos-inventory\Real_Madrid_Cromos_Paquete\`.
- La copia temporal **no es fuente de verdad** y puede desaparecer; el ZIP de Descargas sí debe conservarse.

Contenido del ZIP (12 archivos, sin imágenes ni código):

| Archivo | Contenido |
|---|---|
| `LEEME_PRIMERO.md` | Orden de lectura y alcance del paquete |
| `01_DOCUMENTACION/BRIEF_Y_PLAN.md` | Concepto, rarezas, campos del cromo, quiz y fases |
| `01_DOCUMENTACION/ESTADO_Y_DECISIONES.md` | Decisiones confirmadas y pendientes |
| `01_DOCUMENTACION/PROMPT_PARA_NUEVA_CUENTA.txt` | Contexto para retomar el proyecto |
| `02_DATOS/jugadores_50_provisional.csv` | Propuesta de 50 jugadores, **sin estadísticas** |
| `02_DATOS/plantilla_estadisticas.csv` | Cabecera de la plantilla de estadísticas |
| `03_RECURSOS/fuentes.json` | Fuentes y metodología en formato JSON |
| `03_RECURSOS/fuentes_y_metodologia.md` | Fuentes oficiales prioritarias (Real Madrid, LALIGA, UEFA…) |
| `04_IMAGENES/README.md` | Carpeta vacía: no incluye fotos |
| `05_CROMOS/README.md` | Carpeta vacía: no incluye marcos |
| `06_JUEGO/README.md` | Carpeta vacía: no incluye código |
| `07_CONTROL_CALIDAD/CHECKLIST.md` | Lista de comprobación de datos, imágenes y juego |

### 3.2 Prototipo visual (en Descargas, fuera del repositorio)

- Ruta: `C:\Users\Usuario\Downloads\cromo_prueba.html` (10.236 bytes).
- Es una maqueta **incompleta**: el HTML se corta en la línea 281, sin cierre de documento.
- Solo muestra una tarjeta de 340×520 px con degradado tipo diamante, borde interior y botones de respuesta.
- **No es un marco aprobado**, no contiene fotografías reales y no debe copiarse como diseño final. La única referencia a imagen es un `url('https://wikimedia.org')` genérico, no un retrato.

### 3.3 Datos de jugadores

- `jugadores_50_provisional.csv`: 50 filas, de `P001` a `P050`.
  - `P001–P010`: Diamante.
  - `P011–P020`: Oro.
  - `P021–P050`: Plata/Violeta (el documento maestro la llama «Blanco/Violeta»; unificar el nombre antes de construir).
- Todas las columnas estadísticas, de títulos, fuentes y fechas están **vacías**.
- La lista **no está aprobada** y las rarezas son provisionales.
- No rellenar estadísticas sin abrir y contrastar cada fuente.

### 3.4 Fuentes

- `fuentes.json` y `fuentes_y_metodologia.md` recogen puntos de partida: historia y palmarés del Real Madrid, perfiles históricos del club, LALIGA y UEFA.
- Cada dato individual debe verificarse en su página concreta y anotarse con fecha.

## 4. Activos gráficos: estado

| Activo | Estado | Ruta |
|---|---|---|
| Marco Diamante | **No encontrado** | — |
| Marco Oro | **No encontrado** | — |
| Marco Blanco/Violeta | **No encontrado** | — |
| Fotografías de los 50 jugadores | **Ninguna descargada ni con licencia verificada** | — |
| Prototipo de cromo | Encontrado, incompleto y no aprobado | `C:\Users\Usuario\Downloads\cromo_prueba.html` |

Búsquedas realizadas: repositorio completo, `~/Downloads` (por nombre y por contenido), interiores de los dos ZIP de Descargas y copia extraída del paquete. No aparecen marcos ni retratos del proyecto.

Única imagen del Real Madrid en el repositorio: `peques/imagenes/puzzles/puzzle-07-real_madrid.jpg`. Pertenece al juego de puzzles y **no debe reutilizarse** como cromo.

> **Bloqueo crítico:** el plan exige reutilizar los marcos originales. Al no existir como archivos, hay que pedir al usuario su ubicación antes de la Fase 2. No improvisar marcos sustitutos.

## 5. Integración con el sitio (pendiente, sin tocar todavía)

### Menú de Juegos

- Hub real: `peques/areas-test.html?area=juegos&profile=<perfil>`.
- Se llega desde `peques/mundo-mireia.html` (zona «Juegos», línea 107) y desde otras páginas.
- Para añadir el juego: una entrada `kind:'page'` en `areaCatalog.juegos.modules` (líneas 69–78 de `areas-test.html`), con `profiles:['mireia','guest']`.
- El badge NEW del menú se controla con `newFor:['mireia','guest']` (estático). El otro sistema, `mundoAprendizajeNewSeen_<slug>_<perfil>` con 24 h, se usa en `idiomas.html` para los cuentos; no es el patrón del menú de Juegos.

### Página de juego

Patrón de las páginas existentes (por ejemplo `peques/mi-mates.html`):

1. `<script src="auth-guard.js"></script>` al principio del `<head>`.
2. `<script src="progress-shared.js"></script>` antes del script principal.
3. `profileId` desde `?profile=`.
4. Botón «Volver al mapa» a `mundo-mireia.html?avatar=restored&profile=...`.
5. Marcador con `MiProgreso.area(progress, '<area>')` y guardado en `progress.byGame['<area>_<modo>']`.
6. `<script src="ui-language.js"></script>` al final si se reutiliza la traducción por texto.

### Perfiles y progreso

- Clave de progreso: `mundoAprendizajeProgressV3_<perfil>` (`mireia`, `guest`, `sofia`).
- Estructura: `{ stars, rounds, byGame, byArea }`.
- `guest` entra sin PIN; `mireia` exige sesión en producción. En local, `auth-guard.js` permite abrir sin sesión.
- `peques/mi-progreso.html` respalda automáticamente la clave de progreso y las claves `mundoAprendizajeNewSeen_*_<perfil>`.
- **Pendiente de integración:** si el juego crea claves propias (álbum, colección, idioma), hay que añadirlas a la whitelist de `mi-progreso.html` para que entren en la copia de seguridad.

### Idiomas

- `peques/ui-language.js` traduce nodos de texto mediante un diccionario ES/EN/CA/DE.
- El juego puede usar ese mecanismo o su propio diccionario, pero debe guardar los datos deportivos una sola vez y traducir solo los textos.

## 6. Estructura de datos y cómo añadir o modificar un jugador

### 6.1 Esquema de `data/players.json`

Cada jugador es un objeto con este shape (el QA de `tests/validar-datos.html` lo comprueba):

```json
{
  "order": 1,
  "id": "cristiano-ronaldo",
  "name": "Cristiano Ronaldo",
  "cardName": "CRISTIANO RONALDO",
  "number": "07",
  "flag": "pt",
  "flagLabel": "Portugal",
  "nationality": "Portugal",
  "realMadridPeriod": { "from": 2009, "to": 2018, "label": "2009–2018" },
  "cardImage": "../CR7_DIAMANTE_MADRID_vista_previa.png",
  "assetPending": false,
  "faces": {
    "madrid": {
      "stats": { "appearances": {...}, "goals": {...}, "assists": {...}, "titles": {...} },
      "goalBreakdown": [ { "value": 312, "label": "Liga", ... } ],
      "trophies": [ { "value": 4, "label": "Champions League", "seasons": ["2013/14", "..."], ... } ],
      "awards": [ ... ],
      "records": [ "..." ],
      "notes": [ "..." ]
    },
    "todos": {
      "clubs": [ { "name": "Sporting CP", "yearsLabel": "2002–03", "country": "Portugal", "stats": {...}, "trophies": [...], "notes": [...] } ],
      "nationalTeams": [ { "name": "Portugal", "yearsLabel": "2003–2026", "stats": {...}, "trophies": [...], "participations": [...] } ],
      "editorialNotes": [ { "label": "Manchester United 2007/08", "text": "..." } ],
      "notes": [ "..." ]
    }
  }
}
```

**Toda estadística, trofeo y premio lleva siempre:** `value` (número o `null`), `label`, `source`, `source_url`, `status` (`verified`, `secondary`, `disputed` o `needs_verification`), `last_checked` (AAAA-MM-DD) y `note`. Lo que el dossier marca con `*` lleva además `asterisk: true`, que la interfaz pinta como superíndice.

**Reglas que no se pueden romper** (el QA falla si se rompen):

- Cara `todos` sin ninguna mención a «Real Madrid».
- `null` + `needs_verification` para los datos REVISAR; en pantalla se muestra «Sin registro fiable*», nunca «N/D» ni 0.
- Ceros solo cuando son reales: goles de Casillas (Madrid, Porto y España) y goles de Puskás con España.
- `number` y `cardImage` distintos de `null` solo para Cristiano; el resto lleva `assetPending: true`.
- Orden fijo 01–10 según el dossier.

### 6.2 Cómo añadir o modificar un jugador

1. Edita `data/players.json` (un registro por jugador, sin tocar el HTML).
2. Usa solo cifras del dossier o de una fuente contrastada; anota `source`, `source_url`, `status`, `last_checked` y `note`. Si el dossier dice REVISAR, `value: null` + `status: "needs_verification"`.
3. Marca con `asterisk: true` todo lo que lleve `*` en el dossier o venga de fuente secundaria/discrepante.
4. Abre `tests/validar-datos.html` en el navegador (con `tools/serve.ps1` activo) y comprueba que las 10 reglas dan PASS.
5. Abre `index.html?profile=guest` y revisa la carta y las dos caras.
6. Si añades una imagen de carta, colócala en esta carpeta (o en `assets/players/<id>/`), ponla en `cardImage` y `assetPending: false`; documenta fuente/licencia aquí y en `sources.json` cuando exista.

### 6.3 Cómo ejecutar y verificar

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools\serve.ps1   # puerto 8767
# Juego:    http://127.0.0.1:8767/peques/real-madrid-cromos/index.html?profile=guest
# QA:       http://127.0.0.1:8767/peques/real-madrid-cromos/tests/validar-datos.html
```

Verificado en local (17/11/2026, cuenta atrás): el álbum ya no muestra las 10 cartas a la vez. Entrada por la carta 10 (Casillas) hasta la 1 (Cristiano) con «← Atrás» / «Siguiente →» y flechas del teclado, una cara cada vez (MADRID/TODOS), insignia circular con el número, extremos deshabilitados («Fin de la colección» en la 1), Escape vuelve a la portada. Sin errores de consola y sin desbordamiento a 390 y 320 px. Nueva referencia de estilo v2 (carta doble Di Stéfano aportada por el usuario) documentada en `REFERENCIA-CARTA-DOSTRARES.md` con datos nuevos apuntados en `TAREAS.md`.

Verificado en local (18/11/2026): **la portada muestra la caja de la colección** (`assets/RMportada.png`, aportada por el usuario) en lugar de la carta de CR7, y el juego es accesible desde la **placa «Real Madrid»** del mapa (`mundo-mireia.html` → `areas-test.html?area=real-madrid` → módulo con la caja como miniatura). La antigua isla SVG (mala resolución) se ha retirado: ahora hay un recuadro con escudo + «Real Madrid» / «Cromos y juegos» en el hueco de agua al sur de Ciencias, junto a Mitología Griega, sin tapar la estatua ni el cartel de Mitología. Flujo completo verificado: mapa → placa → área → juego, sin errores de consola y sin desbordes de la placa a 1440/1280/1024/851/768/390/320 px.

Verificado en local (18/11/2026): **giro 3D entre las dos caras**. Al pulsar MADRID / TODOS la carta gira 180° (`rotateY`, 0,62 s) con la altura del escenario animada y sincronizada (`ResizeObserver`); la cara oculta queda `inert` + `aria-hidden` y se respeta `prefers-reduced-motion`. Comprobado el recorrido 10→1 con cambio de cara, cambio de carta y vuelta a MADRID sin recortes ni saltos a 817, 390 y 320 px.

Verificado en local (16/11/2026): rejilla con 10 cartas, carta de Cristiano con la imagen aprobada (carga en ~1 s; PNG de 2,7 MB), cartas CSS de los otros 9 con placeholder, toggle MADRID/TODOS con `aria-pressed`, notas de asterisco, Escape vuelve a la rejilla, sin errores de consola y sin desbordamiento horizontal a 817, 390 y 320 px (medido con iframes).

Verificado en local (17/11/2026), rediseño visual de la cara TODOS a petición del usuario: cada club/Selección muestra escudo provisional (SVG con colores e iniciales) o bandera redonda en selecciones, bandera del país, años, estadísticas con iconos (campo verde = partidos, balón = goles, bota = asistencias) y trofeos como mosaico de tiles con el icono del trofeo y las temporadas debajo (sin «1 Eurocopa 2016» en texto). Títulos de grupo «Clubes»/«Selecciones» solo para lectores de pantalla. Re-verificado: QA 10/10 PASS, sin errores de consola y sin desbordamiento a 817/390/320 px (los años largos saltan de línea en pantallas estrechas). Iconos, escudos y banderas son SVG provisionales; los oficiales en `TAREAS.md`.

## 7. Qué falta antes de completar el juego

1. **9 cartas** (Di Stéfano, Raúl, Modrić, Benzema, Puskás, Zidane, Gento, Ramos y Casillas). El usuario prepara **3 diseños propios de dos caras** (CR7, Di Stéfano y Raúl): guardarlos en `Downloads\RM cromos` (una imagen con ambas caras o dos archivos por carta). El resto: prompts v2 en `assets/players/PROMPT_CARTAS_PENDIENTES.md`. Generación automática bloqueada el 17/11 (credencial de Grok inválida, cuota gratuita de Google agotada ~23 h); reintentar el 18/11 o generarlas a mano.
2. **Cifras REVISAR y discrepancias** del dossier (`TAREAS.md`): asistencias históricas, títulos de Puskás/Gento/Modrić/Casillas/Raúl, carrera previa de Di Stéfano.
3. **Marcos Oro y Blanco/Violeta** y las 40 cartas restantes de la lista de 50 (lista aún sin aprobar por el usuario).
4. **Quiz «¿Quién es este jugador?»** con cuatro opciones y el modo de efemérides.
5. **Integración en el menú de Juegos** de `peques/areas-test.html` (`kind:'page'`, `profiles:['mireia','guest']`) y whitelist de claves en `mi-progreso.html` si se crean claves propias.
6. Progreso/colección por perfil (aún no se guarda nada en localStorage).

## 8. Cómo continuar

1. Leer entero `PLAN_MAESTRO_REAL_MADRID_CROMOS.md`.
2. No cambiar el alcance, los marcos ni la lista sin autorización del usuario.
3. Completar los pendientes de `TAREAS.md` empezando por las cifras REVISAR y las imágenes.
4. Construir lo siguiente con datos reales; no rellenar huecos con inventos.
5. Integrar el acceso en `areas-test.html` y probar Mireia/Guest, escritorio y móvil.
6. Actualizar este README y el documento maestro al terminar cada fase.

## 9. Reglas del proyecto

- No rediseñar los cromos ni los marcos originales.
- No inventar jugadores, estadísticas, historias, fechas, precios ni fotografías.
- No usar imágenes generadas por IA como retratos reales.
- No descargar imágenes sin autorización expresa.
- No modificar `peques/index.html`, otros juegos ni archivos ajenos.
- No hacer commit, push ni despliegue sin autorización.
- Conservar el estilo, los colores y el idioma del sitio.
- Verificar siempre en local antes de dar una tarea por terminada.
