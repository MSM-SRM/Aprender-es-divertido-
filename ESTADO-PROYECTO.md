# Estado del proyecto — Mi Mundo de Aprendizaje

> **Fuente única de verdad** para el usuario, OpenCode y VS Code/Copilot.
> Antes de empezar una tarea, lee este archivo. Al terminarla, actualízalo.
>
> Última actualización: **13/11/2026**
> Producción: `https://msm-srm.github.io/Aprender-es-divertido-/peques/`
> Repositorio: `https://github.com/MSM-SRM/Aprender-es-divertido-`
> Rama: `main` · Estado: juego «Capi se va de aventura» publicado en `c6a9ae4` y verificado en GitHub Pages; enlace de Juegos corregido en `6295cc1`; créditos agrupados en un panel discreto en `88655b3`; texto de bienvenida actualizado en `8e91cfb`; audio en inglés británico y español publicado y verificado en `b2857d5`; Rincón del JA-ja! HA-ha! y «Guardar chiste» publicados y verificados en `331077c`; música del Penalti y versión autónoma `penalti-cr7.html` publicadas y verificadas en `05bdd88`; audio de entrada de CR7 y carátula ilustrada del Penalti publicados y verificados en `a15b747`; nuevo juego «¿Qué hora es?» con la lección de Kakashi rediseñada, publicado y verificado en GitHub Pages en `9b9ea2f`

---

## 1. Resumen

| Dato | Valor |
|---|---|
| Tipo de proyecto | Sitio web estático (HTML, CSS y JavaScript), sin build |
| Idioma | Español, con interfaz en español, catalán, inglés y alemán |
| Perfiles | `guest`, `mireia`, `sofia` |
| Entrada | `peques/index.html` |
| Hub principal | `peques/mundo-mireia.html` |
| Estado del código | Abecedario bilingüe, créditos y acceso English-only para Mireia/Guest publicados; portada de Naruto en Mi Mates para Mireia/Guest publicada y verificada en `b74aa5b`; aventura de vocabulario «Capi se va de aventura» publicada y verificada en `c6a9ae4`, con créditos agrupados en un panel discreto desde `88655b3`; audio local en inglés británico y español añadido al abecedario y a la aventura en `b2857d5`, publicado y verificado; Rincón del JA-ja! HA-ha! y «Guardar chiste» publicados y verificados en `331077c`; música de fondo y silencio por perfil en Penalti Matemático, y versión autónoma `penalti-cr7.html`, publicadas y verificadas en `05bdd88`; audio de entrada renovado y carátula ilustrada del Penalti publicados y verificados en `a15b747`, conservando el avatar pixel-art original dentro de ambos juegos; nuevo juego «¿Qué hora es?» para Mireia y Guest con hub de 4 espacios y lección de 15 conceptos rediseñada, publicado y verificado en GitHub Pages en `9b9ea2f` |
| Estado de la limpieza | Completada: 8 archivos retirados, mapa optimizado, `qa/` archivado y `.git` compactado |
| Subagentes OpenCode | Disponibles, con límite de pasos en tareas largas; el supervisor revisa y completa la verificación |

---

## 2. Cómo trabajar en local

### Arrancar el servidor

En VS Code: tarea **Servir sitio local (8767)**.

