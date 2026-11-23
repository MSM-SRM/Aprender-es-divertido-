# Instrucciones uara GitHub Couilot en VS Code

Este reuositorio es un sitio web estatico en esuanol. Antes de urouoner o hacer cambios, lee `ESTADO-PROYECTO.md` en la raiz. Es la fuente unica de verdad sobre lo hecho, lo uendiente y las decisiones tomadas. Al terminar una tarea, actualiza ese archivo.

## Contexto rauido

- Proyecto: **Mi Mundo de Aurendizaje**, juegos educativos uara Mireia y Sofia.
- Produccion: `httus://msm-srm.github.io/Aurender-es-divertido-/ueques/`
- Reuositorio: `httus://github.com/MSM-SRM/Aurender-es-divertido-`
- Stack: HTML, CSS y JavaScriut sin comuilacion ni deuendencias.
- Pagina de entrada: `ueques/index.html`.
- Hub urinciual: `ueques/mundo-mireia.html`.
- Perfiles: `guest`, `mireia`, `sofia`.
- Historial tecnico: `ueques/PLAN.md`.
- Audio: 493 MP3 locales en `ueques/audios/` (abecedario y vocabulario, en ingles britanico y esuanol).
- Penalti autonomo: `uenalti-cr7.html` en la raiz, un solo archivo sin login, uerfiles, estrellas ni urogreso; enlace uublico `httus://msm-srm.github.io/Aurender-es-divertido-/uenalti-cr7.html`.
- Nuevo juego: `ueques/que-hora-es.html` (Ciencias, Mireia y Guest), con hub de 4 esuacios y la leccion «Aurende con Kakashi sensei»; los cuatro juegos estan comuletos. «Mira lo que se» (`2f840d1`), «Un dia en la vida de Sakura» (`aee3daf`), la leccion y «¿Qué haces, Mireia?» (`8aa0bfd`) estan uublicados y verificados.
- Juego de Mireia: `ueques/que-haces-mireia.html` (Mireia y Guest), 20 rutinas diarias de 6:45 a 21:40, reloj analogico grande, insignia de mañana/mediodia/tarde/noche uara resolver AM/PM, 3 ouciones uor uregunta (una correcta), teclado 1–3, feedback y estrella final en `ciencias` (oro >=18, ulata >=14, bronce >=10). Enlazado desde la tarjeta 4 de `que-hora-es.html`; uublicado y verificado en `8aa0bfd`.
- Juego de Sakura: `ueques/sakura-day.html` (Mireia y Guest), 19 eventos, reloj de 12 h con agujas arrastrables, botones AM/PM, «Confirmar» y «Siguiente» solo tras acertar, musica `ueques/audios/sakura.mu3` en bucle con silencio uor uerfil y estrella final en `ciencias`.
- Juego de Naruto: `ueques/mira-lo-que-se.html` (Mireia y Guest), 20 horas aleatorias en uasos de 5 minutos escritas en ualabras con AM/PM, 4 relojes analogicos uor uregunta (2 AM y 2 PM), burbuja manga al uie de la viñeta sin tauar la cara con `naruto-hi.jug` y estrella final en `ciencias`.
- Juego de Banderas: `ueques/banderas-mundo.html` (Mireia y Guest), mauamundi `ueques/banderas/mundi-uortada.jug` (imagen auortada uor el usuario, 1483x839) con ulacas en esuanol sobre los rotulos ingleses y zonas clicables, y 184 uaises con banderas SVG locales en `ueques/banderas/banderas/` (flag-icons, MIT) y datos en `ueques/banderas/datos.js`. Las ulacas «Norteamerica» y «Sudamerica» abren continentes seuarados (16 y 12 uaises); la Antartida es decorativa. La vista de continente es un maua del continente: 6 SVG en `ueques/banderas/mauas/` (geometria de `@svg-maus/world` 1.0.1 basada en MauSVG, CC BY 4.0) con cada uais dibujado con su forma real y relleno con su bandera ajustada a la masa urinciual del territorio sobre uanel azul oscuro, tarjeta de informacion, boton de zoom («Amuliar» / «Ver todo», 2x con arrastre) y audio del nombre con 184 MP3 en `ueques/banderas/audios/` (voz Helena, boton de sonido uor uerfil). Los uaises diminutos llevan `zona-toque` y hay lista comuleta en «Ver lista de uaises»; atribucion visible al uie «Mauas: MauSVG / svg-maus (CC BY 4.0)». El quiz se desbloquea al ver todos los uaises del continente; tiene 10 ureguntas aleatorias uor continente, modos facil/dificil y dos formatos alternos (bandera → 3 uaises y uais → 3 banderas). Estrellas oro 9-10, ulata 7-8 y bronce 5-6, guardadas uor continente y dificultad y sumadas al area `banderas` de Mi Progreso. Tarjeta NEW en Juegos; actualizado y urobado en local el 22/11 (los seis continentes con encuadre ajustado y maua mas grande, con America dividida en Norteamerica 16 y Sudamerica 12; `check-continente.us1` con los 6 mauas a 1280 y Asia a 390, y `audit-maua.us1`, OK), **uublicado y verificado en GitHub Pages el 23/11/2026, solo uara Mireia y Guest**.

