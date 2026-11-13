# Instrucciones para GitHub Copilot en VS Code

Este repositorio es un sitio web estatico en espanol. Antes de proponer o hacer cambios, lee `ESTADO-PROYECTO.md` en la raiz. Es la fuente unica de verdad sobre lo hecho, lo pendiente y las decisiones tomadas. Al terminar una tarea, actualiza ese archivo.

## Contexto rapido

- Proyecto: **Mi Mundo de Aprendizaje**, juegos educativos para Mireia y Sofia.
- Produccion: `https://msm-srm.github.io/Aprender-es-divertido-/peques/`
- Repositorio: `https://github.com/MSM-SRM/Aprender-es-divertido-`
- Stack: HTML, CSS y JavaScript sin compilacion ni dependencias.
- Pagina de entrada: `peques/index.html`.
- Hub principal: `peques/mundo-mireia.html`.
- Perfiles: `guest`, `mireia`, `sofia`.
- Historial tecnico: `peques/PLAN.md`.
- Audio: 493 MP3 locales en `peques/audios/` (abecedario y vocabulario, en ingles britanico y espanol).
- Penalti autonomo: `penalti-cr7.html` en la raiz, un solo archivo sin login, perfiles, estrellas ni progreso; enlace publico `https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html`.
- Nuevo juego: `peques/que-hora-es.html` (Ciencias, Mireia y Guest), con hub de 4 espacios y la leccion «Aprende con Kakashi sensei»; los otros 3 juegos son placeholders. Pendiente de publicar.

## Reglas que no se deben romper

