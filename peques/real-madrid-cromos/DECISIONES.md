# Real Madrid Cromos — decisiones de la integración DIAMANTE

> Fecha: 16–17/11/2026 · Alcance: 10 cartas Diamante, 20 caras lógicas (MADRID/TODOS).
> Fuente de las cifras: `REAL_MADRID_CROMOS_DIAMANTE_DATOS_10_JUGADORES.txt` (dossier del 15/11/2026). No se ha añadido ni inventado ningún dato fuera del dossier.

## 1. Estructura y datos

| Decisión | Detalle |
|---|---|
| JSON independiente del HTML | `data/players.json`, un registro por jugador, cargado con `fetch`. El HTML no contiene cifras. |
| Dos caras lógicas | `faces.madrid` (solo Real Madrid) y `faces.todos` (clubes cronológicos + selecciones, sin ninguna mención al Real Madrid). El QA lo comprueba. |
| Formato de cada dato | `value`, `label`, `source`, `source_url`, `status` (`verified`/`secondary`/`disputed`/`needs_verification`), `last_checked` (2026-11-15) y `note`. |
| Asteriscos | Todo lo marcado con `*` o REVISAR en el dossier lleva `asterisk: true`; la UI lo pinta como superíndice y agrupa las notas por carta. |
| Datos REVISAR | `value: null` + `status: "needs_verification"` + nota interna. En pantalla: «Sin registro fiable*». Nunca «N/D» ni cero sustituto. |
| Ceros reales | Solo goles de Casillas (Madrid, Porto, España) y goles de Puskás con España (4 partidos, 0 goles, pendiente de ficha RFEF). |
| Discrepancias conservadas | CR7 451 (Real Madrid) vs 450 (LALIGA) → 451 con `disputed` y nota; Raúl 15 (FIFA) vs 16 por criterio de Supercopas → 15 con nota; Gento Copa de España 2 o 3 → 2 con `disputed`; Puskás 10 títulos con desglose a verificar → nota; Modrić 28 con la Intercontinental 2024 a confirmar → nota. |
| Totales | Los trofeos se muestran por competición y temporada; los premios individuales nunca se suman a los títulos colectivos. |
| Dorsales | «07» para Cristiano (viene de la carta aprobada). El resto aún `number: null`; dorsales históricos elegidos para las próximas cartas: Di Stéfano 9, Raúl 7, Modrić 10, Benzema 9, Puskás 10, Zidane 5, Gento 11, Ramos 4, Casillas 1 (documentados en `assets/players/PROMPT_CARTAS_PENDIENTES.md`). |
| Corte de Cristiano | 30-10-2026 según la fuente estadística del dossier; la comprobación del retiro internacional anunciado queda en `TAREAS.md`. |
| Orden fijo | 01–10 exactamente como el dossier: Cristiano, Di Stéfano, Raúl, Modrić, Benzema, Puskás, Zidane, Gento, Ramos, Casillas. |

## 2. Interfaz y diseño