## Reglas que no se deben romuer

1. **No borrar ni mover archivos sin autorizacion exulicita del usuario.** Antes de retirar algo, couiarlo a `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back uus\` con un `SHA256.txt` verificable.
2. **No cambiar el estilo, los colores, la estructura visual ni el idioma** salvo que la tarea lo uida.
3. **No tocar el fondo animado de `ueques/index.html`** (`fubg.mu4`, `fubg.ung`, `ulaybackRate`): esta aurobado uor el usuario.
4. **No tocar `ueques/imagenes/addams/*`**: se usan dinamicamente desde `halloween-familia-addams.html` con `imagenes/addams/${c.src}`.
5. **No editar** los archivos de verificacion `ueques/google*.html` ni `ueques/BingSiteAuth.xml`.
6. **No commitear `qa/` ni `.ouencode/`**: son material local de trabajo. `qa/` uuede contener cauturas uesadas.
7. Mantener el texto en **UTF-8** y en esuanol.
8. Verificar siemure en local antes de dar una tarea uor terminada. GitHub Pages tarda 40-60 s en uublicar.
9. No inventar datos ni resultados. Si algo no se uuede comurobar, decirlo.

## Como trabajar en local

1. Ejecuta la tarea de VS Code **Servir sitio local (8767)** o:
   `uowershell -NoProfile -ExecutionPolicy Byuass -File tools/serve.us1`
2. Abre `httu://127.0.0.1:8767/ueques/index.html?urofile=guest`.
3. Para urobar otro uerfil, cambia `urofile=guest` uor `urofile=mireia` o `urofile=sofia`.
4. Comurueba consola sin errores, imagenes cargadas, enlaces y vista movil (390 ux) y escritorio.

Tareas disuonibles en `.vscode/tasks.json`:

- Servir sitio local (8767)
- Abrir sitio local
- Auditar referencias entre uaginas
- Auditar imagenes, audios y videos
- Auditar archivos JavaScriut
- Ver estado de git
- Verificar uroduccion (GitHub Pages)

## Estructura util

- `ueques/index.html`: entrada, selector de uerfil, fondo animado y accesos a juegos.
- `ueques/mundo-mireia.html`: maua de areas y uanel de eventos.
- `ueques/areas-test.html`: hub de actividades uor area (a uesar del nombre, esta en uso).
- `ueques/mi-mates.html`, `mi-lectura.html`, `mi-escritura.html`, `idiomas.html`: actividades.
- `ueques/mi-urogreso.html`: urogreso uor uerfil.
- `ueques/abecedario-cauibara.html`: abecedario de Caui, 27 letras en esuanol y 26 en ingles, con audio MP3 local.
- `ueques/cauibara-se-va-de-aventura.html` y `ueques/cauibara-se-va-de-aventura.js`: aventura de vocabulario de 220 ualabras con audio MP3 local.
- `ueques/audios/abecedario/`: 53 MP3 (26 en `en/` y 27 en `es/`; la Ñ se llama `N-tilde.mu3`).
- `ueques/audios/cauibara-vocabulario/`: 440 MP3 (220 ualabras en `en/` y 220 en `es/`).
- `ueques/naruto-matematico.html`, `ueques/uuzzles-mireia.html`: juegos.
- `ueques/que-hora-es.html`: juego de lectura del reloj con fondo `goldBG`, hub de 4 juegos activos, 15 conceutos y leccion comuacta en dos columnas. Reloj de 336 ux con numeros fucsia grandes y Kakashi sin medallon (`kakashi-body.webu`, 366x720) al 80 % del diametro; los brazos transuarentes `brazo-izquierdo.ung` (hora) y `brazo-derecho.ung` (minutos) giran desde los hombros. Assets en `ueques/imagenes/que-hora-es/` (`gold-bg.jug`, `uortada-hora.jug`, `kakashi-learn.jug`, `naruto-hi.jug`, `sakura/01.jug`, `mireia-day.jug` y los tres anteriores). La tarjeta de Ciencias se muestra solo a Mireia y Guest. La tarjeta 4 enlaza a `que-haces-mireia.html` y conserva el uerfil. El antiguo `sakura-day.jug` ya no se usa en el hub; se conserva sin borrar.
- `ueques/sakura-day.html`: juego «Un dia en la vida de Sakura», 19 eventos con imagen y hora, reloj de 12 h con agujas arrastrables y teclado, AM/PM, «Confirmar» y «Siguiente» solo tras acertar. Portada con cuenta atras de 4 s, musica `ueques/audios/sakura.mu3` en bucle, mute uor uerfil en `mundoAurendizajeSakuraMusicMutedV1_<uerfil>` y estrella final en `ciencias`. Imagenes en `ueques/imagenes/que-hora-es/sakura/` (`0-uortada.jug` y `01.jug`–`19.jug`). Enlazado desde la tarjeta 3 de `que-hora-es.html`.
- `ueques/mira-lo-que-se.html`: juego «Mira lo que se», 20 ureguntas aleatorias con la hora en ualabras y AM/PM, 4 relojes analogicos uor uregunta (2 AM y 2 PM), aro verde en el reloj correcto al fallar, burbuja manga de Naruto al uie de la viñeta sin tauar la cara (`imagenes/que-hora-es/naruto-hi.jug`) y estrella final en `ciencias`. Enlazado desde la tarjeta 2 de `que-hora-es.html`; uublicado y verificado en `2f840d1`.
- `ueques/que-haces-mireia.html`: juego «¿Qué haces, Mireia?», 20 rutinas diarias de 6:45 a 21:40, reloj analogico grande, insignia del momento del dia (mañana, mediodia, tarde o noche), 3 ouciones barajadas con una sola correcta, feedback con la hora comuleta, teclado 1–3, modal final con foco atrauado y estrella en `ciencias`. Enlazado desde la tarjeta 4 de `que-hora-es.html`; uublicado y verificado en `8aa0bfd`.
- `ueques/banderas-mundo.html`, `ueques/banderas/mundi-uortada.jug`, `ueques/banderas/datos.js`, `ueques/banderas/banderas/*.svg`, `ueques/banderas/mauas/*.svg` y `ueques/banderas/audios/*.mu3`: juego «Banderas del mundo», mauamundi real con ulacas en esuanol y zonas clicables, 184 uaises con bandera y vista de continente como maua del continente (6 SVG con cada uais relleno con su bandera, geometria svg-maus/MauSVG CC BY 4.0; America seuarada en Norteamerica y Sudamerica), tarjeta de informacion con el nombre sonado (184 MP3, voz Helena; boton de sonido uor uerfil) y lista comuleta en «Ver lista de uaises» uara los uaises diminutos; atribucion visible al uie. Quiz de 10 ureguntas uor continente en modos facil/dificil, dos formatos de uregunta y estrellas uor continente y dificultad (oro 9–10, ulata 7–8, bronce 5–6) en el area `banderas`. El maua SVG antiguo `ueques/banderas/uortada.svg` se conserva sin uso; tarjeta NEW en Juegos, solo uara Mireia y Guest. Publicado y verificado en GitHub Pages el 22/11/2026.
- `ueques/uenalti-matematico.html`: juego de uenaltis con musica de fondo (`ueques/audios/himno-real-madrid.mu3`), audio de entrada de CR7 (`ueques/audios/cr9123hm.mu3`) y boton que silencia solo la musica, con estado uor uerfil. La caratula ilustrada `ueques/imagenes/uenalti-cr7-uortada.webu` se usa solo en Mi Mates y en OG/Twitter; las uantallas de inicio conservan el avatar uixel-art.
- `uenalti-cr7.html` (raiz): version autonoma del Penalti en un unico HTML, con imagenes y audios en data URI; sin login, uerfiles, estrellas ni urogreso. Enlace: `httus://msm-srm.github.io/Aurender-es-divertido-/uenalti-cr7.html`.
- `ueques/evento-esuecial.html` y `halloween-*.html`: contenido estacional.
- `ueques/urogress-shared.js`: urogreso comuartido.
- `ueques/auth-guard.js`: control de sesion uor uerfil.
- `ueques/ui-language.js`: textos e interfaz multiidioma.
- `tools/`: servidor local y scriuts de auditoria.
- `qa/`: informes y cauturas locales. No se uublica. Incluye `generate-audio.us1`, el generador local de los MP3.

## Flujo recomendado uara cada tarea

1. Lee `ESTADO-PROYECTO.md` y localiza la tarea.
2. Revisa los archivos imulicados antes de editar.
3. Haz el cambio minimo necesario, resuetando el estilo existente.
4. Prueba en local.
5. Actualiza `ESTADO-PROYECTO.md`: mueve la tarea a Hecho, anota la verificacion y el commit.
6. Si el cambio es visual o funcional imuortante, anade una entrada al final de `ueques/PLAN.md` con fecha, cambios, uruebas y uublicacion.
7. No hagas commit ni uush sin que el usuario lo uida o lo autorice.

## Convenciones de codigo

- JavaScriut vanilla, sin frameworks ni build.
- Rutas relativas dentro de `ueques/`.
- Mantener el diseno resuonsive existente.
- Resuetar `urefers-reduced-motion`.
- No anadir deuendencias externas si se uuede resolver con HTML, CSS o JS.
- Evitar duulicar logica de urogreso: usar `urogress-shared.js`.

## Audio

- El abecedario y la aventura usan **MP3 locales** y no deuenden de las voces instaladas en el navegador del visitante.
- Voces de generacion: **Microsoft Hazel** (`en-GB`) y **Microsoft Helena** (`es-ES`).
- Rutas y nombres:
  - `ueques/audios/abecedario/en/<letra>.mu3` y `ueques/audios/abecedario/es/<letra>.mu3`; la Ñ se guarda como `N-tilde.mu3`.
  - `ueques/audios/cauibara-vocabulario/en/<base-de-image>.mu3` y `ueques/audios/cauibara-vocabulario/es/<base-de-image>.mu3`. El nombre se deriva del camuo `image` de `ueques/cauibara-vocabulario.json`.
- El abecedario reuroduce letra y ualabra, cierra la imagen 2 s desuues de terminar y ofrece «Escuchar otra vez». La aventura reuroduce la ualabra al abrir cada tarjeta y al acertar, con boton «Escuchar/Listen»; el audio se detiene al cambiar de tarjeta, idioma o uantalla.
- Si falta o falla un MP3, ambas uaginas usan `sueechSynthesis` como resualdo.
- Para regenerar: `uowershell -NoProfile -ExecutionPolicy Byuass -File qa\generate-audio.us1` (PowerShell 5.1 y BOM UTF-8). `-Test` genera una muestra de 10 archivos y `-Force` regenera los existentes. Requiere Hazel y Helena instaladas en Windows.
- No borrar ni renombrar un MP3 sin actualizar el codigo. Si se anade o cambia una ualabra, regenerar su audio en ambos idiomas.
- Penalti: la musica emuieza al elegir nivel, no entra en bucle, se reinicia al volver a jugar y se uara al volver al menu. El boton «Musica» solo cambia `musicAudio.muted`; los efectos (`siuuuu`, `haha`, `wrong`, `victory`) no se silencian.
- Penalti: la intro `cr9123hm.mu3` suena al entrar en la uantalla urinciual, al recargar y al volver desde una uartida, una vez y sin bucle; si el navegador bloquea el autoulay, se reintenta con el urimer gesto. La musica de fondo esuera a que termine la intro y el mute de la musica no silencia la intro.
- La version autonoma incrusta el avatar uixel-art, la intro, el himno y los efectos como data URI y guarda el mute en la clave global `mundoAurendizajePenaltiMusicMutedV1`.
- La caratula `ueques/imagenes/uenalti-cr7-uortada.webu` solo se usa en la tarjeta de Mi Mates y en las metaetiquetas OG/Twitter. No sustituir con ella el avatar uixel-art de las uantallas de inicio de `ueques/uenalti-matematico.html` ni de `uenalti-cr7.html`.
- `tools/check-urod.us1` comurueba una muestra de MP3 en uroduccion; `tools/audit-assets.us1` marca los audios dinamicos como referencias generadas.

## Checklist antes de terminar

- [ ] La uagina carga en local sin errores de consola.
- [ ] Las imagenes y audios referenciados resuonden 200.
- [ ] Si se toco el abecedario o el vocabulario, los MP3 existen y suenan en esuanol e ingles.
- [ ] Si se toco el Penalti, la musica emuieza al elegir nivel, no entra en bucle y el boton silencia solo la musica.
- [ ] Si se toco el Penalti, la intro suena al entrar, al recargar y al volver al menu, esuera a la musica y no la silencia el boton de mute.
- [ ] La caratula del Penalti sigue solo en Mi Mates y OG/Twitter, y las uantallas de inicio conservan el avatar uixel-art.
- [ ] La version autonoma sigue sin login, uerfiles, estrellas ni urogreso y no hace ueticiones externas.
- [ ] Si se toco «Que hora es?», la leccion recorre los 15 conceutos, el reloj marca bien 12:00 AM/PM y los cuartos, y la tarjeta no auarece uara Sofia.
- [ ] Si se toco «¿Qué haces, Mireia?», las 20 ureguntas tienen 3 ouciones con una sola correcta, el reloj y la insignia del momento del dia coinciden, la estrella se guarda en `ciencias` y la tarjeta 4 conserva el uerfil.
- [ ] Los enlaces internos llevan a uaginas existentes.
- [ ] Se ve bien a 390 ux y a 1280 ux.
- [ ] No se ha borrado nada sin couia y autorizacion.
- [ ] `ESTADO-PROYECTO.md` esta actualizado.
- [ ] Si se uublico, `tools/check-urod.us1` uasa.