O desde PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools\serve.ps1
```

Abrir:

```text
http://127.0.0.1:8767/peques/index.html?profile=guest
```

Cambiar `guest` por `mireia` o `sofia` para probar cada perfil.

### Tareas de VS Code

`.vscode/tasks.json` incluye:

- Servir sitio local (8767)
- Abrir sitio local
- Auditar referencias entre páginas
- Auditar imágenes, audios y vídeos
- Auditar archivos JavaScript
- Ver estado de git
- Verificar producción (GitHub Pages)

### Flujo compartido con VS Code/Copilot

- **Misma carpeta y mismo repositorio:** OpenCode y VS Code trabajan sobre `C:\Users\Usuario\Documents\Proyecto predeterminado`.
- **Mismo tablero:** este archivo. Es la fuente única de verdad.
- **Mismas reglas:** `.github/copilot-instructions.md` para Copilot; `AGENTS.md` para OpenCode.
- **Mismas tareas:** `.vscode/tasks.json` y los scripts de `tools/`.
- **Mismos recursos:** servidor local en el puerto 8767, scripts de auditoría y backups en `Downloads`.
- **Protocolo:** leer este archivo, mover la tarea a En curso, trabajar, verificar en local, moverla a Hecho y anotar el commit.
- **Si OpenCode no está disponible:** Copilot toma la primera tarea de la tabla Pendiente y sigue el mismo protocolo.

### Verificación mínima antes de terminar

- La página carga sin errores de consola.
- Imágenes, audios y vídeos referenciados responden 200.
- Los enlaces internos llevan a páginas existentes.
- Se ve bien a 390 px y a 1280 px.
- `prefers-reduced-motion` sigue funcionando en la entrada.
- Si se publica, `tools/check-prod.ps1` pasa (Pages tarda 40-60 s).

---

## 3. Tareas

### Hecho

| ID | Tarea | Evidencia |
|---|---|---|
| H1 | Fondo animado en la entrada con respaldo estático y reducción de movimiento | `1d43e95` |
| H2 | Fondo reescalado a 1440×960 y ralentizado a 0,65× | `9517629` |
| H3 | Verificación del fondo en producción | `2a39d1c`, `197e947` |
| H4 | Retirada de `halloween-libro-original.html` | `2fb505f`, `0b7e551` |
| H5 | Retirada de `halloween-libro.html`, `halloween-libro2.html` y sus imágenes | `ad1ba37`, `80fa5da` |
| H6 | Progreso compartido: módulo común y migración de áreas (fase 1) | `246ec0f` |
| H7 | Progreso fase 2 en index, Naruto y Penalti | `ffd86ac` |
| H8 | Auditoría de duplicados, páginas huérfanas y referencias | Este documento + `qa/` |
| H9 | Flujo compartido: estado único, instrucciones Copilot y tareas VS Code | `fdfe8b8` |
| H10 | Juego original del abecedario con Capi y fondo del supermercado Lidl | `2de4e07`; publicado, solo perfil Sofia |
| H11 | P1: retirada de los 8 archivos seguros | `30c175a`, `2ca2ce7`; 8 rutas en 404 y páginas activas en 200 |
| H12 | P2: mapa de respaldo en JPEG | `4f0e891`; 574.016 bytes, producción verificada |
| H13 | P3: capturas antiguas de `qa/` archivadas | 575 archivos (182,88 MB) retirados; copia de 189,47 MB con 854/854 hashes |
| H14 | P4: `.git` compactado | Bundle de 214,3 MB verificado; 213,38 → 34,87 MB; `git fsck` limpio |
| H15 | P6: documentación final de la limpieza | `55f54ea`; este archivo verificado en producción |
| H16 | P5: nombre de `areas-test.html` | Resuelta: se mantiene. Es el hub real de actividades (mapa, puzzles y abecedario enlazan a él), no una página de prueba |
| H17 | Revisión del abecedario de Capi (perfil Sofia) | 27/27 letras e imágenes correctas, sin errores de consola; móvil 390×844 y 360×640 sin desbordamiento. Fallos menores anotados en `peques/PLAN.md` |
| H18 | Acceso al abecedario de Capi desde la página de Sofia | `b71b881`; tarjeta primera en `index.html`, vuelta a Juegos y traducciones |
| H19 | Versión inglesa del abecedario de Capi (A–Z), conservando el juego español de 27 letras (A–Z y Ñ) | `a564339`, publicado y verificado en GitHub Pages; 26 palabras e imágenes inglesas locales, selector multilingüe para Sofia y fondo Lidl |
| H20 | Créditos fuera del popup, bajo activación de cinco toques consecutivos | `a564339`, publicado; panel «Créditos» se revela en la quinta activación consecutiva, se reinicia al interactuar fuera del botón; listas de 27 créditos ES y 26 EN en `creditos.json` y `creditos-en.json` |
| H21 | Voz británica inglesa estricta y preferencia por voz femenina/natural | `a564339`, publicado; espera `voiceschanged`, selecciona solo `en-GB` y prefiere Google UK English Female o Sonia/Libby/Serena/Hazel; nunca recurre al español. En el entorno probado no había voz `en-GB` en el navegador y se mostraba un aviso. Superado por H28: los MP3 locales ya no dependen de las voces del navegador; voz española `es-ES` conservada |
| H22 | Acceso English-only al abecedario desde Lengua Inglés para Mireia y Guest | `12cb0fd`, publicado y verificado: tarjeta primera con NEW solo en `lang=en`, enlace `profile=mireia|guest&uiLang=en`; Sofia conserva su acceso multilingüe |
| H23 | Portada ilustrada de Capi leyendo en las tarjetas del abecedario | `3d807b3`, publicado y verificado en Pages: SVG original en las tarjetas de Sofia y de Mireia/Guest en inglés; nombre y descripción en banda inferior más pequeña, al estilo de la tarjeta de cuentos. Copia del proyecto en `Downloads\ZZ - Mi_Mundo Back ups` |
| H24 | Portada Naruto con atribución en Mi Mates para Mireia y Guest | `b74aa5b`, publicado y verificado en Pages (ejecución `42042737919`): imagen VectorStock de TamTV en tarjeta cuadrada para Mireia y Guest; enlace de atribución visible, pequeño y discreto al pie de la tarjeta |
| H25 | Aventura de vocabulario «Capi se va de aventura» | `c6a9ae4`, publicado y verificado en Pages: 11 lugares × 20 palabras (220 fotos), créditos CC completos, quiz de unión foto-palabra, progreso por perfil, ES/EN y vuelta a Juegos; tarjeta NEW en Sofia, Juegos e Idiomas. Enlace de Juegos corregido en `6295cc1` para respetar el `uiLang` de la página |
| H26 | Créditos de la aventura agrupados en un panel discreto | `88655b3`, publicado y verificado: se retiran de cada tarjeta y se agrupan al final del juego; el botón «Créditos» abre el panel tras cinco toques seguidos. Incluye 221 atribuciones (220 palabras y una imagen adicional), en español e inglés |
| H27 | Texto de bienvenida de la aventura | `8e91cfb`, publicado: sustituido el texto de edades por la presentación de Capi viajando para aprender palabras y la pregunta «¿Adónde quieres ir con Capi primero…?», con versión inglesa equivalente |
| H28 | Audio en inglés británico y español para el abecedario y la aventura | `b2857d5`, publicado y verificado en GitHub Pages: 493 MP3 locales (53 del abecedario y 440 del vocabulario), generados con Hazel (`en-GB`) y Helena (`es-ES`). El abecedario dice letra y palabra, cierra la imagen al terminar y elimina el aviso de voz ausente. La aventura reproduce la palabra al abrir cada tarjeta, añade el botón 🔊 Escuchar/Listen y repite el audio al acertar; si falta el MP3, usa `speechSynthesis` como respaldo |
| H29 | «El Rincón del JA-ja! HA-ha!» en la entrada, con «Guardar chiste» | `331077c`, publicado y verificado en GitHub Pages (ejecución `42524656141`): mazo aleatorio de 140 chistes sin repetición por ciclo, cuatro idiomas (ES/EN/CA/DE), ilustración estable por índice, GIF original de 87 fotogramas, respaldo local → caché → JSON remoto → 6 chistes internos. «Guardar chiste» abre tres círculos iguales de 66×66 px (Mireia, Sofía, Guest) con avatares reales y `object-fit: cover`; colecciones separadas en `mundoAprendizajeJokeCollectionV1_<perfil>`, sin duplicados por índice, confirmación traducida y cierre con ✕, Escape o alternando el botón. «Repetir chiste» eliminado. Probado a 320, 390 y 1280 px sin desbordamiento |
| H30 | Música de fondo en Penalti Matemático, con silencio solo de la música por perfil | `05bdd88`, publicado y verificado en GitHub Pages: `peques/audios/himno-real-madrid.mp3` (862.462 B, SHA-256 `3FB5A70A…EF1FE`, copia idéntica del aportado). Suena al pulsar nivel, una vez por partida (`loop=false`, volumen `0.4`), desde el principio en cada partida y «Jugar otra vez»; se para y reinicia al volver al menú. Botón «🔊/🔇 Música» en `.back-row`, visible solo durante partida y resultado (117×44 px en escritorio y 107×44 px a 390 px), con `aria-pressed`, `aria-label` y `title`; estado por perfil en `mundoAprendizajePenaltiMusicMutedV1_<perfil>` mediante `musicAudio.muted`. El botón no silencia `siuuuu`, `haha`, `wrong` ni `victory`. Retirada la intro automática de `hala-madrid.mp3` (archivo conservado en disco). Verificado en local y en producción con el perfil guest: música iniciada tras elegir nivel, sin bucle, mute solo de música y SFX intactos; 1280 y 390 px sin desbordamiento ni errores de consola; MP3 en 200 `audio/mp3` |
| H31 | Versión autónoma y compartible del Penalti CR7 en un único HTML | `05bdd88`, publicada y verificada: `penalti-cr7.html` en la raíz (1.586.259 B, SHA-256 `BB153024…049E2F`), sin login, perfiles, «Volver a Mi Mates», selector de idioma, estrellas, medallas ni progreso. Avatar, cuatro sprites SVG y cinco MP3 incrustados como data URI; única preferencia persistente: el mute global `mundoAprendizajePenaltiMusicMutedV1`. Enlace público: `https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html`. Probada a 1280×800 y 390×844, por HTTP y con `file://`, sin peticiones externas ni errores; título de resultado según aciertos y sonido de victoria solo con 10/10. Producción idéntica al local (mismo tamaño y SHA-256). Copia para enviar en `C:\Users\Usuario\Downloads\Penalti-CR7.html` |
| H32 | Audio de entrada de CR7 y carátula ilustrada del Penalti | `a15b747`, publicado y verificado en GitHub Pages: `peques/audios/cr9123hm.mp3` (399.194 B, 24,876 s, SHA-256 `DD8E0843…97896`) suena al entrar en la pantalla principal de ambos juegos, al recargar y al volver desde una partida; la música espera a que termine y el mute de la música no afecta a la intro. `peques/imagenes/penalti-cr7-portada.webp` (810×1024, 113.808 B, SHA-256 `6E0C3F97…ADD55`) es la carátula de la tarjeta de Mi Mates y la imagen OG/Twitter del HTML autónomo, con relación 1:1,15, fondo desenfocado, banda blanca de 40 px y título en una línea en es/ca/de/en. Se restauró el avatar pixel-art original en las pantallas de inicio de `peques/penalti-matematico.html` y `penalti-cr7.html`: la ilustración es solo carátula. El HTML autónomo quedó en 2.124.259 B, SHA-256 `889C3621…00666`, idéntico a producción y a `Downloads\Penalti-CR7.html` |
| H33 | Juego «¿Qué hora es?»: hub de 4 espacios y lección «Aprende con Kakashi sensei» | `9b9ea2f`, publicado y verificado en GitHub Pages: `peques/que-hora-es.html` con fondo `goldBG`, 4 tarjetas (1 activa y 3 «Muy pronto»), 15 conceptos con ejemplos, reloj redondo con 12 números fucsia, Kakashi en el centro y brazos animados con cálculo de ángulo/longitud desde los hombros. Tarjeta nueva en Ciencias para Mireia y Guest (`profiles`/`newFor`, imagen `portada-hora.jpg`), ausente para Sofia. Probado en local a 1280 y 390 px, sin errores de consola; 12:00 AM/PM, 6:45 y 7:45 correctos; enlace y perfil conservados. Estrella de oro en `ciencias` al completar la lección. Auditoría independiente de `web-qa`: APTO (`qa/que-hora-es-2026-11-12.md`) |
| H34 | Rediseño de la lección «Aprende con Kakashi sensei» | `9b9ea2f`, publicado y verificado en GitHub Pages: Kakashi sin medallón y al 80 % del diámetro interior (`kakashi-body.webp`, 366×720), números fucsia al 16 % (≈49 px) y reloj de 336 px; brazos transparentes recortados (`brazo-izquierdo.png` para la hora, `brazo-derecho.png` para los minutos) que giran desde los hombros; lección compacta en dos columnas (máx. 1000 px) que cabe en 1280×800 sin scroll y pasa a una columna a ≤860 px; retirados la leyenda y «Repetir movimiento». Probado 7:00, 12:00 AM/PM, 3:30, 9:15, 6:45 y 7:45 a 1280×800 y 390×844, sin errores de consola ni desbordamiento horizontal. Los números quedan por encima de los brazos para seguir legibles. Producción: HTML y assets con los tamaños locales exactos |

