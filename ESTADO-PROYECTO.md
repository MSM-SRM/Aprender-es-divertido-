# Estado del proyecto — Mi Mundo de Aprendizaje

> **Fuente única de verdad** para el usuario, OpenCode y VS Code/Copilot.
> Antes de empezar una tarea, lee este archivo. Al terminarla, actualízalo.
>
> Última actualización: **25/11/2026**
> Producción: `https://msm-srm.github.io/Aprender-es-divertido-/peques/`
> Repositorio: `https://github.com/MSM-SRM/Aprender-es-divertido-`
> Rama: `main` · Estado: juego «Capi se va de aventura» publicado en `c6a9ae4` y verificado en GitHub Pages; enlace de Juegos corregido en `6295cc1`; créditos agrupados en un panel discreto en `88655b3`; texto de bienvenida actualizado en `8e91cfb`; audio en inglés británico y español publicado y verificado en `b2857d5`; Rincón del JA-ja! HA-ha! y «Guardar chiste» publicados y verificados en `331077c`; música del Penalti y versión autónoma `penalti-cr7.html` publicadas y verificadas en `05bdd88`; audio de entrada de CR7 y carátula ilustrada del Penalti publicados y verificados en `a15b747`; nuevo juego «¿Qué hora es?» con la lección de Kakashi rediseñada, publicado y verificado en GitHub Pages en `9b9ea2f`; juego «Un día en la vida de Sakura» publicado y verificado en GitHub Pages en `aee3daf`; juego «Mira lo que se» rediseñado y publicado en `2f840d1`, verificado en GitHub Pages; juego «¿Qué haces, Mireia?» publicado y verificado en GitHub Pages en `8aa0bfd`; bloque DIAMANTE de «Real Madrid Cromos» integrado y verificado en local; el 18/11 se añadieron el giro 3D entre las dos caras y la placa «Real Madrid» en el mapa (sustituye a la isla SVG de baja resolución), publicado todo en `907da70` y verificado en GitHub Pages; el 18/11 se construyó el juego «Banderas del mundo» en la sección Juegos (mapamundi de 5 continentes, 184 países con bandera y quiz de 10 preguntas por continente y dificultad), que terminaría con seis continentes; el 19/11 se sustituyó la portada SVG casera por el mapamundi `mundi-portada.jpg` aportado por el usuario (etiquetas en español y zonas clicables) y se corrigieron los hallazgos de QA (Escape en el quiz, contraste, foco, etiquetas de Oceanía, favicon y chips a 320 px); el 19/11 la vista de continente pasó a un mapa por continente con cada país dibujado con su forma real y relleno con su bandera, audio del nombre en español y lista de países completa; el 20/11 se auditó de nuevo esa vista (mapa, audio y lista) con resultado correcto; el 22/11 se separó América en Norteamérica y Sudamérica (6 mapas, 1.454.468 B) y el juego «Banderas del mundo» se publicó y verificó en GitHub Pages, con acceso solo para Mireia y Guest; el 23/11 se publicó «Banderas del mundo» con seis continentes (América dividida en Norteamérica y Sudamérica), solo para Mireia y Guest, en `f2bdc83`; el 24/11 se sustituyó la placa de Real Madrid por el escudo giratorio con fondo transparente en el mapa, publicado y verificado en GitHub Pages en `5e0aa8b`; el 25/11 se integraron en local las cartas de dos caras de Raúl y Di Stéfano con el diseño exacto del usuario, pendientes de publicar

---

## 1. Resumen

