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
- `peques/naruto-matematico.html`, `penalti-matematico.html`, `puzzles-mireia.html`: juegos.
- `peques/evento-especial.html` y `halloween-*.html`: contenido estacional.
- `peques/progress-shared.js`: progreso compartido.
- `peques/auth-guard.js`: control de sesion por perfil.
- `peques/ui-language.js`: textos e interfaz multiidioma.
- `tools/`: servidor local y scripts de auditoria.
- `qa/`: informes y capturas locales. No se publica.

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

## Checklist antes de terminar

- [ ] La pagina carga en local sin errores de consola.
- [ ] Las imagenes y audios referenciados responden 200.
- [ ] Los enlaces internos llevan a paginas existentes.
- [ ] Se ve bien a 390 px y a 1280 px.
- [ ] No se ha borrado nada sin copia y autorizacion.
- [ ] `ESTADO-PROYECTO.md` esta actualizado.
- [ ] Si se publico, `tools/check-prod.ps1` pasa.