### En curso

| ID | Tarea | Nota |
|---|---|---|
| — | Sin tareas en curso | — |

### Pendiente

| ID | Tarea | Prioridad | Criterio de terminado |
|---|---|---|---|
| P7 | Completar los tres juegos de «¿Qué hora es?» | Alta | Implementar «Mira lo que se» (20 preguntas aleatorias), «El día de Sakura» y «¿Qué haces, Mireia?», manteniendo el fondo `goldBG`, el estilo del hub y los enlaces por perfil |

### Bloqueado

| ID | Tarea | Motivo |
|---|---|---|
| B1 | Delegación en subagentes `web-builder` / `web-qa` | El límite de pasos de `web-builder` interrumpió la verificación de una tarea larga; el supervisor revisó, corrigió y completó las pruebas. No afecta a Copilot ni al trabajo local |

---

## 4. Mapa de páginas

| Página | Función | Estado |
|---|---|---|
| `peques/index.html` | Entrada, selector de perfil, fondo animado y accesos | Activa |
| `peques/mundo-mireia.html` | Mapa de áreas y panel de eventos | Activa |
| `peques/areas-test.html` | Hub de actividades por área | Activa (nombre heredado; se mantiene); incluye la tarjeta «¿Qué hora es?» para Mireia y Guest |
| `peques/que-hora-es.html` | Juego de lectura del reloj: hub de 4 espacios y lección «Aprende con Kakashi sensei» | Activa y publicada. Los otros 3 juegos son placeholders «Muy pronto» |
| `peques/mi-mates.html` | Matemáticas | Activa |
| `peques/mi-lectura.html` | Lectura | Activa |
| `peques/mi-escritura.html` | Escritura | Activa |
| `peques/idiomas.html` | Inglés, catalán y alemán | Activa |
| `peques/mi-progreso.html` | Progreso por perfil | Activa |
| `peques/naruto-matematico.html` | Juego de matemáticas | Activa |
| `peques/penalti-matematico.html` | Juego de penaltis | Activa; música de fondo y botón de silencio por perfil desde `05bdd88`; audio de entrada de CR7 desde `a15b747` |
| `penalti-cr7.html` (raíz) | Versión autónoma del Penalti CR7 para compartir por enlace o archivo | Activa; sin login, perfiles, estrellas ni progreso |
| `peques/puzzles-mireia.html` | Puzzles | Activa |
| `peques/evento-especial.html` | Eventos especiales (Halloween) | Activa |
| `peques/halloween-cuento-miedo.html` | Cuento de miedo | Activa |
| `peques/halloween-familia-addams.html` | Memoria de los Addams | Activa |
| `peques/halloween-pinta-descubre.html` | Pintar y descubrir | Activa |
| `peques/cuentos-julia-d.html` | Cuentos de Julia Donaldson | Activa |
| `peques/abecedario-capibara.html` | Abecedario con Capi | Sofia multilingüe; Mireia y Guest solo en inglés desde Lengua Inglés |
| `peques/capibara-se-va-de-aventura.html` | Aventura de vocabulario con Capi (11 lugares × 20 palabras) | Activa; Sofia, Mireia y Guest, en español e inglés |
| `index.html` (raíz) | Redirección a `peques/` | Necesaria |
| `peques/google*.html` | Verificación de Google | Conservar |
| `peques/BingSiteAuth.xml` | Verificación de Bing | Conservar |