| Dato | Valor |
|---|---|
| Tipo de proyecto | Sitio web estático (HTML, CSS y JavaScript), sin build |
| Idioma | Español, con interfaz en español, catalán, inglés y alemán |
| Perfiles | `guest`, `mireia`, `sofia` |
| Entrada | `peques/index.html` |
| Hub principal | `peques/mundo-mireia.html` |
| Estado del código | Abecedario bilingüe, créditos y acceso English-only para Mireia/Guest publicados; portada de Naruto en Mi Mates para Mireia/Guest publicada y verificada en `b74aa5b`; aventura de vocabulario «Capi se va de aventura» publicada y verificada en `c6a9ae4`, con créditos agrupados en un panel discreto desde `88655b3`; audio local en inglés británico y español añadido al abecedario y a la aventura en `b2857d5`, publicado y verificado; Rincón del JA-ja! HA-ha! y «Guardar chiste» publicados y verificados en `331077c`; música de fondo y silencio por perfil en Penalti Matemático, y versión autónoma `penalti-cr7.html`, publicadas y verificadas en `05bdd88`; audio de entrada renovado y carátula ilustrada del Penalti publicados y verificados en `a15b747`, conservando el avatar pixel-art original dentro de ambos juegos; nuevo juego «¿Qué hora es?» para Mireia y Guest con hub de 4 espacios y lección de 15 conceptos rediseñada, publicado y verificado en GitHub Pages en `9b9ea2f`; juego «Un día en la vida de Sakura» con 19 eventos, reloj manipulable, AM/PM y música en bucle, publicado y verificado en GitHub Pages en `aee3daf`; juego «Mira lo que se» rediseñado con Naruto grande, burbuja al pie de la viñeta sin tapar la cara, 20 preguntas aleatorias con la hora en palabras y cuatro relojes analógicos (2 AM y 2 PM) por pregunta, publicado en `2f840d1` y verificado en GitHub Pages; juego «¿Qué haces, Mireia?» con 20 rutinas, reloj analógico y tres opciones, publicado en `8aa0bfd` y verificado en GitHub Pages; bloque DIAMANTE de «Real Madrid Cromos» en `peques/real-madrid-cromos/` con 10 cartas de dos caras (MADRID/TODOS), datos con fuente y estado, QA 10/10 PASS, publicado en `907da70` y verificado en GitHub Pages; juego «Banderas del mundo» publicado el 23/11/2026 en GitHub Pages, con acceso solo para Mireia y Guest |
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
| H35 | Juego «Un día en la vida de Sakura» | `aee3daf`, publicado y verificado en GitHub Pages: `peques/sakura-day.html` con portada, cuenta atrás de 4 s, 19 eventos, reloj de 12 h arrastrable (aguja de hora y de minutos), botones AM/PM, «Confirmar» y «Siguiente» solo tras acertar. Música `sakura.mp3` en bucle con botón de silencio persistido por perfil; modal final con estrella de oro en `ciencias`. Los 19 eventos y los casos negativos se probaron de forma automática, la estrella de oro se confirmó con persistencia (oro 1→2, restaurado después) y el layout se midió a 1280×800 y 390×844 sin desbordamiento horizontal ni errores de consola. En producción: página 200 (32.672 B), hub 200 (39.151 B), `sakura.mp3` 200 `audio/mp3` (333.687 B) y las 20 imágenes 200 con sus bytes locales. Assets en `peques/imagenes/que-hora-es/sakura/` y `peques/audios/sakura.mp3` |
| H36 | Juego «Mira lo que se» de Naruto (rediseñado) | `2f840d1`, publicado y verificado en GitHub Pages: `peques/mira-lo-que-se.html` con Naruto a gran tamaño y burbuja en la parte inferior de la viñeta, sin tapar la cara; 20 horas únicas aleatorias en pasos de 5 min (banco de 144), enunciado en palabras con AM/PM y 4 relojes analógicos por pregunta (2 AM y 2 PM, una sola respuesta correcta). Al fallar, el reloj correcto queda rodeado por un aro verde; el elegido, en fucsia. Feedback, bloqueo, barra de progreso, modal final, repetición y teclado 1–4. La tarjeta 2 del hub es un enlace activo (`startNaruto`) que conserva el perfil. Estrella en `ciencias` (oro ≥18, plata ≥14, bronce ≥10). Pruebas: 20 preguntas con 4 relojes (2 AM + 2 PM) y una sola correcta; partidas de 20/20, 18/20, 14/20, 10/20 y 9/20; fallo con aro verde en el reloj correcto; teclado 1–4; 1280×800 con los cuatro relojes visibles, 390×844 y 320×640 sin desbordamiento horizontal; sin errores de consola. El progreso de invitado se guardó y restauró tras las pruebas. En producción: página 200 (27.654 B), hub 200 (39.431 B), `naruto-hi.jpg` 200 (16.525 B) y `gold-bg.jpg` 200 (26.536 B), con los mismos bytes que en local |
| H37 | Juego «¿Qué haces, Mireia?» | `8aa0bfd`, publicado y verificado en GitHub Pages: `peques/que-haces-mireia.html` con 20 rutinas de 6:45 a 21:40 barajadas, reloj analógico grande, insignia de mañana/mediodía/tarde/noche, tres opciones por pregunta (una correcta), teclado 1–3, feedback, modal final y estrella en `ciencias` (oro ≥18, plata ≥14, bronce ≥10). La tarjeta 4 del hub es un enlace activo (`startMireia`) que conserva el perfil. Probado a 1280×800, 390×844 y 320×640 sin desbordamiento horizontal ni errores de consola; 20/20 con oro, 18/20 oro, 14/20 plata, 10/20 bronce y 9/20 sin estrella; foco atrapado, Escape y repetir comprobados; las 20 preguntas con tres opciones únicas y una sola correcta. El progreso de invitado se restauró a `gold: 1`. En producción: página 200 (33.060 B), hub 200 (39.730 B) con `startMireia`, `mireia-day.jpg` 200 `image/jpeg` (32.616 B) y `gold-bg.jpg` 200 (26.536 B), con hashes idénticos a local; `check-prod.ps1` correcto |
| H38 | Real Madrid Cromos: bloque DIAMANTE integrado en local | Sin commit (pendiente de autorización para publicar): `peques/real-madrid-cromos/` con `index.html` (portada, rejilla de 10 cartas y vista de carta con toggle MADRID/TODOS), `data/players.json` (10 jugadores, 20 caras, 265 estadísticas con `source`, `source_url`, `status` y `last_checked`; asteriscos y «Sin registro fiable*» en lugar de N/D o 0) y `tests/validar-datos.html` (QA de 10 reglas: 10/10 PASS, sin errores de consola). Portada del juego cambiada (17/11) a la caja de la colección aportada por el usuario (`assets/RMportada.png`). Carta de Cristiano con la imagen aprobada (`CR7_DIAMANTE_MADRID_vista_previa.png`); los otros 9 con carta CSS y retrato placeholder (`assetPending: true`). Cara TODOS rediseñada como visual (17/11): trofeos con icono y años debajo, escudo provisional + bandera del país en lugar de textos, estadísticas con iconos (campo/balón/bota); títulos de grupo solo para lectores de pantalla; sin desbordamiento a 817/390/320 px. B.O.A.T. solo en el reverso como etiqueta editorial. Generación de las 9 cartas Diamante bloqueada el 17/11 (credencial de Grok inválida; cuota gratuita de Google agotada ~23 h); prompts y dorsales listos en `assets/players/PROMPT_CARTAS_PENDIENTES.md`. Documentación del juego: `README.md`, `DECISIONES.md`, `TAREAS.md` y sección 13 de `PLAN_MAESTRO_REAL_MADRID_CROMOS.md` |
| H39 | Isla «Real Madrid» en el mapa del mundo | Con autorización del usuario (17/11), sin commit: nueva isla «Real Madrid» en `peques/mundo-mireia.html` (esquina superior derecha del mapa, mar abierto; SVG provisional dibujado a mano con estadio blanco/azul, corona y placa «Real Madrid»; escogida tras analizar los píxeles del mapa en busca de agua libre, porque la generación de imágenes está bloqueada hoy) que enlaza a la nueva área `real-madrid` de `peques/areas-test.html`, cuyo único módulo es «Real Madrid Cromos» con la portada de la caja (`real-madrid-cromos/assets/RMportada.png`) y profiles `['mireia','guest']` + badge NEW. La isla aparece también en la lista móvil de zonas (icono 👑). Flujo completo verificado en local (mapa → isla → área → juego, portada cargada, 0 errores de consola). Pendiente: sustituir el SVG por la isla generada por IA el 18/11 (cuota), y añadir más juegos al área. **Sustituida el 18/11 por la placa de H41** (el usuario pidió quitar la imagen de baja resolución). |
| H40 | Real Madrid Cromos: cuenta atrás 10→1 y referencia v2 | A petición del usuario (17/11), sin commit: se elimina la rejilla de 10 cartas; el álbum entra por la carta 10 (Casillas) y baja hasta la 1 (Cristiano) con «← Atrás» / «Siguiente →» (+ flechas del teclado, Escape a la portada), mostrando una cara cada vez (MADRID/TODOS), insignia circular con el número y extremos deshabilitados («Fin de la colección» en la 1). Verificado en local (recorrido completo 10→1, caras, Escape, 0 errores de consola, sin desbordes a 390/320 px). El usuario aporta además una **carta doble de Di Stéfano** como referencia de calidad/estilo/info (anverso+reverso en una imagen); documentada en `peques/real-madrid-cromos/REFERENCIA-CARTA-DOSTRARES.md`: estilo v2 (mosaico arcoíris, placa dorada, reverso «Trayectoria profesional» con bandera+escudo+estadísticas por club y laureles individuales), se mantienen nuestras reglas frente al «ASIST. N/D» y al Real Madrid en TODOS, y se anotan datos nuevos (RCD Espanyol 64/65 60/14; temporadas de Balón de Oro 1957/1959, Súper Balón de Oro 1989, Pichichi ×5; discrepancias de años River/Huracán/Millonarios) en `TAREAS.md`. El archivo original de la carta doble no está en disco: pedirlo al usuario |
| H41 | Real Madrid: giro 3D y placa en el mapa | `907da70`, publicado y verificado en GitHub Pages el 18/11. A petición del usuario: (1) el cambio de cara MADRID ↔ TODOS gira la carta 180° (`rotateY`, 0,62 s, `preserve-3d`, altura animada y sincronizada con `ResizeObserver`, cara oculta `inert` + `aria-hidden`, respeto a `prefers-reduced-motion`); verificado el recorrido 10→1 con cambio de cara y de carta, a 817/390/320 px, 0 errores de consola; (2) se retira la isla SVG provisional de `mundo-mireia.html` (mala resolución) y se sustituye por una **placa-recuadro** con escudo simplificado + «Real Madrid» / «Cromos y juegos» en el agua al sur de Ciencias, junto a Mitología Griega (x 16 %, y 73 %, ancho 18 %), sin tapar la estatua, el cartel de Mitología ni su zona clicable; en pantallas estrechas se apila y oculta el subtítulo. Verificado en 1440/1280/1024/851/768/390/320 px, flujo mapa → placa → área → juego, 0 errores. Pendiente: integrar los 3 diseños de dos caras del usuario (CR7, Di Stéfano, Raúl) y valorar el coste de un mapa nuevo con más huecos. Producción verificada: `index.html` 200 (48.515 B), `players.json` 200 (97.836 B), `RMportada.png` 200 (2.091.277 B) y QA 200; juego con portada y giro 3D probados en producción y flujo mapa → placa → área → juego sin errores de consola |
| H42 | Isla Real Madrid: escudo giratorio con transparencia | **Publicado el 24/11/2026 en GitHub Pages en `5e0aa8b`** y verificado en producción: a petición del usuario (24/11) la placa-recuadro se sustituye por el **escudo girando con el fondo transparente**. Se partió del GIF de gifs-animados.net (292×411, 18 fotogramas de 0,14 s, 32 colores por fotograma), se recortó la franja de la marca de agua (292×392) y se rellenó desde los bordes solo el blanco exterior, de modo que los blancos internos del escudo se conservan. Se reduce a 120×161 con media de área y alfa suave y se publica como WebP animado (`escudo-girando.webp`, 85.384 B) con PNG de reserva (`escudo-girando.png`, 19.429 B) mediante `<picture>`. En `peques/mundo-mireia.html` el botón `.zone-rm` sigue en el mismo punto (16 %, 73 %), mide 1,5 × 2,01 cm (1,35 × 1,81 cm en ≤600 px) y la sombra pasa de la tarjeta a `filter: drop-shadow`. Verificado en local a 1280 y 390 px: el mapa se ve detrás del escudo sin halo, la animación cambia entre fotogramas, clic → `areas-test.html?area=real-madrid`, entrada «Real Madrid · Cromos y juegos» (⚽) en la lista móvil, sin desbordamiento horizontal ni errores de consola; capturas en `qa/shots/isla-rm-contexto-1280.png`, `isla-rm-x1.png`, `isla-rm-x2.png` e `isla-rm-390.png`. Producción verificada: `escudo-girando.webp` 200 (85.384 B), `escudo-girando.png` 200 (19.429 B) y `mundo-mireia.html` 200; el navegador usa el WebP (120×161), la animación cambia, el clic abre `areas-test.html?area=real-madrid&profile=guest` y no hay errores de consola; captura en `qa/shots/produccion-isla-rm-1280.png`. El GIF con fondo blanco sigue en el repositorio, ya sin uso. |
| H43 | Real Madrid Cromos: cartas de dos caras de Raúl y Di Stéfano | En `main`, **en local pendiente de publicar** (25/11/2026). A petición del usuario («esto es lo que busco y necesito, ni un porciento menos ni diferente») se integran sus diseños de carta doble: `Raul.jpeg` y `Di stefano.jpeg` (1536×1024, anverso + reverso con fondo blanco). Se separan las dos caras por el hueco central con el encuadre exacto de cada carta (margen 8 px + hueco 16 px): **752×1008 px** por cara, sin recortar diseño, guardadas como JPEG de calidad 95 en `assets/players/raul-gonzalez/anverso.jpg`/`reverso.jpg` y `assets/players/alfredo-di-stefano/anverso.jpg`/`reverso.jpg`. `players.json`: `cardImageFront`/`cardImageBack`, `number` 7 y 9, `assetPending:false`. En `index.html` el anverso se muestra en MADRID y el reverso en TODOS, sin placas ni datos HTML superpuestos; el panel HTML se conserva para CR7 y las cartas pendientes y se oculta (`#backPhoto`) en las de dos caras. El ancho de carta pasa a una variable `--cromo-w` compartida por anverso y reverso (incluida la regla de altura ≤820 px) para que el giro no cambie de tamaño. QA ampliado a 11 reglas (dorsales, imágenes por cara y carga real 752×1008): 11 PASS. Verificado a 1280×1000, 1280×900, 390 y 320 px: anverso y reverso miden lo mismo, la altura del escenario coincide, sin recortes, sin desbordamiento y sin errores de consola. Capturas: `qa/shots/carta-raul-anverso-1280x1000.png`, `carta-raul-reverso-1280x1000.png`, `carta-di-stefano-anverso-1280.png`, `carta-di-stefano-reverso-1280.png`, `carta-raul-anverso-390.png` y `carta-raul-reverso-390.png`. Pendiente: diseño doble de CR7 (solo existe la carta de una cara) y las otras 7 cartas. |

