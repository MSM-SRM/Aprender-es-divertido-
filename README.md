# Mi Mundo de Aprendizaje

Sitio educativo estático en español para Mireia y Sofía: perfiles, juegos, cuentos, idiomas, progreso y eventos especiales.

- **Producción:** https://msm-srm.github.io/Aprender-es-divertido-/peques/
- **Penalti CR7 autónomo:** https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html (un solo HTML, sin perfiles, estrellas ni progreso; también se puede enviar como archivo)
- **Penalti:** audio de entrada de CR7 (`peques/audios/cr9123hm.mp3`) y carátula ilustrada en la tarjeta de Mi Mates; dentro de los dos juegos se mantiene el avatar pixel-art original.
- **¿Qué hora es?:** juego de Ciencias para Mireia y Guest con la lección «Aprende con Kakashi sensei», 15 conceptos y reloj de 336 px con Kakashi grande y brazos transparentes que giran desde los hombros (`peques/que-hora-es.html`). El hub reúne cuatro juegos.
- **Mira lo que se:** juego 2 de «¿Qué hora es?» (`peques/mira-lo-que-se.html`), con Naruto grande, burbuja al pie de la viñeta sin tapar la cara, 20 preguntas aleatorias con la hora en palabras y cuatro relojes analógicos por pregunta (2 AM y 2 PM). Al fallar, el reloj correcto se rodea de verde. Publicado y verificado en GitHub Pages en `2f840d1`.
- **Un día en la vida de Sakura:** juego 3 de «¿Qué hora es?» (`peques/sakura-day.html`), con 19 eventos del día, reloj de 12 h manipulable, AM/PM, música en bucle con botón de silencio por perfil y estrella final. Publicado y verificado en GitHub Pages en `aee3daf`.
- **¿Qué haces, Mireia?:** juego 4 de «¿Qué hora es?» (`peques/que-haces-mireia.html`), con 20 rutinas diarias de 6:45 a 21:40, reloj analógico grande, insignia de mañana/mediodía/tarde/noche, tres opciones por pregunta y estrella final en `ciencias`. **Completo y verificado en local; pendiente de publicar.**
- **Estado y tareas:** [ESTADO-PROYECTO.md](ESTADO-PROYECTO.md)
- **Historial técnico:** [peques/PLAN.md](peques/PLAN.md)

## Trabajar en local

En VS Code, ejecuta la tarea **Servir sitio local (8767)** y abre:

```text
http://127.0.0.1:8767/peques/index.html?profile=guest
```

También puedes arrancarlo desde PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools\serve.ps1
```

## Estructura

- `peques/`: sitio publicado (HTML, CSS, JS y assets).
- `tools/`: servidor local y scripts de auditoría.
- `qa/`: informes y capturas de pruebas (local, no se publica).
- `.github/copilot-instructions.md`: reglas para GitHub Copilot.
- `.vscode/tasks.json`: tareas de VS Code.

## Reglas

- No borrar archivos sin autorización y copia verificable en `Downloads`.
- No cambiar el estilo, los colores ni el idioma sin pedido.
- No tocar el fondo animado aprobado ni las imágenes de Addams.
- Verificar siempre en local antes de publicar.