Retirados el 05/11/2026 con copia en `Downloads`: `peques/Index-ok-04.11.26.html`, `peques/preview-mapa-mireia.html` y `peques/LEEME.txt`.

### Audio del abecedario y de la aventura

- **493 MP3 locales** (≈4,8 MB): 26 clips ingleses y 27 españoles del abecedario, más 220 palabras × 2 idiomas de la aventura.
- Rutas:
  - `peques/audios/abecedario/en/<letra>.mp3` y `…/es/<letra>.mp3` (la Ñ se guarda como `N-tilde.mp3`).
  - `peques/audios/capibara-vocabulario/en/<base-de-image>.mp3` y `…/es/<base-de-image>.mp3`.
- Voces de Windows: **Microsoft Hazel** (`en-GB`) y **Microsoft Helena** (`es-ES`), con SSML para el abecedario («A. Apple.», «Letra A. Abeja.»).
- El abecedario reproduce el MP3 al abrir la letra, muestra el estado en el idioma de la interfaz y cierra la imagen 2 s después de terminar. «Escuchar otra vez» repite el clip. Si el MP3 falla, recurre a `speechSynthesis` y ya no muestra el aviso de «no hay voz en-GB».
- La aventura reproduce la palabra automáticamente al abrir cada tarjeta y al acertar en el quiz, con botón **🔊 Escuchar/Listen** en cada ficha. Al cambiar de tarjeta, idioma o pantalla se detiene el audio anterior; si falta el MP3, usa `speechSynthesis` como respaldo.
- **Audio del Penalti:** `peques/audios/himno-real-madrid.mp3` (862.462 B) es la música de fondo: empieza al elegir nivel, suena una vez por partida sin bucle y se reinicia al volver a jugar; el botón «Música» silencia solo la música y recuerda la preferencia por perfil. `peques/audios/cr9123hm.mp3` (399.194 B, 24,876 s) es la intro de CR7: suena al entrar en la pantalla principal, al recargar y al volver desde una partida, y la música espera a que termine; el mute de la música no la silencia. La versión autónoma `penalti-cr7.html` lleva ambos MP3, los efectos y el avatar pixel-art incrustados como data URI.
- Regeneración (solo local, no se versiona): `powershell -NoProfile -ExecutionPolicy Bypass -File qa\generate-audio.ps1`; admite `-Test` y `-Force`. Requiere las voces Hazel y Helena instaladas en Windows.
- Herramientas versionadas: `tools/check-prod.ps1` comprueba las páginas de los dos juegos y una muestra de MP3 (estado 200 y `audio/mp3`); `tools/audit-assets.ps1` marca los audios como referencias dinámicas para que no parezcan huérfanos. `.github/copilot-instructions.md` documenta rutas, comportamiento y regeneración.