### En curso

| ID | Tarea | Nota |
|---|---|---|
| R1 | Real Madrid Cromos: publicar el bloque DIAMANTE | **Publicado en `907da70` y verificado en GitHub Pages (18/11).** `peques/real-madrid-cromos/` tiene el juego (`index.html`), los datos (`data/players.json`) y el QA (`tests/validar-datos.html`, 10/10 PASS). Cara TODOS visual (trofeos con icono y año, escudo + bandera, estadísticas por iconos), portada con la caja de la colección, giro 3D entre caras y acceso desde la placa «Real Madrid» del mapa (`mundo-mireia.html` → `areas-test.html?area=real-madrid`). Producción: juego, datos, portada, QA, mapa y área 200; flujo y giro verificados sin errores. Pendientes de siguientes fases: integrar los 3 diseños de dos caras del usuario (CR7, Di Stéfano y Raúl) y el resto de cartas (prompts en `assets/players/PROMPT_CARTAS_PENDIENTES.md`), cifras REVISAR del dossier, aprobación de la lista de 50, marcos Oro/Blanco-Violeta y valorar un mapa nuevo con más huecos. Detalle en `peques/real-madrid-cromos/TAREAS.md` |
| R2 | Banderas del mundo: nuevo juego en Juegos | **Publicado el 23/11/2026 en GitHub Pages en `f2bdc83` y verificado; disponible solo para Mireia y Guest** (la tarjeta no aparece para Sofia). Sigue en curso para mejoras opcionales. `peques/banderas-mundo.html` con mapamundi `banderas/mundi-portada.jpg` (imagen aportada por el usuario, etiquetas en español y zonas clicables por continente). La vista de continente ya no es una rejilla: es un **mapa del continente** (6 SVG en `banderas/mapas/` con la forma real de cada país relleno con su bandera, sobre panel azul muy oscuro con rejilla sutil; desde el 22/11 América se separó en Norteamérica y Sudamérica, cada una con su mapa, progreso y quiz), con tarjeta de información, audio del nombre en español (184 MP3 con la voz Microsoft Helena), botón «🔊 Sonido / 🔇 Silencio» persistido por perfil y lista completa de países en un `<details>` («Ver lista de países») que usa el mismo `descubrir(code)` para los países diminutos. El quiz se desbloquea al ver todos los países del continente. 10 preguntas aleatorias por continente en dos formatos alternos (bandera → 3 países y país → 3 banderas), con modos fácil y difícil. Estrellas por continente y dificultad (oro 9–10, plata 7–8, bronce 5–6) guardadas en `banderas` de `MiProgreso` y en un registro propio por continente/dificultad. Tarjeta NEW en Juegos y etiqueta en Mi Progreso. Pruebas: `qa/cdp/check-continente.ps1` **OK** (6 mapas con los códigos exactos y 0 `<script>`, 1280/390/320 sin desbordamiento, clic en España con `audios/es.mp3` sonando, teclado Tab + Enter, desbloqueo del quiz con las 44 de Europa, 0 errores de consola, 184 audios y 6 mapas en 200, capturas en `qa/shots/continente-*.png`); el 20/11 `audit-mapa.ps1` confirmó 12 MP3 decodificados con voz, sonido persistente, lista de apoyo con Malta y Nauru y 0 errores de consola/red; los 12 combos continente×dificultad (6 continentes × 2 modos) siguen válidos. El 21/11 se recortaron Asia (viewBox `540 270 352 232`, 1002×660 px en 1280 y 348×229 en 390), América (`-4 6 388 652`, 418×702), África (`399 345 245 273`, 630×702) y Oceanía (`786 426 223 226`, 693×702). El 22/11 se dividió América en Norteamérica (`-4 7 337 441`, 16 países, 536×702 px) y Sudamérica (`163 423 219 234`, 12 países, 657×702 px), con migración del progreso antiguo de `america` a los dos nuevos continentes y los 6 mapas probados: `check-continente.ps1` y `audit-mapa.ps1` **todo OK**. **Publicado en main en `f2bdc83` y verificado en GitHub Pages.** Informe de QA en `qa/banderas-mundo-2026-11-19.md` |

### Pendiente

| ID | Tarea | Prioridad | Criterio de terminado |
|---|---|---|---|
| — | Sin tareas pendientes | — | — |

### Bloqueado

