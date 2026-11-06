# Estado del proyecto — Mi Mundo de Aprendizaje

> **Fuente única de verdad** para el usuario, OpenCode y VS Code/Copilot.
> Antes de empezar una tarea, lee este archivo. Al terminarla, actualízalo.
>
> Última actualización: **06/11/2026**
> Producción: `https://msm-srm.github.io/Aprender-es-divertido-/peques/`
> Repositorio: `https://github.com/MSM-SRM/Aprender-es-divertido-`
> Rama: `main` · Estado: juego «Capi se va de aventura» publicado en `c6a9ae4` y verificado en GitHub Pages; enlace de Juegos corregido en `6295cc1`; créditos agrupados en un panel discreto en `88655b3`

---

## 1. Resumen

| Dato | Valor |
|---|---|
| Tipo de proyecto | Sitio web estático (HTML, CSS y JavaScript), sin build |
| Idioma | Español, con interfaz en español, catalán, inglés y alemán |
| Perfiles | `guest`, `mireia`, `sofia` |
| Entrada | `peques/index.html` |
| Hub principal | `peques/mundo-mireia.html` |
| Estado del código | Abecedario bilingüe, créditos y acceso English-only para Mireia/Guest publicados; portada de Naruto en Mi Mates para Mireia/Guest publicada y verificada en `b74aa5b`; aventura de vocabulario «Capi se va de aventura» publicada y verificada en `c6a9ae4`, con créditos agrupados en un panel discreto desde `88655b3` |
| Estado de la limpieza | Completada: 8 archivos retirados, mapa optimizado, `qa/` archivado y `.git` compactado |
| Subagentes OpenCode | Bloqueados por límite de uso gratuito; Copilot puede continuar en local |

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
| H21 | Voz británica inglesa estricta y preferencia por voz femenina/natural | `a564339`, publicado; espera `voiceschanged`, selecciona solo `en-GB` y prefiere Google UK English Female o Sonia/Libby/Serena/Hazel; nunca recurre al español. No hay voz `en-GB` instalada en el entorno probado: muestra aviso y permite leer la palabra sin locución. La instalación y prueba de una voz británica sigue pendiente; voz española `es-ES` conservada |
| H22 | Acceso English-only al abecedario desde Lengua Inglés para Mireia y Guest | `12cb0fd`, publicado y verificado: tarjeta primera con NEW solo en `lang=en`, enlace `profile=mireia|guest&uiLang=en`; Sofia conserva su acceso multilingüe |
| H23 | Portada ilustrada de Capi leyendo en las tarjetas del abecedario | `3d807b3`, publicado y verificado en Pages: SVG original en las tarjetas de Sofia y de Mireia/Guest en inglés; nombre y descripción en banda inferior más pequeña, al estilo de la tarjeta de cuentos. Copia del proyecto en `Downloads\ZZ - Mi_Mundo Back ups` |
| H24 | Portada Naruto con atribución en Mi Mates para Mireia y Guest | `b74aa5b`, publicado y verificado en Pages (ejecución `42042737919`): imagen VectorStock de TamTV en tarjeta cuadrada para Mireia y Guest; enlace de atribución visible, pequeño y discreto al pie de la tarjeta |
| H25 | Aventura de vocabulario «Capi se va de aventura» | `c6a9ae4`, publicado y verificado en Pages: 11 lugares × 20 palabras (220 fotos), créditos CC completos, quiz de unión foto-palabra, progreso por perfil, ES/EN y vuelta a Juegos; tarjeta NEW en Sofia, Juegos e Idiomas. Enlace de Juegos corregido en `6295cc1` para respetar el `uiLang` de la página |
| H26 | Créditos de la aventura agrupados en un panel discreto | `88655b3`, publicado y verificado: se retiran de cada tarjeta y se agrupan al final del juego; el botón «Créditos» abre el panel tras cinco toques seguidos. Incluye 221 atribuciones (220 palabras y una imagen adicional), en español e inglés |

### En curso

| ID | Tarea | Nota |
|---|---|---|
| — | Sin tareas en curso | — |

### Pendiente

| ID | Tarea | Prioridad | Criterio de terminado |
|---|---|---|---|
| P1 | Instalar/probar una voz del sistema `en-GB` | Baja | Confirmar locución inglesa; mantener silencio con aviso si no hay voz, sin fallback al español |

### Bloqueado

| ID | Tarea | Motivo |
|---|---|---|
| B1 | Delegación en subagentes `web-builder` / `web-qa` | Límite de uso gratuito de OpenCode. No afecta a Copilot ni al trabajo local |

---

## 4. Mapa de páginas

| Página | Función | Estado |
|---|---|---|
| `peques/index.html` | Entrada, selector de perfil, fondo animado y accesos | Activa |
| `peques/mundo-mireia.html` | Mapa de áreas y panel de eventos | Activa |
| `peques/areas-test.html` | Hub de actividades por área | Activa (nombre heredado; se mantiene) |
| `peques/mi-mates.html` | Matemáticas | Activa |
| `peques/mi-lectura.html` | Lectura | Activa |
| `peques/mi-escritura.html` | Escritura | Activa |
| `peques/idiomas.html` | Inglés, catalán y alemán | Activa |
| `peques/mi-progreso.html` | Progreso por perfil | Activa |
| `peques/naruto-matematico.html` | Juego de matemáticas | Activa |
| `peques/penalti-matematico.html` | Juego de penaltis | Activa |
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

1. **Sin tareas abiertas.** P5 se resolvió manteniendo `peques/areas-test.html`: es el hub real de actividades y no una página de prueba.
2. **Abecedario de Capi:** versión española y extensión inglesa publicadas (`2de4e07`, `a564339`); acceso English-only de Mireia/Guest queda en el commit local sin push. Pendiente instalar una voz `en-GB` para comprobar locución. Mejoras opcionales, pendientes de autorización: mejorar el foco del diálogo, alargar el cierre automático y decir «A de abeja» en lugar de solo «abeja».
3. **Capi se va de aventura:** publicada en `c6a9ae4`. 11 lugares, 220 fotos, quiz y progreso compartido; español e inglés. Probada en local (Supermercado completo 20/20, móvil 390×844 y 360×640, movimiento reducido) y verificada en GitHub Pages. El enlace de Juegos se corrigió en `6295cc1` para conservar el idioma de la página. Desde `88655b3` los créditos ya no aparecen en cada tarjeta: están agrupados al final, en un panel que se abre con cinco toques en «Créditos».

Si OpenCode no está disponible, Copilot puede continuar en VS Code:

1. Leer este archivo.
2. Tomar la primera tarea de **Pendiente**.
3. Trabajar en local con `tools/serve.ps1`.
4. Actualizar este archivo y avisar al usuario.