### Juego «¿Qué hora es?»

- Página: `peques/que-hora-es.html`, para Mireia y Guest; no aparece en Ciencias para Sofia.
- Tarjeta de Ciencias: `peques/imagenes/que-hora-es/portada-hora.jpg`, título «¿Qué hora es?», subtítulo y etiqueta NEW para ambos perfiles. Se integra en `areas-test.html` con `kind:'page'`, `image` y `subtitle`; las tarjetas antiguas conservan su emoji.
- Hub de 4 espacios: «Aprende con Kakashi sensei» (activo con `kakashi-learn.jpg`), «Mira lo que se» (`naruto-hi.jpg`), «El día de Sakura» (`sakura-day.jpg`) y «¿Qué haces, Mireia?» (`mireia-day.jpg`). Los tres últimos son botones desactivados con «Muy pronto».
- Fondo: `peques/imagenes/que-hora-es/gold-bg.jpg` en el hub y en la lección, con un velo cálido para legibilidad.
- Lección: 15 conceptos (mañana, tarde, noche, medianoche, mediodía, AM, PM, en punto, y media, y cuarto, menos cuarto y combinaciones AM/PM), con 2 ejemplos clicables y un tip cada uno. Barra de progreso, 15 puntos navegables, flechas del teclado y tarjeta final con estrella.
- Composición: dos columnas (reloj de 390 px y panel flexible, máx. 1000 px) con panel compacto; la lección cabe en 1280×800 sin scroll. A ≤860 px pasa a una columna centrada de 520 px.
- Reloj: esfera blanca, aro dorado y 12 números fucsia grandes (16 % del ancho de la esfera, ≈49 px). Kakashi `kakashi-body.webp` (366×720, sin brazos ni medallón) ocupa el 80 % del diámetro interior y se centra por el torso para compensar el pelo. Dos brazos transparentes recortados de las imágenes originales: `brazo-izquierdo.png` (hora) y `brazo-derecho.png` (minutos, Chidori). Giran desde los hombros con pivotes en (250,5) y (35,5), longitud fija del 30 % y 32,5 % del ancho de la esfera y transición CSS de 1,25 s; el hombro de la hora se desplaza un 1 % hacia el torso. Los números se dibujan por encima (`z-index: 6`) para que no queden tapados. `prefers-reduced-motion` los deja colocados sin animación. La leyenda de colores y «Repetir movimiento» se retiraron.
- Progreso: al completar la lección suma 1 estrella de oro al área `ciencias` con `MiProgreso`; no falla si el módulo no está disponible.
- Publicación: commit `9b9ea2f` en `main`; el HTML y los assets comprobados (`kakashi-body.webp`, `brazo-izquierdo.png`, `brazo-derecho.png`, `portada-hora.jpg` y `gold-bg.jpg`) devuelven 200 en GitHub Pages con los tamaños locales, y la tarjeta de Ciencias aparece en producción.