| ID | Tarea | Motivo |
|---|---|---|
| B1 | Delegación en subagentes `web-builder` / `web-qa` | El límite de pasos de `web-builder` interrumpió la verificación de una tarea larga; el supervisor revisó, corrigió y completó las pruebas. En «¿Qué haces, Mireia?» el límite de uso gratuito lo dejó no disponible tras crear la página y activar la tarjeta; el supervisor completó los ajustes y todas las pruebas. No afecta a Copilot ni al trabajo local |

---

## 4. Mapa de páginas

| Página | Función | Estado |
|---|---|---|
| `peques/index.html` | Entrada, selector de perfil, fondo animado y accesos | Activa |
| `peques/mundo-mireia.html` | Mapa de áreas y panel de eventos | Activa |
| `peques/areas-test.html` | Hub de actividades por área | Activa (nombre heredado; se mantiene); incluye la tarjeta «¿Qué hora es?» para Mireia y Guest |
| `peques/que-hora-es.html` | Juego de lectura del reloj: hub de 4 espacios y lección «Aprende con Kakashi sensei» | Activa y publicada. Los cuatro juegos están enlazados y publicados; «¿Qué haces, Mireia?» desde `8aa0bfd` |
| `peques/sakura-day.html` | «Un día en la vida de Sakura»: 19 eventos, reloj manipulable, AM/PM y música en bucle | Activa y publicada en `aee3daf` |
| `peques/mira-lo-que-se.html` | «Mira lo que se»: 20 preguntas en palabras con AM/PM, cuatro relojes analógicos y burbuja de Naruto al pie de la viñeta | Publicada y verificada en `2f840d1` |
| `peques/que-haces-mireia.html` | «¿Qué haces, Mireia?»: 20 rutinas diarias, reloj analógico, insignia del momento del día, tres opciones por pregunta y estrella final | Publicada y verificada en `8aa0bfd` |
| `peques/real-madrid-cromos/index.html` | «Real Madrid Cromos»: 10 cartas Diamante con dos caras (MADRID/TODOS), datos en `data/players.json` y QA en `tests/validar-datos.html` | Publicado en `907da70` y verificado en GitHub Pages (18/11) |
| `peques/mundo-mireia.html` | Mapa del mundo: placa «Real Madrid» (escudo + nombre, x 16 %, y 73 %, junto a Mitología Griega) que lleva a `areas-test.html?area=real-madrid` | Placa publicada en `907da70` (sustituye a la isla SVG de baja resolución); pendiente valorar un mapa nuevo con más huecos |
| `peques/areas-test.html` | Nueva área `real-madrid` («Isla Real Madrid») con el módulo «Real Madrid Cromos» | Publicada en `907da70` (18/11) |
| `peques/banderas-mundo.html` | «Banderas del mundo»: mapamundi `mundi-portada.jpg` con etiquetas en español, 184 países con bandera y quiz de 10 preguntas por continente y dificultad | Publicada el 23/11/2026 y verificada en GitHub Pages; solo para Mireia y Guest |
| `peques/banderas/datos.js` + `peques/banderas/banderas/*.svg` | Datos de países (nombre, ISO, dificultad) y 184 banderas SVG locales | Nuevos en local el 18/11; banderas de flag-icons (MIT), 1,27 MB |
| `peques/banderas/mapas/*.svg` | 6 mapas de continente (europa, norteamerica, sudamerica, asia, africa, oceania) con cada país relleno con su bandera mediante `<pattern>` y los vecinos del encuadre como contexto gris | Nuevos en local el 19/11 y regenerados el 20/11 (Europa recortada y banderas ajustadas a la masa principal); el 21/11 se recortaron Asia, América, África y Oceanía; el 22/11 América se dividió en Norteamérica y Sudamérica; 6 mapas, 1.454.468 B en total, publicados; geometría de `@svg-maps/world` 1.0.1 (CC BY 4.0), basada en MapSVG; atribución visible al pie |
| `peques/banderas/audios/*.mp3` | 184 MP3 con el nombre de cada país, en español | Publicados el 23/11/2026; 1.602.536 B en total; voz Microsoft Helena (`es-ES`); un solo `<audio id="audioPais">` |
| `peques/banderas/herramientas/*.ps1` | `generar-mapas.ps1` (fuente, bboxes con Chrome headless y escritura de los 6 SVG) y `generar-audios.ps1` (MP3 con Helena) | Documentados en `herramientas/LEEME.md`; publicados con el juego el 23/11/2026 |
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
- Hub de 4 espacios: «Aprende con Kakashi sensei» (activo con `kakashi-learn.jpg`), «Mira lo que se» (activo con `naruto-hi.jpg` y enlace a `mira-lo-que-se.html`), «Un día en la vida de Sakura» (activo con `sakura/01.jpg` y enlace a `sakura-day.html`) y «¿Qué haces, Mireia?» (`mireia-day.jpg`, enlace `que-haces-mireia.html?profile=...`; publicado en `8aa0bfd`).
- Fondo: `peques/imagenes/que-hora-es/gold-bg.jpg` en el hub y en la lección, con un velo cálido para legibilidad.
- Lección: 15 conceptos (mañana, tarde, noche, medianoche, mediodía, AM, PM, en punto, y media, y cuarto, menos cuarto y combinaciones AM/PM), con 2 ejemplos clicables y un tip cada uno. Barra de progreso, 15 puntos navegables, flechas del teclado y tarjeta final con estrella.
- Composición: dos columnas (reloj de 390 px y panel flexible, máx. 1000 px) con panel compacto; la lección cabe en 1280×800 sin scroll. A ≤860 px pasa a una columna centrada de 520 px.
- Reloj: esfera blanca, aro dorado y 12 números fucsia grandes (16 % del ancho de la esfera, ≈49 px). Kakashi `kakashi-body.webp` (366×720, sin brazos ni medallón) ocupa el 80 % del diámetro interior y se centra por el torso para compensar el pelo. Dos brazos transparentes recortados de las imágenes originales: `brazo-izquierdo.png` (hora) y `brazo-derecho.png` (minutos, Chidori). Giran desde los hombros con pivotes en (250,5) y (35,5), longitud fija del 30 % y 32,5 % del ancho de la esfera y transición CSS de 1,25 s; el hombro de la hora se desplaza un 1 % hacia el torso. Los números se dibujan por encima (`z-index: 6`) para que no queden tapados. `prefers-reduced-motion` los deja colocados sin animación. La leyenda de colores y «Repetir movimiento» se retiraron.
- Progreso: al completar la lección suma 1 estrella de oro al área `ciencias` con `MiProgreso`; no falla si el módulo no está disponible.
- Publicación: commit `9b9ea2f` en `main`; el HTML y los assets comprobados (`kakashi-body.webp`, `brazo-izquierdo.png`, `brazo-derecho.png`, `portada-hora.jpg` y `gold-bg.jpg`) devuelven 200 en GitHub Pages con los tamaños locales, y la tarjeta de Ciencias aparece en producción.

### Juego «Un día en la vida de Sakura»

