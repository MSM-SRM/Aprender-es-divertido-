# Proyecto: Mi Mundo de Aprendizaje

Sitio web estático (HTML, CSS y JavaScript) en español, con perfiles, cuentas atrás, juegos y contenido infantil. El material de partida está en `~/Downloads` (`index.html`, imágenes, vídeos y banderas).

**Estado vivo y tareas:** `ESTADO-PROYECTO.md`. Leerlo antes de empezar y actualizarlo al terminar. El historial técnico está en `peques/PLAN.md`.

**VS Code / Copilot:** mismas reglas y mismos recursos. Las instrucciones para Copilot están en `.github/copilot-instructions.md`; las tareas locales, en `.vscode/tasks.json`.

## Jerarquía de trabajo

- **Agente principal (supervisor):** interpreta las órdenes del usuario, decide el alcance, reparte el trabajo, revisa y corrige lo que devuelven los ejecutores. No ejecuta el trabajo manualmente.
- **`web-builder` (ejecutor):** implementa los cambios de código y assets en este proyecto.
- **`web-qa` (ejecutor):** audita, prueba y organiza materiales; escribe en `qa/` y en `~/Downloads`, nunca en el código del sitio.

## Flujo

1. El usuario da una orden.
2. El supervisor la descompone y la delega en `web-builder` y/o `web-qa`.
3. Los ejecutores trabajan y devuelven resultados verificables.
4. El supervisor revisa, corrige lo necesario y responde al usuario.

## Reglas

- El sitio se construye en esta carpeta; `~/Downloads` es solo almacén de material.
- No borrar archivos ni versiones sin autorización.
- Conservar el estilo, los colores y el idioma existentes salvo orden de rediseño.
- Verificar siempre en local antes de dar una tarea por terminada.