---

## 5. Auditoría y limpieza del 05/11/2026

### Método

- 122 archivos versionados; 21 páginas HTML en `peques/`.
- Búsqueda de duplicados exactos por SHA-256: **0 grupos**.
- Mapa de referencias reales desde HTML, JS y JSON (sin contar documentación).
- Revisión de tamaño y uso de imágenes, audios, vídeos y fuentes.
- Scripts repetibles: `tools/audit-refs.ps1`, `tools/audit-assets.ps1`, `tools/audit-js.ps1`.

### Resultado corto

- No hay archivos duplicados byte a byte.
- Se retiraron **8 archivos** con seguridad: 1 página duplicada, 1 redirección huérfana, 1 documento antiguo, 1 ZIP de la primera versión y 4 assets sin uso (1.535.658 bytes).
- Se optimizó **1 archivo pesado**: el PNG de respaldo del mapa pasó de 3,84 MB a 574 KB en JPEG.
- Las imágenes `imagenes/addams/*` parecen huérfanas, pero **se usan dinámicamente**; no se tocaron.
- El mayor consumo de espacio estaba fuera del sitio: `.git` (213,38 MB) y las capturas locales de `qa/` (187,66 MB). Ambos se compactaron.

### A. Retirado del sitio (ejecutado el 05/11/2026)

| Archivo | Bytes | SHA-256 | Motivo |
|---|---:|---|---|
| `peques/Index-ok-04.11.26.html` | 66.123 | `8737A26F...95D0` | Copia fechada del index anterior, sin `noindex`, duplica la entrada |
| `peques/preview-mapa-mireia.html` | 566 | `B12E7494...D492` | Redirección antigua sin enlaces entrantes |
| `peques/LEEME.txt` | 919 | `9E9D6AE3...6D44` | Instrucciones antiguas de publicación |
| `mi_mundo_aprendizaje.zip` | 6.292 | `8A112D4B...A94EC` | ZIP de la primera versión (15 KB de HTML antiguo) |
| `peques/images/mireia-avatar.jpeg` | 668.598 | `3227C586...5C6C` | Avatar sin uso; se usa `mireia-avatar-256.jpg` |
| `peques/imagenes/fondomundomireia.webp` | 673.060 | `ED468402...9A82` | Variante sin uso; se usan las de 640/960/1280 |
| `peques/audios/cr7123hm.mp3` | 96.924 | `5A4AC41E...D69B` | Audio sin referencias |
| `peques/imagenes/gaara-8bit.png` | 23.176 | `2303C117...7FBD` | Imagen sin referencias |

**Total:** 1.535.658 bytes (≈1,46 MB).

Retirados con `git rm` en `30c175a` y documentados en `2ca2ce7`. Producción verificada: las 8 rutas devuelven 404 y las páginas activas siguen en 200. Copia íntegra en `MiMundo_backup_2026-11-05_limpieza` con 8/8 hashes correctos.

### B. Optimizado (ejecutado el 05/11/2026)

| Archivo | Antes | Después | Ahorro |
|---|---:|---:|---:|
| Mapa de respaldo | `fondomundomireia-limpia.png` (3.927,4 KB) | `fondomundomireia-fallback.jpg` (574.016 bytes, JPEG q88, 1280×1024) | 3.447.649 bytes (≈3,37 MB) |