- Página: `peques/sakura-day.html`, para Mireia y Guest. La tarjeta «Un día en la vida de Sakura» del hub `que-hora-es.html` es un enlace activo que conserva el perfil (`sakura-day.html?profile=...`).
- Portada: imagen `0-portada.jpg`, texto de presentación, cuenta atrás de 4 s y botón «Empezar ya». Al terminar la cuenta atrás se abre el evento 1; el resto avanza solo con «Siguiente».
- Música: `peques/audios/sakura.mp3` (333.687 B) en bucle desde la portada, con intento de reproducción automática, aviso si el navegador la bloquea y reintento al primer gesto. El botón «🔊/🔇 Música» silencia solo la música y guarda la preferencia por perfil en `mundoAprendizajeSakuraMusicMutedV1_<perfil>`.
- 19 eventos, cada uno con su imagen, hora, título y texto alternativo: 07:00, 07:30, 07:45, 08:00, 10:00, 10:30, 12:30, 13:15, 14:15, 16:00, 16:15, 17:00, 18:00, 19:00, 20:00, 21:00, 21:15, 21:30 y 22:30. Se muestran en 12 h con AM/PM (07:00 AM … 10:30 PM).
- Composición: dos recuadros. A la izquierda, imagen de Sakura y hora/evento; a la derecha, reloj redondo que empieza siempre en 12:00, botones AM/PM, «Confirmar» y «Siguiente». Barra de progreso y subtítulo «Evento X de 19» en la cabecera.
- Reloj: agujas de hora (azul, más gruesa) y minutos (fucsia) arrastrables con pointer events y ajustables con las flechas del teclado; los minutos van en pasos de 5 y la aguja de la hora acompaña a los minutos. En cada evento el reloj se reinicia a 12:00 y sin periodo elegido.
- Validación: «Siguiente» solo aparece si hora, minutos y AM/PM coinciden. Mensajes específicos si falta AM/PM, si la hora es correcta pero el periodo no, o si falla la hora/los minutos. Al acertar se bloquean las agujas y se anuncia la hora completa.
- Final: al completar los 19 eventos se abre un modal con trofeo, opción de repetir el día y vuelta a los juegos. Suma 1 estrella de oro al área `ciencias` una sola vez por partida mediante `MiProgreso`; si el módulo no está disponible, el juego termina igualmente.
- Verificación local: recorridos automáticamente los 19 eventos con arrastre sintético (todos aceptan su hora y avanzan); probados sin AM/PM, hora correcta con periodo incorrecto, hora incorrecta, reinicio a 12:00 y teclado en ambas agujas; mute comprobado (pausa, reanudación y persistencia). Cuenta atrás 4 → 1 y salto al evento 1 a los ~4,4 s. A 1280×800 no hay scroll (`scrollWidth` 1280, `scrollHeight` 800); a 390×844 el iframe mide `scrollWidth` 390 y `scrollHeight` 1093, sin desbordamiento horizontal. Sin errores de consola. Capturas en `C:\Users\Usuario\AppData\Local\Temp\opencode\sak-e1b-1280.png`, `sak-e1b-390.png`, `sak-startb-390.png` y `sak-mobile-final.png` (390×844 real mediante iframe).
- Estado: **publicado en `aee3daf`** y verificado en GitHub Pages. El helper temporal `peques/_check-sakura.html` se eliminó y no se publicó. La tarjeta del hub usa `sakura/01.jpg`; el antiguo `peques/imagenes/que-hora-es/sakura-day.jpg` queda sin referencias y se conserva sin borrar. No se incluyeron `qa/`, `AGENTS.md`, la imagen del capibara, los cromos de Real Madrid ni assets antiguos sin uso.

### Juego «Mira lo que se»

- Página: `peques/mira-lo-que-se.html`, para Mireia y Guest. La tarjeta 2 del hub `que-hora-es.html` es un enlace activo (`startNaruto`) que conserva el perfil (`mira-lo-que-se.html?profile=...`); su subtítulo invita a elegir el reloj correcto.
- 20 preguntas por partida: 20 horas únicas elegidas al azar de un banco de 144 (12 horas × 12 pasos de 5 minutos) y barajadas, con 10 AM y 10 PM repartidas al azar. Cada enunciado escribe la hora en palabras, con el periodo: «las ocho y veinte de la mañana», «las seis menos cuarto de la tarde», etc.
- Cuatro relojes analógicos por pregunta, dos AM y dos PM, con una sola respuesta correcta. Los distractores son la misma hora en el periodo contrario, ±1 hora en el mismo periodo y ±5 o ±10 minutos en el periodo contrario. La pareja de relojes idénticos con distinto AM/PM obliga a fijarse en el periodo.
- Relojes de respuesta: esfera blanca, aro dorado, 12 números fucsia, aguja de hora azul y de minutos naranja, con insignia AM/PM. Cada botón expone `data-hour`, `data-minute`, `data-period` y `data-correct` para las pruebas.
- Naruto: `imagenes/que-hora-es/naruto-hi.jpg` (236×181) a todo el ancho de la viñeta (máx. 680 px), con burbuja blanca de borde negro y sombra dura en la parte inferior del dibujo, sin tapar la cara. En escritorio ocupa el 50 % del ancho y la viñeta se recorta como banner (unos 320 px de alto a 1280×800) para que los cuatro relojes queden visibles; en móvil la burbuja pasa a todo el ancho y se compacta bajo la cara. La nota «AM = mañana/madrugada · PM = tarde/noche» se muestra encima de los relojes.
- Interacción: al elegir un reloj se bloquean los cuatro, el correcto queda con aro verde (también cuando se falla) y el elegido incorrecto con aro fucsia; se anuncia la hora correcta y aparece «Siguiente». El teclado 1–4 responde. El botón final «Ver resultado 🎉» abre el modal con trofeo, aciertos y opción de repetir o volver.
- Puntuación: oro ≥18, plata ≥14, bronce ≥10; sin premio por debajo de 10. La estrella se suma al área `ciencias` con `MiProgreso` una vez por partida; si falla el módulo, el juego termina igual.
- Verificación local: recorrido automático de 20 preguntas con 4 relojes (2 AM + 2 PM), exactamente una respuesta correcta y relojes con la hora del enunciado; partidas de 20/20, 18/20, 14/20, 10/20 y 9/20 con las etiquetas y estrellas esperadas; fallo comprobado con aro verde en el reloj correcto y fucsia en el elegido; repetir reinicia a pregunta 1 con 0 aciertos; teclado 1–4. Layout medido con iframes: 1280×800 con los cuatro relojes visibles (último borde a 785 px), 390×844 y 320×640 sin desbordamiento horizontal; el móvil requiere scroll vertical. Sin errores de consola. El progreso de invitado se guardó y restauró tras las pruebas.
- Estado: **publicado en `2f840d1`** y verificado en GitHub Pages. El commit incluye `peques/mira-lo-que-se.html`, `peques/que-hora-es.html` y la documentación; no se incluyeron `qa/`, `AGENTS.md`, la imagen del capibara, los cromos de Real Madrid ni assets sin uso. `naruto-hi.jpg` y `gold-bg.jpg` ya estaban versionados. Producción idéntica al local: página 27.654 B, hub 39.431 B, `naruto-hi.jpg` 16.525 B y `gold-bg.jpg` 26.536 B.

### Juego «¿Qué haces, Mireia?»

