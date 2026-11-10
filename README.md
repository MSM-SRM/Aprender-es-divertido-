# Mi Mundo de Aprendizaje

Sitio educativo estático en español para Mireia y Sofía: perfiles, juegos, cuentos, idiomas, progreso y eventos especiales.

- **Producción:** https://msm-srm.github.io/Aprender-es-divertido-/peques/
- **Penalti CR7 autónomo:** https://msm-srm.github.io/Aprender-es-divertido-/penalti-cr7.html (un solo HTML, sin perfiles, estrellas ni progreso; también se puede enviar como archivo)
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