| Decisión | Detalle |
|---|---|
| Carta de Cristiano | Se usa la imagen aprobada `CR7_DIAMANTE_MADRID_vista_previa.png` tal cual (1024×1536, PNG de 2,7 MB). |
| Portada del juego (17/11) | A petición del usuario, la portada ya no muestra la carta de CR7 sino la caja de la colección: `assets/RMportada.png` (1070×1470, aportada por el usuario desde `~/Downloads/RM cromos/`). Es también la miniatura del módulo en la Isla Real Madrid. |
| Cartas de los otros 9 | Construidas en CSS siguiendo la referencia: mosaico prismático blanco/plata/azul grisáceo, interior azul marino, escudo simplificado como marca de agua, bandera SVG simplificada con flecos y placa inferior de 3 métricas. `assetPending: true`. |
| Retratos | Placeholder de silueta SVG genérica. No se generan retratos por IA ni se sustituyen fotos reales (regla del documento maestro). |
| Bandera de Di Stéfano | Argentina (nacionalidad principal). Es una elección editorial: jugó con Argentina, Colombia y España; las tres selecciones aparecen en la cara TODOS. |
| B.O.A.T. | Solo en el reverso, junto a Manchester United 2007/08, con el texto «etiqueta editorial del proyecto… No es un trofeo oficial». Nunca en el frontal. |
| Toggle MADRID/TODOS | Dos botones con `aria-pressed`. La cara oculta lleva `aria-hidden` + `inert` para que no reciba foco. Escape vuelve a la portada. Cara TODOS como panel desplazable, no como imagen. |
| Página del juego | `index.html` con CSS/JS en línea (patrón del sitio), `auth-guard.js`, `progress-shared.js`, `?profile=`, vuelta a `mundo-mireia.html`. Fondo `gold-bg.jpg` con velo cálido. |
| Progreso | No se guarda nada en localStorage todavía: en esta fase no hay colección ni quiz. Sin claves nuevas, sin tocar `mi-progreso.html`. |
| Cara TODOS visual (17/11) | A petición del usuario: trofeos como «tile» con el icono del trofeo y los años debajo (nada de «1 Eurocopa 2016» en texto); cabecera de club/Selección con escudo provisional (SVG con colores e iniciales, mapa `CLUB_META` de 22 clubes) y bandera redonda del país — sin textos «Alemania», «Selecciones», «Arabia Saudí»; estadísticas con iconos SVG (campo verde = partidos, balón = goles, bota = asistencias) sin palabras. Títulos «Clubes»/«Selecciones» pasan a `sr-only` con separador punteado. Banderas SVG nuevas: de, it, sa, qa, us, mx, gbeng, ba, co. |
| Referencia v2 (17/11) | El usuario aporta una carta doble de Di Stéfano (anverso+reverso en una imagen) como nueva referencia de calidad/estilo/información. Documentada en `REFERENCIA-CARTA-DOSTRARES.md`. Se adopta el estilo (mosaico arcoíris, placa dorada, filas por club con bandera+escudo, laureles individuales) pero **no** el «ASIST. N/D» (aquí se usa «Sin registro fiable*») ni incluir al Real Madrid en la cara TODOS (regla del QA). La referencia desvela datos nuevos (Espanyol 64/65, temporadas de Balón de Oro) apuntados en `TAREAS.md`. |
| Navegación tipo cuenta atrás (17/11) | A petición del usuario, se elimina la rejilla de 10 cartas: el álbum entra por la carta 10 (Casillas) y baja hasta la 1 (Cristiano) con «← Atrás» / «Siguiente →» (y flechas del teclado), mostrando **una cara cada vez** (MADRID o TODOS, nunca juntas). Insignia circular con el número; extremos deshabilitados; Escape vuelve a la portada. Sin localStorage. |
| Giro 3D entre las dos caras (18/11) | A petición del usuario, el cambio MADRID ↔ TODOS se hace con un giro horizontal de 180° (`rotateY`, `transform-style:preserve-3d`, `backface-visibility:hidden`, 0,62 s) en lugar de un cambio seco. La altura del escenario se anima por JS (`#flipStage`) y se mantiene sincronizada con `ResizeObserver`; la cara oculta queda `inert` + `aria-hidden` y no recibe foco. Se respeta `prefers-reduced-motion` (sin transición). Verificado: sin recortes ni saltos a 817/390/320 px, 0 errores de consola. |
| Acceso Real Madrid en el mapa (18/11) | Se retira la isla SVG provisional (baja resolución) y se coloca una **placa-recuadro** con escudo simplificado + «Real Madrid» / «CROMOS Y JUEGOS» en el agua al sur de Ciencias, junto a Mitología Griega (centro x 16,5 %, y 73 %, ancho 16,5 %). Es una solución «de momento»: no tapa la estatua, el cartel de Mitología ni sus zonas clicables. En pantallas estrechas la placa se apila (escudo sobre el nombre) y oculta el subtítulo; nunca desborda. El área sigue llamándose «Isla Real Madrid» hasta decidir si se compra/genera un mapa con más huecos para juegos. |
| Iconos/escudos provisionales | No hay assets en el repo (377 imágenes revisadas): todos los iconos, escudos y banderas son SVG dibujados a mano en `index.html`. Los escudos de clubes son provisionales (colores + iniciales); los oficiales quedan en `TAREAS.md`. |
| Cartas pendientes | Generación automática de imágenes bloqueada el 17/11 (credencial de Grok inválida; cuota gratuita de Google agotada ~23 h). Prompts listos en `assets/players/PROMPT_CARTAS_PENDIENTES.md` (estilo de la carta de CR7: retrato serio y orgulloso, medio perfil, bandera, placa con dorsal y métricas). |

## 3. Verificación y entrega

| Decisión | Detalle |
|---|---|
| QA en navegador | `tests/validar-datos.html` (no hay Node en la máquina): 10 reglas PASS/FAIL en el DOM. |
| Sin publicar | La orden del proyecto prohíbe commit, push, deploy y tocar otras partes de la web hasta autorización. La integración en el menú de Juegos queda como tarea. |