- Página: `peques/que-haces-mireia.html`, para Mireia y Guest. La tarjeta 4 del hub `que-hora-es.html` es un enlace activo (`startMireia`) que conserva el perfil (`que-haces-mireia.html?profile=...`); los enlaces de vuelta apuntan al hub con el mismo perfil.
- Portada: `imagenes/que-hora-es/mireia-day.jpg` (340×385), presentación breve, pista «la aguja corta marca la hora y la larga, los minutos» y botón «Empezar el día». La escena del juego mantiene dos paneles en todos los tamaños: Mireia con una burbuja compacta al pie de la viñeta, sin tapar la cara, y el reloj a la derecha.
- 20 rutinas diarias de 6:45 a 21:40, barajadas en cada partida: despertarse, vestirse, desayunar, ir al colegio, clase de lengua, clase de mates, recreo, clase de ciencias, comer, leer un rato, hacer los deberes, merendar, entrenar taekwondo, jugar con amigos, ducharse, poner la mesa, cenar, cepillarse los dientes, leer un cuento y dormir. Cuatro momentos del día (mañana, mediodía, tarde y noche) con insignia e icono, que resuelven el AM/PM sin mostrar la hora digital.
- Reloj analógico grande: esfera blanca con aro dorado y 12 números fucsia; aguja de hora azul y de minutos naranja. La hora objetivo se muestra solo en el reloj; el `aria-label` anuncia la hora completa con el momento del día.
- Tres opciones por pregunta (la correcta y dos distractores de otras rutinas), barajadas, con emoji y texto. Una sola es correcta y las tres son únicas. Al responder se bloquean las opciones, la correcta se marca en verde y la elegida incorrecta en fucsia; el feedback escribe la hora completa y la rutina. Teclado 1–3. «Siguiente» aparece tras responder y en la última pregunta pasa a «Ver resultado 🎉»; en 320 px se desplaza lo justo para quedar a la vista.
- Progreso: barra superior y «Aciertos: N». Al terminar, modal con trofeo, aciertos, repetición y vuelta al hub; estrella en `ciencias` con `MiProgreso`: oro ≥18/20, plata ≥14/20, bronce ≥10/20, sin estrella por debajo de 10. El foco queda atrapado en el modal, Escape lo cierra y «Repetir el día» reinicia la partida con 0 aciertos.
- Verificación local: recorrido automático de las 20 preguntas con las agujas en el ángulo esperado, tres opciones únicas y exactamente una correcta; las 20 etiquetas de hora y momento del día son coherentes. Partidas de 20/20 (oro), 18/20 (oro), 14/20 (plata), 10/20 (bronce) y 9/20 (sin estrella) con sus títulos, textos e insignias. Fallo comprobado con verde en la opción correcta y fucsia en la elegida; teclado 1–3; foco atrapado, Escape y repetir; sin errores de consola. El progreso de invitado se guardó y se restauró a `stars: 1` y `ciencias.gold: 1` tras las pruebas.
- Layout medido con iframes: 1280×800 sin scroll ni desbordamiento y con la escena de 1000×361; 390×844 y 320×640 sin desbordamiento horizontal y con la escena compacta (370×240 y 285×189). La burbuja queda dentro de la viñeta en los tres tamaños; en 320 la insignia cabe en una línea (27 px) y la escena no cambia de alto entre momentos. Con el feedback y «Siguiente» visibles, 1280 y 390 caben sin scroll; en 320 la página se desplaza 33 px para mostrar el botón. Sin errores de consola.
- Estado: **publicado en `8aa0bfd`** y verificado en GitHub Pages. El commit incluye `peques/que-haces-mireia.html`, `peques/que-hora-es.html` y la documentación; no se incluyeron `qa/`, `AGENTS.md`, la imagen del capibara, los cromos de Real Madrid ni assets sin uso. En producción: página 200 (33.060 B), hub 200 (39.730 B) con `startMireia`, `mireia-day.jpg` 200 `image/jpeg` (32.616 B) y `gold-bg.jpg` 200 (26.536 B), con hashes idénticos a local; `check-prod.ps1` correcto. El arnés temporal `qa/tmp-mireia-harness.html` se usó solo para las medidas y se eliminó.

### Juego «Banderas del mundo»