El PNG era opaco y solo se usaba como fallback dentro de `<picture>`; los navegadores modernos reciben WebP. Publicado en `4f0e891`: en producción el JPEG responde 200 con 574.016 bytes, el PNG antiguo devuelve 404 y las variantes WebP siguen en 200. Sin errores de consola.

### C. Conservar (no tocar)

- `peques/imagenes/addams/*`: 11 imágenes usadas dinámicamente por `halloween-familia-addams.html`.
- `peques/imagenes/fpbg.mp4`, `fpbg.png` y el script de `playbackRate`: fondo aprobado.
- `peques/google*.html` y `peques/BingSiteAuth.xml`: verificaciones.
- `index.html` de la raíz: redirección necesaria.
- `peques/areas-test.html`: está en uso aunque el nombre parezca de prueba.
- Banderas, imágenes de perfil y assets de juegos con referencias reales.
- `peques/imagenes/sofia.png` y `mireia.png`: fallbacks con transparencia; se pueden optimizar más adelante, no ahora.

### D. Espacio local: antes y después

| Elemento | Antes | Después | Ahorro |
|---|---:|---:|---:|
| `.git/` | 213,38 MB | 34,87 MB | 178,51 MB |
| `qa/` | 187,66 MB | 6,49 MB | 181,17 MB |
| `peques/` | 18,10 MB | 13,35 MB | 4,75 MB |
| **Total** | **419,14 MB** | **54,71 MB** | **364,43 MB** |

- `.git/`: se guardó un bundle de seguridad de 214,3 MB, se eliminaron 4 refs `refs/agents/...` y se ejecutó `git gc --prune=now`. `git fsck --full` no informa errores y `main` / `origin/main` siguen en `4f0e891`.
- `qa/`: se retiraron 575 archivos multimedia (182,88 MB). Quedan 279 archivos (6,49 MB): informes `*.md`, scripts `*.ps1`, JSON y documentación.
- `peques/`: incluye los 8 archivos retirados (1,46 MB) y el ahorro del mapa (3,37 MB).

### E. Copias de seguridad

| Copia | Contenido | Tamaño | Verificación |
|---|---|---:|---|
| `MiMundo_backup_2026-11-05_limpieza` | 8 archivos retirados | 1,47 MB | `SHA256.txt`, 8/8 hashes |
| `MiMundo_backup_2026-11-05_mapa-fallback` | PNG original del mapa | 3,84 MB | `SHA256.txt` |
| `MiMundo_backup_2026-11-05_qa-capturas` | `qa/` completo antes de limpiar | 189,47 MB | `SHA256.txt`, 854/854 hashes |
| `MiMundo_backup_2026-11-05_refs.bundle` | Historia completa de `.git`, incluidas las refs retiradas | 214,3 MB | `git bundle verify`: historia completa |
| `MiMundo_backup_2026-11-05_fondo-animado` | Copia previa del fondo | 0,63 MB | `SHA256.txt` |