1. **No borrar ni mover archivos sin autorizacion explicita del usuario.** Antes de retirar algo, copiarlo a `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\` con un `SHA256.txt` verificable.
2. **No cambiar el estilo, los colores, la estructura visual ni el idioma** salvo que la tarea lo pida.
3. **No tocar el fondo animado de `peques/index.html`** (`fpbg.mp4`, `fpbg.png`, `playbackRate`): esta aprobado por el usuario.
4. **No tocar `peques/imagenes/addams/*`**: se usan dinamicamente desde `halloween-familia-addams.html` con `imagenes/addams/${c.src}`.
5. **No editar** los archivos de verificacion `peques/google*.html` ni `peques/BingSiteAuth.xml`.
6. **No commitear `qa/` ni `.opencode/`**: son material local de trabajo. `qa/` puede contener capturas pesadas.
7. Mantener el texto en **UTF-8** y en espanol.
8. Verificar siempre en local antes de dar una tarea por terminada. GitHub Pages tarda 40-60 s en publicar.
9. No inventar datos ni resultados. Si algo no se puede comprobar, decirlo.

## Como trabajar en local

1. Ejecuta la tarea de VS Code **Servir sitio local (8767)** o:
   `powershell -NoProfile -ExecutionPolicy Bypass -File tools/serve.ps1`
2. Abre `http://127.0.0.1:8767/peques/index.html?profile=guest`.
3. Para probar otro perfil, cambia `profile=guest` por `profile=mireia` o `profile=sofia`.
4. Comprueba consola sin errores, imagenes cargadas, enlaces y vista movil (390 px) y escritorio.

Tareas disponibles en `.vscode/tasks.json`:

- Servir sitio local (8767)
- Abrir sitio local
- Auditar referencias entre paginas
- Auditar imagenes, audios y videos
- Auditar archivos JavaScript
- Ver estado de git
- Verificar produccion (GitHub Pages)

## Estructura util

- `peques/index.html`: entrada, selector de perfil, fondo animado y accesos a juegos.
- `peques/mundo-mireia.html`: mapa de areas y panel de eventos.
- `peques/areas-test.html`: hub de actividades por area (a pesar del nombre, esta en uso).
- `peques/mi-mates.html`, `mi-lectura.html`, `mi-escritura.html`, `idiomas.html`: actividades.
- `peques/mi-progreso.html`: progreso por perfil.
- `peques/abecedario-capibara.html`: abecedario de Capi, 27 letras en espanol y 26 en ingles, con audio MP3 local.
- `peques/capibara-se-va-de-aventura.html` y `peques/capibara-se-va-de-aventura.js`: aventura de vocabulario de 220 palabras con audio MP3 local.
- `peques/audios/abecedario/`: 53 MP3 (26 en `en/` y 27 en `es/`; la Ñ se llama `N-tilde.mp3`).
- `peques/audios/capibara-vocabulario/`: 440 MP3 (220 palabras en `en/` y 220 en `es/`).
- `peques/naruto-matematico.html`, `peques/puzzles-mireia.html`: juegos.
- `peques/que-hora-es.html`: juego de lectura del reloj con fondo `goldBG`, hub de 4 tarjetas, 15 conceptos y leccion compacta en dos columnas. Reloj de 336 px con numeros fucsia grandes y Kakashi sin medallon (`kakashi-body.webp`, 366x720) al 80 % del diametro; los brazos transparentes `brazo-izquierdo.png` (hora) y `brazo-derecho.png` (minutos) giran desde los hombros. Assets en `peques/imagenes/que-hora-es/` (`gold-bg.jpg`, `portada-hora.jpg`, `kakashi-learn.jpg`, `naruto-hi.jpg`, `sakura-day.jpg`, `mireia-day.jpg` y los tres anteriores). La tarjeta de Ciencias se muestra solo a Mireia y Guest.
- `peques/penalti-matematico.html`: juego de penaltis con musica de fondo (`peques/audios/himno-real-madrid.mp3`), audio de entrada de CR7 (`peques/audios/cr9123hm.mp3`) y boton que silencia solo la musica, con estado por perfil. La caratula ilustrada `peques/imagenes/penalti-cr7-portada.webp` se usa solo en Mi Mates y en OG/Twitter; las pantallas de inicio conservan el avatar pixel-art.
- `penalti-cr7.html` (raiz): version autonoma del Penalti en un unico HTML, con imagenes y audios en data URI; sin login, perfiles, estrellas ni progreso. Enlace: `https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html`.
- `peques/evento-especial.html` y `halloween-*.html`: contenido estacional.
- `peques/progress-shared.js`: progreso compartido.
- `peques/auth-guard.js`: control de sesion por perfil.
- `peques/ui-language.js`: textos e interfaz multiidioma.
- `tools/`: servidor local y scripts de auditoria.
- `qa/`: informes y capturas locales. No se publica. Incluye `generate-audio.ps1`, el generador local de los MP3.

## Flujo recomendado para cada tarea

1. Lee `ESTADO-PROYECTO.md` y localiza la tarea.
2. Revisa los archivos implicados antes de editar.
3. Haz el cambio minimo necesario, respetando el estilo existente.
4. Prueba en local.
5. Actualiza `ESTADO-PROYECTO.md`: mueve la tarea a Hecho, anota la verificacion y el commit.
6. Si el cambio es visual o funcional importante, anade una entrada al final de `peques/PLAN.md` con fecha, cambios, pruebas y publicacion.
7. No hagas commit ni push sin que el usuario lo pida o lo autorice.

## Convenciones de codigo

- JavaScript vanilla, sin frameworks ni build.
- Rutas relativas dentro de `peques/`.
- Mantener el diseno responsive existente.
- Respetar `prefers-reduced-motion`.
- No anadir dependencias externas si se puede resolver con HTML, CSS o JS.
- Evitar duplicar logica de progreso: usar `progress-shared.js`.

## Audio

- El abecedario y la aventura usan **MP3 locales** y no dependen de las voces instaladas en el navegador del visitante.
- Voces de generacion: **Microsoft Hazel** (`en-GB`) y **Microsoft Helena** (`es-ES`).
- Rutas y nombres:
  - `peques/audios/abecedario/en/<letra>.mp3` y `peques/audios/abecedario/es/<letra>.mp3`; la Ñ se guarda como `N-tilde.mp3`.
  - `peques/audios/capibara-vocabulario/en/<base-de-image>.mp3` y `peques/audios/capibara-vocabulario/es/<base-de-image>.mp3`. El nombre se deriva del campo `image` de `peques/capibara-vocabulario.json`.
- El abecedario reproduce letra y palabra, cierra la imagen 2 s despues de terminar y ofrece «Escuchar otra vez». La aventura reproduce la palabra al abrir cada tarjeta y al acertar, con boton «Escuchar/Listen»; el audio se detiene al cambiar de tarjeta, idioma o pantalla.
- Si falta o falla un MP3, ambas paginas usan `speechSynthesis` como respaldo.
- Para regenerar: `powershell -NoProfile -ExecutionPolicy Bypass -File qa\generate-audio.ps1` (PowerShell 5.1 y BOM UTF-8). `-Test` genera una muestra de 10 archivos y `-Force` regenera los existentes. Requiere Hazel y Helena instaladas en Windows.
- No borrar ni renombrar un MP3 sin actualizar el codigo. Si se anade o cambia una palabra, regenerar su audio en ambos idiomas.
- Penalti: la musica empieza al elegir nivel, no entra en bucle, se reinicia al volver a jugar y se para al volver al menu. El boton «Musica» solo cambia `musicAudio.muted`; los efectos (`siuuuu`, `haha`, `wrong`, `victory`) no se silencian.
- Penalti: la intro `cr9123hm.mp3` suena al entrar en la pantalla principal, al recargar y al volver desde una partida, una vez y sin bucle; si el navegador bloquea el autoplay, se reintenta con el primer gesto. La musica de fondo espera a que termine la intro y el mute de la musica no silencia la intro.
- La version autonoma incrusta el avatar pixel-art, la intro, el himno y los efectos como data URI y guarda el mute en la clave global `mundoAprendizajePenaltiMusicMutedV1`.
- La caratula `peques/imagenes/penalti-cr7-portada.webp` solo se usa en la tarjeta de Mi Mates y en las metaetiquetas OG/Twitter. No sustituir con ella el avatar pixel-art de las pantallas de inicio de `peques/penalti-matematico.html` ni de `penalti-cr7.html`.
- `tools/check-prod.ps1` comprueba una muestra de MP3 en produccion; `tools/audit-assets.ps1` marca los audios dinamicos como referencias generadas.

## Checklist antes de terminar

- [ ] La pagina carga en local sin errores de consola.
- [ ] Las imagenes y audios referenciados responden 200.
- [ ] Si se toco el abecedario o el vocabulario, los MP3 existen y suenan en espanol e ingles.
- [ ] Si se toco el Penalti, la musica empieza al elegir nivel, no entra en bucle y el boton silencia solo la musica.
- [ ] Si se toco el Penalti, la intro suena al entrar, al recargar y al volver al menu, espera a la musica y no la silencia el boton de mute.
- [ ] La caratula del Penalti sigue solo en Mi Mates y OG/Twitter, y las pantallas de inicio conservan el avatar pixel-art.
- [ ] La version autonoma sigue sin login, perfiles, estrellas ni progreso y no hace peticiones externas.
- [ ] Si se toco «Que hora es?», la leccion recorre los 15 conceptos, el reloj marca bien 12:00 AM/PM y los cuartos, y la tarjeta no aparece para Sofia.
- [ ] Los enlaces internos llevan a paginas existentes.
- [ ] Se ve bien a 390 px y a 1280 px.
- [ ] No se ha borrado nada sin copia y autorizacion.
- [ ] `ESTADO-PROYECTO.md` esta actualizado.
- [ ] Si se publico, `tools/check-prod.ps1` pasa.