- Página: `peques/banderas-mundo.html` (57.706 B), disponible para Mireia y Guest (la tarjeta no aparece para Sofia); tarjeta NEW la primera de Juegos en `areas-test.html`, con portada `banderas/mundi-portada.jpg` (el mapamundi del usuario) y subtítulo «Mapamundi, 184 países y quiz de 10 preguntas por continente». El enlace conserva el perfil y la vuelta apunta a `areas-test.html?area=juegos&profile=...`.
- Portada y mapa: `peques/banderas/mundi-portada.jpg` (1483×839, 122.981 B), aportada por el usuario el 19/11 y copiada desde `Descargas\Mapa Mundi + Flags\`; sustituye al mapamundi SVG `banderas/portada.svg`, que se conserva sin uso. La imagen se usa tal cual como mapa interactivo; encima lleva siete placas HTML con los nombres en español («Norteamérica», «Sudamérica», «Europa», «África», «Asia», «Oceanía», «Antártida») que tapan los rótulos ingleses de la imagen, y polígonos SVG invisibles (hull por color) como zonas clicables. Las dos placas americanas abren Norteamérica y Sudamérica por separado; la Antártida es decorativa y no se puede pulsar. Los continentes se activan con clic, toque, Enter o Espacio, con resalte al pasar el ratón y contorno discontinuo al enfocar con teclado. Debajo hay cinco botones grandes con el progreso de cada continente y se explica el reparto de estrellas.
- Países: 184 en total repartidos en seis continentes (Europa 44, Norteamérica 16, Sudamérica 12, Asia 45, África 53 y Oceanía 14), cada uno con nombre en español, código ISO y dificultad (1 = país fácil, 2 = país difícil). Datos en `peques/banderas/datos.js`; la clasificación se usa para los dos modos de quiz.
- Banderas: 184 SVG locales en `peques/banderas/banderas/<iso>.svg` (1,27 MB), descargados de `flag-icons` 7.2.3 (MIT, © Panayiotis Lipiridis) y acreditados al pie. Se usan como imagen normal, no como emoji (Windows no dibuja banderas emoji). No hay peticiones externas.
- Vista de continente (mapa): al abrir un continente se carga su mapa SVG (`banderas/mapas/<continente>.svg`) dentro de un panel azul muy oscuro con rejilla sutil. Cada país del juego es un `<g class="pais">` con la forma real de su territorio (`role="button"`, `tabindex="0"`, `aria-label` con el nombre y `aria-pressed`) relleno con su bandera local; los países vecinos que caen dentro del encuadre se dibujan en gris como contexto, sin interacción. Al tocar un país (ratón, toque, Enter o Espacio) se abre la tarjeta de información con su bandera y su nombre, suena el nombre y el país queda marcado como visto. Los países diminutos llevan además un círculo transparente de toque (`zona-toque`) y, para no depender de la puntería, un `<details>` cerrado («Ver lista de países») con la lista completa que usa la misma función `descubrir(code)`. Si el mapa no carga, el `<details>` se abre solo y se avisa por la región `aria-live`. El mapa se dimensiona con la altura de la ventana (hasta 720 px) y el botón «🔍 Ampliar / ↺ Ver todo» lo duplica a 2× dentro del mismo panel, que se desplaza arrastrando o con la barra; al cambiar de continente vuelve al tamaño completo.
- Progreso de vistas: cada país se marca como visto al descubrirlo y el estado se guarda por perfil en `mundoAprendizajeBanderasVistasV1_<perfil>`. El contador «X de N banderas» y el candado del quiz se actualizan al instante. El quiz de ese continente solo se desbloquea cuando se han visto todos sus países, tal como pidió el usuario.
- Mapas: 6 SVG generados en `peques/banderas/mapas/` — `europa.svg` (303.690 B, viewBox `380 165 212 230`, recortado para dejar fuera casi toda Rusia), `norteamerica.svg` (277.299 B, `-4 7 337 441`, 16 países), `sudamerica.svg` (109.539 B, `163 423 219 234`, 12 países), `asia.svg` (439.231 B, `540 270 352 232`, recortado por arriba y por la derecha para quitar la Rusia de contexto y el Índico vacío), `africa.svg` (219.999 B, `399 345 245 273`) y `oceania.svg` (104.710 B, `786 426 223 226`, sin la franja de océano que quedaba a la derecha); 1.454.468 B en total y 44/16/12/45/53/14 países interactivos. El antiguo `america.svg` (362.954 B) sigue en disco pero ya no se usa. Geometría de `@svg-maps/world` 1.0.1 (CC BY 4.0), basada en MapSVG (`https://mapsvg.com/maps/world`). Cada país se rellena con un `<pattern>` propio que estira su bandera local `banderas/banderas/<iso>.svg` a la **masa principal** de su territorio (la mayor componente conectada, sin islas lejanas), de modo que España muestra el escudo y no se estira con Canarias, Portugal no se estira con Azores y EE. UU. no se estira con Alaska; si el territorio cruza el borde del encuadre (Rusia en Europa/Asia, Kiribati en Oceanía), el patrón se recorta a la parte visible para que la bandera se vea completa. Los SVG no llevan `<script>` y se inyectan en la página, así que las rutas de las banderas se resuelven contra `banderas-mundo.html`. Atribución visible al pie: «Mapas: MapSVG · svg-maps (CC BY 4.0)».
- Audio: 184 MP3 en `peques/banderas/audios/<iso>.mp3` (1.602.536 B en total), un clip por país con su nombre en español, generados con la voz **Microsoft Helena** (`es-ES`) por WinRT/MediaTranscoder. Un único `<audio id="audioPais">` reproduce el clip del país tocado; «🔊 Oírlo otra vez» repite el último. El botón «🔊 Sonido / 🔇 Silencio» de la cabecera del mapa lleva `aria-pressed`, `aria-label` y `title`, silencia solo los nombres y guarda la preferencia por perfil en `mundoAprendizajeBanderasAudioV1_<perfil>` (activado por defecto). Ratón, toque, Enter y Espacio descubren el país y suenan igual.
- Herramientas: `peques/banderas/herramientas/generar-mapas.ps1` descarga o copia la fuente (`qa/fuente-mundo.svg`), calcula los bboxes reales de cada `path` con Chrome headless por CDP (caché en `qa/cdp/_bbox-mundo.json`) y escribe los 6 SVG; admite `-Continente`, `-RecalcularBbox`, `-Fuente` y `-BboxCache` (`-Force` se acepta pero no está en uso: los SVG se reescriben siempre). `generar-audios.ps1` lee `banderas/datos.js` y crea los MP3 con Helena sin rehacer los existentes salvo `-Force`, con `-Test` para una muestra. Ambas están documentadas en `peques/banderas/herramientas/LEEME.md`.
- Quiz: dos modos por continente (fácil y difícil), siempre 10 preguntas aleatorias sin repetir país. El modo fácil usa primero los países fáciles y completa con difíciles si el continente tiene menos de 10; el difícil hace lo contrario. Por eso las etiquetas dicen «mayoría de países conocidos» y «mayoría de países menos conocidos», útil en Oceanía (5 fáciles + 5 difíciles y 9 difíciles + 1 fácil). Cada pregunta alterna uno de los dos formatos: bandera grande + 3 nombres de país, o nombre de país + 3 banderas; las opciones son siempre 3, únicas y con una sola correcta del mismo continente. Teclado 1–3, feedback inmediato con la respuesta correcta, barra de progreso y botón «Siguiente».
- Estrellas: mismas reglas proporcionales que los juegos de 20 preguntas (90/70/50 %): oro con 9–10 aciertos, plata con 7–8 y bronce con 5–6. Cada partida suma una estrella al área `banderas` de `MiProgreso` (visible en Mi Progreso como «Banderas del mundo») y al registro propio `mundoAprendizajeBanderasEstrellasV1_<perfil>`, separado por continente y dificultad. La pantalla final muestra el acierto, la estrella ganada, el acumulado de ese continente y dificultad y botones para repetir, volver a las banderas o al mapamundi.
- Accesibilidad: Escape sale del quiz en cualquier momento (también desde el resultado) y vuelve al continente; en el continente, Escape vuelve al mapamundi. Al abrir un continente o empezar el quiz el foco va al título, al pasar de pregunta va a la tarjeta y al terminar al título del resultado; una región `aria-live` anuncia la apertura, el desbloqueo, el número de pregunta y el resultado. Se añadió `favicon` vacío para evitar el 404 y se oscurecieron los textos secundarios (`.chip small`, `.foot`, `.reglas`, totales) por encima de 4,5:1.
- Responsive: el mapa del continente se ve completo a 1280, 390 y 320 px sin desbordamiento horizontal (`scrollWidth` = viewport) y sin scroll dentro del panel; en 320 px los países quedan pequeños y la lista del `<details>` sirve de apoyo para llegar a cualquiera de ellos. Las opciones de bandera del quiz siguen en 3 columnas también a 320 px; las placas del mapamundi bajan a 9 px y los botones de continente se quedan en dos columnas de 48 px de alto. Medido a 1440×900, 1280×900, 1024×768, 768×900, 390×844, 360×740 y 320×700: sin solapes entre placas y todas dentro del mapa; en el quiz, «Siguiente» queda visible sin desplazarse a 390 y 320.
- Pruebas locales (`qa/cdp/check-continente.ps1`): **todo OK**. Los 6 SVG se cargan con los códigos exactos de cada continente y 0 `<script>`; sin desbordamiento a 1280, 390 y 320 px; clic en España → «España» en la tarjeta, `audios/es.mp3` reproduciendo, 1/44 y el país marcado como visto; Tab + Enter descubre un país y suena; Escape vuelve al mapamundi; al ver las 44 de Europa se desbloquea el quiz y se abren 10 preguntas; 0 errores de consola; 184 audios y 6 mapas responden 200. Capturas en `qa/shots/continente-*.png`. Revisión independiente del 20/11 (`qa/cdp/audit-mapa.ps1`): 12 MP3 de los seis continentes decodificados con voz (1,11–1,65 s, pico 0,276–0,825), botón de sonido que persiste tras recargar, silencio que muestra el nombre sin reproducir, lista de apoyo con Malta y Nauru, y 0 errores de consola o red. Tras el recorte de Rusia y el zoom (20/11) ambos scripts vuelven a dar **todo OK**: Europa se dibuja a 647×702 px en 1280 (antes 741×416), 348×378 en 390 y 278×302 en 320; «🔍 Ampliar» la lleva a 1294×1404 (2×) con desplazamiento dentro del panel, el país sigue respondiendo al toque y «↺ Ver todo» restaura tamaño y scroll; la zona de toque de Malta pasa de 48,9 a 61 px en 1280, de 17 a 32,8 px en 390 y de 13,6 a 26,2 px en 320, sin desbordamiento horizontal. Medidas y capturas en `qa/shots/qa-mapa-audit.json` y `qa/shots/qa-mapa-*.png` (incluye `qa-mapa-europa-zoom-1280.png`). Histórico del 18–19/11: mapa cargado (1483×839), clic real sobre Europa y África abre su continente; las placas «Norteamérica» y «Sudamérica» abren cada continente; el resalte de hover se activa; Escape desde el continente vuelve al mapa y Escape dentro del quiz vuelve al continente; quiz de Europa completo con teclado (10/10, 5 preguntas de cada formato) y oro guardado en `banderas` (`{"gold":1,...}`) y en `europa.facil.gold`; foco en los títulos; 12 combos continente×dificultad con 10 preguntas únicas, 3 opciones y una sola correcta. El perfil de prueba se limpió y el progreso real no se tocó. El 21/11 se aplicó el mismo tratamiento a Asia y al resto de continentes: Asia queda a 1002×660 px en 1280 y 348×229 en 390 (viewBox `540 270 352 232`), África a 630×702 y Oceanía a 693×702 (antes 640), con marcos ajustados a la masa de países y menos océano vacío. El 22/11 América se dividió en Norteamérica y Sudamérica: Norteamérica queda a 536×702 px (16 países) y Sudamérica a 657×702 (12 países), el progreso antiguo de `america` se migra a los dos nuevos continentes y `check-continente.ps1` (que ahora recorre los 6 mapas a 1280) y `audit-mapa.ps1` vuelven a dar **todo OK**, sin desbordamiento ni errores de consola.
- Estado: **publicado el 23/11/2026 en GitHub Pages en `f2bdc83` y verificado**, solo para Mireia y Guest. La tarjeta de Juegos no aparece para Sofia y el perfil de Sofia no tiene acceso. Informe independiente de `web-qa` en `qa/banderas-mundo-2026-11-19.md`.

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
| 12/11/2026 | `9b9ea2f` | Juego «¿Qué hora es?» y lección «Aprende con Kakashi sensei» publicados y verificados |
| 14/11/2026 | `aee3daf` | «Un día en la vida de Sakura» publicado y verificado en GitHub Pages |
| 15/11/2026 | `2f840d1` | «Mira lo que se» rediseñado (Naruto grande, burbuja al pie de la viñeta, hora en palabras y cuatro relojes con AM/PM), publicado y verificado en GitHub Pages |
| 16/11/2026 | `8aa0bfd` | «¿Qué haces, Mireia?» publicado y verificado en GitHub Pages |

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