Todas están en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\`. Los hashes y el bundle permiten restaurar cualquier archivo o la historia anterior.

---

## 6. Reglas de seguridad

1. **No borrar ni mover nada sin autorización explícita.**
2. Antes de retirar, copiar a:
   `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_AAAA-MM-DD_motivo\`
   y generar `SHA256.txt` con hashes idénticos. Usar:
   `powershell -NoProfile -ExecutionPolicy Bypass -File tools\backup-files.ps1 -Motivo motivo -Paths "ruta1","ruta2"`.
3. No cambiar estilo, colores, estructura ni idioma sin pedido.
4. No tocar el fondo aprobado ni las imágenes de Addams.
5. No editar los verificadores de Google/Bing.
6. No commitear `qa/` ni `.opencode/`.
7. Verificar en local antes de publicar.
8. GitHub Pages tarda 40-60 s; no declarar publicado hasta comprobarlo.
9. Si algo no se puede comprobar, decirlo; no inventar resultados.

---

## 7. Registro de hitos

| Fecha | Commit | Hito |
|---|---|---|
| 04/11/2026 | `2fb505f` | Retirada de `halloween-libro-original.html` |
| 04/11/2026 | `ad1ba37` | Retirada de los lectores duplicados de Halloween |
| 04/11/2026 | `ffd86ac` | Progreso fase 2 |
| 05/11/2026 | `1d43e95` | Fondo animado en la entrada |
| 05/11/2026 | `9517629` | Fondo reescalado y ralentizado |
| 05/11/2026 | `197e947` | Verificación del fondo en producción |
| 05/11/2026 | — | Auditoría de limpieza |
| 05/11/2026 | `fdfe8b8` | Flujo compartido y estado único del proyecto |
| 05/11/2026 | `a3c719c` | Registro del flujo compartido y la auditoría |
| 05/11/2026 | `30c175a` | Retirada de 8 archivos antiguos o sin uso |
| 05/11/2026 | `2ca2ce7` | Documentación de la retirada |
| 05/11/2026 | `4f0e891` | Mapa de respaldo en JPEG |
| 05/11/2026 | — | `qa/` archivado y `.git` compactado (solo local) |
| 05/11/2026 | `55f54ea` | Documentación final de la limpieza |
| 05/11/2026 | `2de4e07` | Abecedario de Capi publicado (solo perfil Sofia) |
| 06/11/2026 | `c6a9ae4` | Aventura de vocabulario «Capi se va de aventura» publicada |
| 06/11/2026 | `6295cc1` | Enlace de la aventura en Juegos ajustado al idioma de la página |
| 06/11/2026 | `88655b3` | Créditos de la aventura agrupados en un panel discreto |
| 06/11/2026 | `8e91cfb` | Texto de bienvenida de la aventura actualizado |
| 07/11/2026 | `b2857d5` | Audio en inglés británico y español del abecedario y la aventura, publicado y verificado |
| 07/11/2026 | `4e1c3c7` | Documentación del audio en `ESTADO-PROYECTO.md` y `peques/PLAN.md` |
| 07/11/2026 | `d6e36d3` | Instrucciones de Copilot y herramientas de verificación de audio |
| 08/11/2026 | `331077c` | «El Rincón del JA-ja! HA-ha!» y «Guardar chiste» publicados y verificados en Pages |
| 10/11/2026 | `05bdd88` | Música del Penalti y versión autónoma `penalti-cr7.html` publicadas y verificadas |
| 11/11/2026 | `a15b747` | Audio de entrada de CR7, carátula del Penalti y avatar pixel-art restaurado, publicados y verificados |

---

## 8. Cómo actualizar este archivo

- Al empezar: mueve la tarea a **En curso** y anota la fecha.
- Al terminar: muévela a **Hecho**, añade el commit y la verificación.
- Si aparece un bloqueo, regístralo en **Bloqueado** con el motivo.
- No borres el historial de tareas; añade filas.
- Si cambia una decisión (por ejemplo, conservar una página), anótalo en la tabla correspondiente.
- Mantén este archivo como punto de entrada; el detalle técnico largo va en `peques/PLAN.md`.

---

## 9. Próxima acción

0. **Penalti Matemático (H30–H32):** música de fondo, botón de silencio por perfil, audio de entrada de CR7 (`cr9123hm.mp3`) y carátula ilustrada publicados en `a15b747` y verificados en Pages. La carátula `penalti-cr7-portada.webp` se usa solo en la tarjeta de Mi Mates y en OG/Twitter; dentro de ambos juegos se conserva el avatar pixel-art. Enlace para compartir: `https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html`. Copia enviable en `C:\Users\Usuario\Downloads\Penalti-CR7.html`.
1. **Rincón del JA-ja! HA-ha! (H29):** publicado en `331077c` y verificado en Pages (ejecución `42524656141`, éxito). Contenido en producción: «Guardar chiste» presente, «Repetir chiste» ausente, tres círculos de 66×66 px con Mireia, Sofía y Guest, y GIF de 270×270 y 87 fotogramas con SHA-256 idéntico al local.
2. **Sin tareas abiertas.** P5 se resolvió manteniendo `peques/areas-test.html`: es el hub real de actividades y no una página de prueba.
3. **Abecedario de Capi:** versión española y extensión inglesa publicadas (`2de4e07`, `a564339`); acceso English-only de Mireia/Guest en `12cb0fd`. El audio ya no depende de las voces del navegador: 53 MP3 locales en inglés británico y español, publicados en `b2857d5` y verificados en Pages. Mejoras opcionales, pendientes de autorización: mejorar el foco del diálogo, alargar el cierre automático y valorar más palabras por letra.
4. **Capi se va de aventura:** publicada en `c6a9ae4`. 11 lugares, 220 fotos, quiz y progreso compartido; español e inglés. Probada en local (Supermercado completo 20/20, móvil 390×844 y 360×640, movimiento reducido) y verificada en GitHub Pages. El enlace de Juegos se corrigió en `6295cc1` para conservar el idioma de la página. Desde `88655b3` los créditos ya no aparecen en cada tarjeta: están agrupados al final, en un panel que se abre con cinco toques en «Créditos». El texto de bienvenida se actualizó en `8e91cfb`. El audio de las 220 palabras en ambos idiomas se publicó en `b2857d5` y se comprobó en producción, incluido el quiz.

Si OpenCode no está disponible, Copilot puede continuar en VS Code:

1. Leer este archivo.
2. Tomar la primera tarea de **Pendiente**.
3. Trabajar en local con `tools/serve.ps1`.
4. Actualizar este archivo y avisar al usuario.