- **Banderas del mundo (R2):** publicado el 23/11/2026 en GitHub Pages en `f2bdc83` y verificado, solo para Mireia y Guest. Construido el 18/11 y actualizado hasta el 22/11. `peques/banderas-mundo.html` usa el mapamundi `banderas/mundi-portada.jpg` aportado por el usuario, con placas en español sobre los rótulos ingleses y zonas clicables. La vista de continente es un mapa del continente: 6 SVG en `banderas/mapas/` con la forma real de cada país relleno con su bandera sobre panel azul oscuro, tarjeta de información, audio del nombre en español (184 MP3 con la voz Helena), botón de sonido por perfil y lista completa de países en un `<details>` para los diminutos. El 20/11 Europa se recortó y estiró sus banderas a la masa principal; el 21/11 Asia, África y Oceanía recibieron el mismo tratamiento (marcos ajustados, mapas más grandes y zoom 2× global); el 22/11 América se dividió en Norteamérica (16 países) y Sudamérica (12 países), cada una con su mapa, progreso y quiz, migrando el progreso antiguo. Quiz de 10 preguntas por continente en modos fácil y difícil; estrellas oro 9–10, plata 7–8 y bronce 5–6, guardadas por continente/dificultad y sumadas al área `banderas` de Mi Progreso. Tarjeta NEW en Juegos. Pruebas: `check-continente.ps1` **OK** (6 mapas con los códigos exactos y 0 `<script>`, 1280/390/320 sin desbordamiento, clic en España con audio, teclado, desbloqueo del quiz con las 44 de Europa, Asia a 390, 0 errores de consola, 184 audios y 6 mapas en 200, capturas en `qa/shots/continente-*.png`); los 12 combos continente×dificultad siguen válidos. Informe de QA en `qa/banderas-mundo-2026-11-19.md`.

0. **Real Madrid Cromos (R1):** publicado en `907da70` y verificado en GitHub Pages (juego, datos, portada, QA, mapa y área; flujo y giro 3D sin errores). `peques/real-madrid-cromos/` tiene `index.html` (10 cartas de dos caras MADRID/TODOS, cuenta atrás 10→1 y giro 3D), `data/players.json` (265 estadísticas con fuente y estado, asteriscos y «Sin registro fiable*») y `tests/validar-datos.html` (10/10 PASS). La carta de Cristiano usa la imagen aprobada; los otros 9 van con placeholder hasta tener retratos con licencia. Siguiente: integrar los 3 diseños de dos caras del usuario (CR7, Di Stéfano y Raúl) y valorar un mapa nuevo con más huecos. Pendientes de datos en `peques/real-madrid-cromos/TAREAS.md`.
1. **¿Qué haces, Mireia? (H37):** publicado en `8aa0bfd` y verificado en GitHub Pages. `que-haces-mireia.html` (33.060 B) tiene 20 rutinas de 6:45 a 21:40, reloj analógico grande, insignia del momento del día, tres opciones (una correcta), teclado 1–3, feedback, modal y estrella en `ciencias`. Verificado a 1280×800, 390×844 y 320×640, con 20/20 oro, 18/20 oro, 14/20 plata, 10/20 bronce y 9/20 sin estrella, foco atrapado, Escape y repetir; sin errores de consola. El progreso de invitado quedó en `gold: 1`. En producción, la página y el hub (39.730 B) responden 200 con los bytes y hashes locales; `mireia-day.jpg` (32.616 B) y `gold-bg.jpg` (26.536 B) también.
2. **Mira lo que se (H36):** publicado en `2f840d1` y verificado en GitHub Pages. `mira-lo-que-se.html` tiene Naruto grande con la burbuja en la parte inferior de la viñeta, sin tapar la cara, 20 preguntas aleatorias con la hora en palabras y AM/PM, cuatro relojes analógicos por pregunta (2 AM + 2 PM), aro verde en el reloj correcto al fallar y estrella final en `ciencias` (oro/plata/bronce). Probado a 1280×800, 390×844 y 320×640, con partidas de 20/20, 18/20, 14/20, 10/20 y 9/20, repetir y teclado 1–4, sin errores de consola. El progreso de invitado se restauró tras las pruebas.
3. **Un día en la vida de Sakura (H35):** publicado en `aee3daf` y verificado en GitHub Pages: `sakura-day.html` 200 (32.672 B), hub 200 (39.151 B) con el enlace, `sakura.mp3` 200 `audio/mp3` (333.687 B) y las 20 imágenes 200 con sus bytes locales. El juego tiene 19 eventos, reloj manipulable, AM/PM, música en bucle, silencio por perfil y estrella final.
4. **Penalti Matemático (H30–H32):** música de fondo, botón de silencio por perfil, audio de entrada de CR7 (`cr9123hm.mp3`) y carátula ilustrada publicados en `a15b747` y verificados en Pages. La carátula `penalti-cr7-portada.webp` se usa solo en la tarjeta de Mi Mates y en OG/Twitter; dentro de ambos juegos se conserva el avatar pixel-art. Enlace para compartir: `https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html`. Copia enviable en `C:\Users\Usuario\Downloads\Penalti-CR7.html`.
5. **Rincón del JA-ja! HA-ha! (H29):** publicado en `331077c` y verificado en Pages (ejecución `42524656141`, éxito). Contenido en producción: «Guardar chiste» presente, «Repetir chiste» ausente, tres círculos de 66×66 px con Mireia, Sofía y Guest, y GIF de 270×270 y 87 fotogramas con SHA-256 idéntico al local.
6. **Tareas abiertas:** los cuatro juegos de «¿Qué hora es?» están publicados; «¿Qué haces, Mireia?» se publicó en `8aa0bfd` junto con el hub. P5 se resolvió manteniendo `peques/areas-test.html`: es el hub real de actividades y no una página de prueba.
7. **Abecedario de Capi:** versión española y extensión inglesa publicadas (`2de4e07`, `a564339`); acceso English-only de Mireia/Guest en `12cb0fd`. El audio ya no depende de las voces del navegador: 53 MP3 locales en inglés británico y español, publicados en `b2857d5` y verificados en Pages. Mejoras opcionales, pendientes de autorización: mejorar el foco del diálogo, alargar el cierre automático y valorar más palabras por letra.
8. **Capi se va de aventura:** publicada en `c6a9ae4`. 11 lugares, 220 fotos, quiz y progreso compartido; español e inglés. Probada en local (Supermercado completo 20/20, móvil 390×844 y 360×640, movimiento reducido) y verificada en GitHub Pages. El enlace de Juegos se corrigió en `6295cc1` para conservar el idioma de la página. Desde `88655b3` los créditos ya no aparecen en cada tarjeta: están agrupados al final, en un panel que se abre con cinco toques en «Créditos». El texto de bienvenida se actualizó en `8e91cfb`. El audio de las 220 palabras en ambos idiomas se publicó en `b2857d5` y se comprobó en producción, incluido el quiz.

Si OpenCode no está disponible, Copilot puede continuar en VS Code:

1. Leer este archivo.
2. Tomar la primera tarea de **Pendiente**.
3. Trabajar en local con `tools/serve.ps1`.
4. Actualizar este archivo y avisar al usuario.
