# REAL MADRID — PROYECTO DE CROMOS Y JUEGOS
## Documento maestro de continuidad y ejecución
**Versión:** 1.0 — 8 de noviembre de 2026  
**Objetivo:** tener una primera versión jugable y comprobada mañana por la tarde, sin perder decisiones ni depender de que un agente concreto recuerde el proyecto.

**Estado de ejecución (08/11/2026):** Fase 0 completada. El juego **no está construido**. Inventario y rutas reales en [`README.md`](README.md). Construcción bloqueada hasta localizar los marcos originales y disponer de fotografías con licencia verificada. Ver sección 12.

---

## 0. INSTRUCCIÓN PRINCIPAL

Este documento es la fuente de verdad del proyecto. OpenCode, VS Code, ChatGPT u otro agente deben leerlo antes de modificar archivos.

**No reinventar ni rediseñar lo ya aprobado. No cambiar el alcance sin preguntar. No borrar ni sobrescribir materiales existentes. No hacer commit ni push sin autorización expresa.**

Proyecto dentro de **Mi Mundo de Aprendizaje**, separado de Business-ONE y de cualquier otro proyecto.

Primera entrega: juego de cromos de **50 futbolistas del Real Madrid**. Los siguientes módulos (no desarrollar ahora): entrenadores, presidentes, escudo e historia del estadio.

## 1. VISIÓN Y ALCANCE

Un álbum-juego educativo, emotivo y divertido para que los perfiles **Mireia** y **Guest** descubran a los futbolistas que más han aportado al Real Madrid.

No se selecciona por décadas ni se exige representación equilibrada por épocas. Se eligen los 50 por una valoración conjunta de:
- títulos y contribución a esos títulos;
- partidos, goles y asistencias;
- liderazgo, importancia histórica y legado;
- momentos decisivos y repercusión;
- impacto deportivo y mediático de fichajes cuando sea relevante;
- jugadores históricos y actuales.

Todas las posiciones deben estar representadas: porteros, defensas centrales, laterales, centrocampistas, extremos y delanteros. No forzar cuotas por década.

### Rarezas y marcos: decisión cerrada
- **10 DIAMANTE**: marco Diamante ya definido en el proyecto.
- **10 ORO**: marco Oro ya definido.
- **30 BLANCO Y VIOLETA**: marco Blanco/Violeta ya definido.

Estas categorías son parte de la identidad visual ya aprobada. No crear una cuarta categoría, no recolorear, no sustituir los marcos ni reinterpretar el diseño. Primero localizar los marcos originales y reutilizarlos. Si no aparecen, detenerse y pedir al usuario la ubicación; no improvisar un sustituto.

## 2. CONTENIDO DE CADA JUGADOR

Cada ficha/cromo debe tener:

### Datos deportivos (solo etapa Real Madrid)
- Nombre completo y nombre conocido.
- Posición principal y posiciones secundarias.
- Temporada/año de llegada y temporada/año de salida (formato «AAAA–AAAA»; si sigue en el club, «AAAA–Actualidad»).
- Partidos oficiales con el Real Madrid.
- Goles oficiales con el Real Madrid.
- Asistencias con el Real Madrid.
- Trofeos colectivos ganados durante su etapa en el club.
- Premios individuales relevantes, indicando si fueron ganados durante la etapa madridista o en reconocimiento a esa trayectoria.

**Regla de rigor:** no inventar cifras. Para datos históricos sin registro fiable, mostrar «No disponible / no existe registro homogéneo». No confundir partidos de todas las competiciones con Liga o Champions. No sumar títulos ganados en otros clubes. Definir el criterio estadístico y mantenerlo en los 50.

### Historia y curiosidades: mínimo 4–5 por jugador
No son frases genéricas. Cada hecho debe ser concreto, verificable y educativo:
- momento histórico o gol memorable;
- rival, competición, fecha o temporada;
- récord personal o del club;
- gesto, celebración, apodo o habilidad reconocible;
- hito de carrera o contexto de su fichaje;
- papel en una final, remontada, título o época;
- comparación histórica con contexto y fecha de corte.

Ejemplo de nivel de detalle para Raúl:
- gol de la cuchara ante el Valencia en la final de Champions de 2000 (verificar descripción y contexto exactos);
- celebración pidiendo silencio en el Camp Nou tras el 2–2 de 1999;
- su habilidad para marcar de vaselina;
- etapa como máximo goleador histórico de la Champions antes de ser superado por Cristiano Ronaldo (indicar cuándo y por quién);
- papel como capitán y referente durante años.

Cada dato tendrá texto breve para niños, más una explicación ampliada opcional. Debe quedar claro qué ocurrió, cuándo, contra quién y por qué se recuerda.

### Fichajes y repercusión: notas especiales
Incluir cuando proceda:
- Cristiano Ronaldo, Gareth Bale, Zinedine Zidane, Jude Bellingham y Luís Figo: notas sobre el coste/impacto de sus fichajes.
- Distinguir con precisión «traspaso más caro del mundo», «fichaje más caro de la historia del Real Madrid» y «récord del club en ese momento». Añadir año, importe y fuente. No afirmar que un jugador fue el más caro durante X años sin verificar fechas y contexto.

## 3. EXPERIENCIA DE JUEGO

### Pantallas
1. **Entrada del juego** desde el menú de juegos existente, respetando navegación y traducciones actuales.
2. **Selector de perfil**: Mireia o Guest. No mezclar colecciones ni progreso.
3. **Inicio del álbum**: progreso (cromos conseguidos / 50), rarezas y acceso a colección.
4. **Conseguir/descubrir cromo**: presentación vistosa, animación breve y marco según rareza.
5. **Ficha del jugador**: cromo en la parte superior; estadísticas esenciales legibles; debajo, bloque «Su historia» con 4–5 hechos en tarjetas desplegables o secciones expandibles.
6. **Álbum/colección**: cuadrícula de 50; distinguir conseguidos y pendientes; filtros Diamante/Oro/Blanco-Violeta.
7. **Jugar/Quiz**: primera versión incluye identificación por fotografía y cuatro respuestas. El sistema debe quedar preparado para el quiz de efemérides descrito abajo.
8. **Resultados**: aciertos, progreso y acceso a aprender más; sin castigos frustrantes para niñas pequeñas.

### Mecánicas
- Quiz 1: «¿Quién es este jugador?» Mostrar una fotografía y cuatro nombres.
- Quiz 2 (siguiente modo, dejar arquitectura y datos preparados): «¿A quién pertenece esta historia?» Mostrar una efeméride y cuatro fotografías de jugadores.
- Preguntas mezcladas y selección aleatoria controlada; evitar repetir la misma pregunta inmediatamente.
- Al responder, explicar brevemente por qué es correcta y permitir abrir la historia del jugador.
- Colección y progreso independientes por perfil.
- Guardar progreso localmente con clave versionada y perfil, respetando el sistema de progreso existente si se integra con él.
- No añadir un backend ni cuentas nuevas para esta primera versión.
- Diseño responsive, prioritariamente móvil/tablet, y usable con pantalla táctil.

## 4. FOTOGRAFÍAS Y BIBLIOTECA DE ACTIVOS

Las fotografías reales son requisito central. No usar imágenes generadas para simular fotografías históricas ni retratos de jugadores.

### Por jugador
- `portrait-front` o `portrait-3q`: retrato frontal o tres cuartos mirando a cámara para el cromo.
- `portrait-alt`: segundo retrato de respaldo.
- `moments/`: 1–3 imágenes de momentos históricos cuando existan y se puedan utilizar.
- `sources.json`: fuente, URL de origen, autor/agencia si consta, licencia/permiso, fecha de consulta, restricciones y atribución requerida.

Prioridad visual:
1. retrato de frente o tres cuartos, rostro claramente visible;
2. buena resolución, sin marcas de agua ni recortes extraños;
3. camiseta del Real Madrid cuando sea posible;
4. color para jugadores modernos;
5. blanco y negro/restauración respetuosa para leyendas antiguas.

**No descargar automáticamente imágenes sin revisar la licencia y los derechos.** Que una foto sea visible en internet no significa que se pueda redistribuir. Si el uso no está claro, registrar como «referencia pendiente de permiso» y no incorporarla al paquete publicado. Para uso público, priorizar imágenes con licencia reutilizable o autorización. Mantener fuente y atribución.

### Estructura física propuesta
Usar la carpeta existente del juego si ya existe; no duplicar activos. Si se crea desde cero, utilizar:

```text
peques/
  real-madrid-cromos/
    index.html
    README.md
    PLAN.md
    data/
      players.json
      quizzes.json
      sources.json
      schema.json
    assets/
      frames/
        diamond/          # marco original existente, no rediseñar
        gold/             # marco original existente
        white-violet/     # marco original existente
      players/
        di-stefano/
          portrait-main.webp
          portrait-alt.webp
          moments/
          sources.json
        cristiano-ronaldo/
          portrait-main.webp
          portrait-alt.webp
          moments/
          sources.json
      ui/
    css/
      game.css
    js/
      app.js
      data-loader.js
      album.js
      quiz-player.js
      quiz-moment.js
      progress.js
      i18n.js
    tests/
      data-validation.js
      smoke-checklist.md
```

Antes de crear esta estructura, inspeccionar el repositorio y localizar si ya existen el juego, marcos, imágenes o prototipos. Si hay materiales existentes, adaptar la estructura a ellos y documentar el mapa real de rutas en README. No mover ni renombrar activos sin autorización.

## 5. MODELO DE DATOS

`players.json` será la fuente única de verdad para los 50 jugadores. No escribir fichas manualmente en HTML.

Ejemplo orientativo:

```json
{
  "id": "raul-gonzalez",
  "name": "Raúl González Blanco",
  "displayName": "Raúl",
  "rarity": "diamond",
  "position": ["delantero"],
  "realMadridPeriod": {
    "from": 1994,
    "to": 2010
  },
  "stats": {
    "officialAppearances": {"value": null, "sourceIds": [], "status": "pending"},
    "goals": {"value": null, "sourceIds": [], "status": "pending"},
    "assists": {"value": null, "sourceIds": [], "status": "unavailable"}
  },
  "teamTrophies": [],
  "individualAwards": [],
  "stories": [
    {
      "id": "raul-camp-nou-silence",
      "title": "El silencio del Camp Nou",
      "shortText": "Texto breve y adecuado para niños.",
      "detail": "Contexto histórico ampliado.",
      "date": "1999-10-13",
      "competition": "LaLiga",
      "opponent": "FC Barcelona",
      "sourceIds": ["source-id"],
      "image": "assets/players/raul-gonzalez/moments/example.webp"
    }
  ],
  "images": {
    "main": "assets/players/raul-gonzalez/portrait-main.webp",
    "alternate": "assets/players/raul-gonzalez/portrait-alt.webp"
  },
  "status": {
    "factsVerified": false,
    "imagesVerified": false,
    "reviewedAt": null
  }
}
```

Ajustar el ejemplo al esquema real. No rellenar `null` con estimaciones. `rarity` solo admite `diamond`, `gold`, `white-violet`; el total debe ser exactamente 10/10/30.

Cada hecho, estadística, título y premio debe enlazar a una fuente mediante `sourceIds`. Registrar fuente primaria preferentemente (Real Madrid, UEFA, FIFA, LALIGA, federaciones, archivos oficiales); complementar con prensa fiable para contexto. Anotar fecha de consulta y discrepancias entre fuentes.

## 6. LISTA DE JUGADORES

Hay un CSV y una propuesta de 50 nombres recuperados en el paquete de continuidad. Deben revisarse como punto de partida, no tratarse como lista cerrada ni inventar una nueva lista ignorando ese material.

Nombres ya destacados por el usuario y que deben estar en la discusión prioritaria: Cristiano Ronaldo, Alfredo Di Stéfano, Raúl González Blanco, Sergio Ramos, Iker Casillas, Luka Modrić, Karim Benzema, Dani Carvajal, Ferenc Puskás. También ha pedido notas especiales de fichaje para CR7, Bale, Zidane, Bellingham y Figo.

La selección definitiva se cerrará con el usuario. No asignar rarezas finales ni retirar nombres unilateralmente. Preparar propuesta de 50 con justificación breve y distribución 10/10/30 para aprobación.

## 7. IDIOMAS Y ACCESIBILIDAD

Mantener los cuatro idiomas ya usados en el ecosistema del proyecto: castellano, catalán, inglés y alemán, si el juego se integra en el sitio multilingüe. No duplicar contenido deportivo en cuatro JSON distintos: guardar datos estructurados una vez y textos traducibles mediante claves/objetos por idioma. Si no hay traducción revisada, usar castellano como fallback sin mostrar claves internas.

Textos sencillos para niños, nombres y datos históricos correctos. Botones grandes, contraste suficiente, tipografía legible y controles táctiles. No depender solo del color para identificar rarezas.

## 8. FASES DE EJECUCIÓN

### Fase 0 — Inventario y protección (obligatoria, primero)
- Inspeccionar repositorio, rama y estado de Git.
- Localizar prototipos, ZIP, CSV, lista de jugadores, marcos de cromos, fotografías y cualquier diseño previo.
- Identificar punto de entrada y navegación de juegos.
- Leer instrucciones del proyecto (`AGENTS.md`, `PLAN.md`, README y reglas locales).
- Crear `REAL-MADRID-CROMOS-README.md` y este plan dentro de la carpeta real del juego.
- No modificar archivos ajenos al juego.
- Entregar un informe de rutas encontradas y faltantes antes de cambios estructurales.

### Fase 1 — Datos y selección
- Importar la propuesta existente de 50.
- Crear tabla de control con 50 filas, rareza propuesta, posición, etapa, estadísticas, títulos, 4–5 historias, fuentes y estado de verificación.
- Marcar como `pending` todo dato no contrastado.
- Validar exactamente 50 jugadores y 10/10/30.
- No inventar ni cerrar la selección sin aprobación del usuario.

### Fase 2 — Biblioteca fotográfica y marcos
- Localizar y reutilizar los marcos originales Diamante, Oro y Blanco/Violeta.
- Crear carpetas por jugador.
- Buscar retratos frontales y alternativas; revisar calidad, identidad, derechos y atribución.
- Guardar originales de trabajo y versiones web optimizadas sin borrar el original.
- No usar fotografías con marca de agua ni imágenes generadas como retratos reales.
- Si los derechos no permiten redistribución, dejar la imagen fuera de la publicación y documentar el bloqueo.

### Fase 3 — Motor del juego
- Construir interfaz desde los datos JSON.
- Álbum, ficha detallada, filtros por rareza y progreso independiente Mireia/Guest.
- Quiz de identificación con cuatro opciones.
- Preparar el modelo de efemérides y el modo de cuatro fotografías; si el plazo aprieta, dejar el modo visible como «siguiente reto» y no fingir que está terminado.
- Mantener navegación y estilos compatibles con el sitio actual.

### Fase 4 — Contenido completo
- Completar datos deportivos y trofeos con fuentes.
- Redactar y verificar 4–5 historias por jugador.
- Preparar traducciones o fallback claro.
- Comprobar enlaces, atribuciones y rutas de imágenes.

### Fase 5 — QA y entrega
- Probar localmente en escritorio y móvil.
- Viewports mínimos: 320×640, 360×640, 390×844 y 1280×900.
- Probar perfil Mireia y Guest por separado; recargar y comprobar persistencia.
- Verificar 50 cromos, rarezas 10/10/30, imágenes existentes, cero errores JS, cero enlaces rotos y ninguna estadística sin fuente.
- Probar cuatro respuestas del quiz, feedback, explicación y no repetición inmediata.
- Confirmar que ningún juego existente, index principal, SEO, sitemap, robots o archivos ajenos se han modificado.
- No hacer commit/push sin autorización.

## 9. PLAN DE ENTREGA PARA MAÑANA POR LA TARDE

Prioridad de entrega: una versión real jugable y estable, no una maqueta vacía.

Orden recomendado:
1. Inventario inmediato y rescate de marcos/datos existentes.
2. Fijar lista y rarezas con el usuario.
3. Motor de álbum y fichas basado en JSON.
4. Incorporar el lote de fotografías verificadas disponible.
5. Quiz de identificación.
6. Historias y estadísticas verificadas; priorizar primero los 20 cromos Diamante/Oro y completar los 30 restantes sin inventar.
7. QA móvil/desktop y entrega local.

**Condición honesta de alcance:** si no se pueden conseguir legalmente 50 retratos de calidad y verificar 250 historias antes de mañana, no rellenar con contenido falso ni imágenes dudosas. Entregar el juego funcional con los cromos realmente completos, y dejar visibles los pendientes en un registro de producción. El motor, la estructura y la biblioteca deben quedar preparados para completar el resto sin rehacer el juego.

## 10. CRITERIOS DE ACEPTACIÓN

- [ ] Integrado en el proyecto correcto, sin tocar Business-ONE.
- [ ] Acceso desde el menú existente.
- [ ] Perfiles Mireia y Guest separados.
- [ ] Álbum con 50 espacios.
- [ ] Exactamente 10 Diamante, 10 Oro y 30 Blanco/Violeta.
- [ ] Marcos originales reutilizados.
- [ ] Fichas con periodo, partidos, goles, asistencias (o no disponible), títulos y premios.
- [ ] Cada jugador con 4–5 historias concretas y verificadas antes de marcarlo como completo.
- [ ] Retratos reales, revisados y con fuente/licencia documentadas.
- [ ] Quiz «¿Quién es este jugador?» jugable con cuatro respuestas.
- [ ] Modelo de datos preparado para quiz de efemérides con cuatro fotografías.
- [ ] Responsive en móvil/tablet/escritorio.
- [ ] Sin errores de consola ni recursos rotos.
- [ ] README actualizado con rutas reales, cómo ejecutar, cómo añadir jugador, foto, historia y fuente.
- [ ] No commit ni push sin permiso.

## 11. INSTRUCCIÓN MAESTRA PARA OPENCode / VS CODE

Lee íntegramente `PLAN.md` y `README.md` del proyecto antes de actuar. Sigue este documento como especificación vinculante.

Trabaja en modo económico: una sola inspección inicial, reutiliza los activos y scripts existentes, no hagas auditorías repetidas ni reescribas archivos completos si basta un cambio localizado. No generes imágenes ni datos ficticios. No uses imágenes de jugadores generadas por IA. No inventes estadísticas, títulos, premios, fechas, precios de fichajes ni anécdotas.

Empieza por FASE 0. Devuelve un inventario concreto de:
1. ruta real del juego y punto de entrada;
2. CSV/JSON/documentos de continuidad encontrados;
3. marcos Diamante/Oro/Blanco-Violeta encontrados;
4. retratos y fotografías existentes;
5. navegación y sistema de progreso que debe integrarse;
6. archivos que propones crear/modificar.

Después continúa por fases sin tocar otros juegos. Si falta un activo crítico o una decisión que corresponde al usuario, pregunta una sola cuestión concreta y espera. Mantén `PLAN.md`, `README.md` y una tabla de producción actualizados para que otro agente pueda continuar sin contexto de conversación.

No hagas commit, push, despliegue ni cambios en producción. Al terminar cada fase, informa de archivos tocados, pruebas realizadas, resultados y pendientes. Nunca declares completo algo que esté pendiente de verificación.

---

## 12. INVENTARIO REAL — FASE 0 (08/11/2026)

### 12.1 Dónde está el proyecto

- Carpeta real: `peques/real-madrid-cromos/`.
- Estado: solo documentación. No hay HTML, CSS, JS, JSON, imágenes ni marcos del juego en el repositorio.
- Documento maestro: `peques/real-madrid-cromos/PLAN_MAESTRO_REAL_MADRID_CROMOS.md`.
- El archivo `peques/real-madrid-cromos/PLAN.md` **no existe**; cualquier instrucción que lo mencione debe remitirse al documento maestro.
- Inventario y guía de continuidad: `peques/real-madrid-cromos/README.md`.

### 12.2 Material encontrado

| Material | Ruta exacta | Estado |
|---|---|---|
| Documento maestro | `peques/real-madrid-cromos/PLAN_MAESTRO_REAL_MADRID_CROMOS.md` | Completo, fuente de verdad |
| Paquete de continuidad | `C:\Users\Usuario\Downloads\Real_Madrid_Cromos_Paquete_Continuidad.zip` | 12.606 bytes, 12 archivos, sin imágenes ni código |
| Copia extraída del paquete | `C:\Users\Usuario\AppData\Local\Temp\rm-cromos-inventory\Real_Madrid_Cromos_Paquete\` | Temporal, no es fuente de verdad |
| Prototipo visual | `C:\Users\Usuario\Downloads\cromo_prueba.html` | 10.236 bytes, incompleto (se corta en la línea 281), no aprobado |
| Lista de 50 jugadores | ZIP → `02_DATOS/jugadores_50_provisional.csv` | 50 filas, estadísticas vacías, sin aprobar |
| Plantilla de estadísticas | ZIP → `02_DATOS/plantilla_estadisticas.csv` | Solo cabecera |
| Fuentes | ZIP → `03_RECURSOS/fuentes.json` y `fuentes_y_metodologia.md` | Puntos de partida, sin datos verificados |
| Checklist | ZIP → `07_CONTROL_CALIDAD/CHECKLIST.md` | Sin completar |

### 12.3 Marcos y fotografías

- **Marcos Diamante, Oro y Blanco/Violeta: no encontrados** como archivos en el repositorio, en `~/Downloads`, en los interiores de los dos ZIP ni en la copia extraída.
- **Fotografías de jugadores: ninguna** descargada ni con licencia verificada.
- `cromo_prueba.html` solo maqueta un marco con degradado; no es un marco original ni aprobado y no debe reutilizarse como diseño final.
- La única imagen del Real Madrid en el repositorio es `peques/imagenes/puzzles/puzzle-07-real_madrid.jpg`, perteneciente a los puzzles; no sirve para los cromos.
- **Decisión:** no improvisar marcos ni descargar retratos. Pedir al usuario la ubicación de los marcos originales y autorización para las fotografías.

### 12.4 Integración comprobada

- Menú de Juegos: `peques/areas-test.html?area=juegos&profile=<perfil>`; entrada en `areaCatalog.juegos.modules` con `kind:'page'` y `profiles:['mireia','guest']`.
- Acceso al menú desde `peques/mundo-mireia.html` (zona «Juegos», línea 107).
- Patrón de página: `auth-guard.js` en el `<head>`, `progress-shared.js` antes del script principal, `profileId` desde `?profile=`, vuelta a `mundo-mireia.html?avatar=restored&profile=...`.
- Progreso: `mundoAprendizajeProgressV3_<perfil>` con `{ stars, rounds, byGame, byArea }`; usar `MiProgreso.area()` y `byGame['<area>_<modo>']`.
- `guest` entra sin PIN; `mireia` exige sesión en producción. En local se permite abrir sin sesión.
- Badge NEW del menú: `newFor:['mireia','guest']`. El sistema de 24 h `mundoAprendizajeNewSeen_<slug>_<perfil>` se usa en `idiomas.html`, no en el menú de Juegos.
- Copia de seguridad: `peques/mi-progreso.html` admite la clave de progreso y `mundoAprendizajeNewSeen_*`; si el juego crea claves propias, habrá que añadirlas a su whitelist.

### 12.5 Pendientes antes de construir

1. Ubicación de los marcos originales Diamante, Oro y Blanco/Violeta.
2. Aprobación de la lista de 50 y de la distribución 10/10/30.
3. Fotografías con licencia y atribución verificadas.
4. Estadísticas, títulos y premios contrastados con fuente y fecha.
5. Historias verificadas (4–5 por jugador).
6. Decisión sobre las claves de localStorage del álbum y su inclusión en la copia de seguridad.
7. Unificar el nombre de la tercera rareza: el CSV dice «Plata/Violeta» y el documento maestro/la orden del usuario dicen «Blanco/Violeta».

### 12.6 Conclusión

La Fase 0 está terminada y el proyecto está **preparado para empezar la Fase 1 (datos y selección)**, pero **no para la Fase 2 (marcos y fotografías)** hasta recibir los activos originales y la autorización correspondiente. No se ha modificado ningún archivo ajeno al proyecto, no se ha hecho commit ni push y no se ha tocado producción.

---

## 13. INTEGRACIÓN DIAMANTE (16–17/11/2026)

### 13.1 Qué se ha construido

Con la orden del usuario (PROMPT_OPENCODE_GLM_5_3_REAL_MADRID_DIAMANTE.txt) y el dossier del 15/11/2026 se ha construido la primera versión funcional del bloque DIAMANTE, **solo en local y sin publicar**:

- `data/players.json` (97.836 B): 10 jugadores en el orden fijo, 20 caras lógicas (MADRID/TODOS), 265 objetos de estadística, cada uno con `value`, `label`, `source`, `source_url`, `status`, `last_checked` (2026-11-15) y `note`. Asteriscos en todo lo marcado con `*`/REVISAR; `null` + `needs_verification` donde no hay cifra fiable; discrepancias conservadas con nota (CR7 451/450, Raúl 15/16, Gento 2–3 copas, Puskás, Modrić 28).
- `index.html` (34,6 KB): portada, rejilla de 10 cartas y vista de carta con toggle MADRID/TODOS (`aria-pressed`, foco, Escape). Carta de Cristiano con la imagen aprobada; los otros 9 con carta CSS (mosaico prismático, interior azul marino, escudo simplificado como marca de agua, bandera SVG simplificada con flecos, placa de 3 métricas) y retrato placeholder de silueta. Cara TODOS: clubes cronológicos + selecciones, sin mención al Real Madrid; B.O.A.T. solo en el reverso de Cristiano como etiqueta editorial. Patrón del sitio: `auth-guard.js`, `progress-shared.js`, `?profile=`, vuelta a `mundo-mireia.html`, fondo `gold-bg.jpg`.
- `tests/validar-datos.html` (19,9 KB): QA de 10 reglas PASS/FAIL en el navegador (no hay Node en la máquina).
- Documentación: `README.md` actualizado (mapa real, esquema del JSON, cómo añadir jugador, cómo ejecutar), `DECISIONES.md` y `TAREAS.md` nuevos.

### 13.2 Reglas aplicadas

Sin cifras inventadas (todo sale del dossier), ceros solo reales (Casillas y Puskás con España), «Sin registro fiable*» en lugar de N/D o 0, dorsales solo el «07» de Cristiano, sin retratos generados por IA, sin commit/push y sin tocar archivos ajenos al juego. Detalle completo en `DECISIONES.md`.

### 13.3 Verificación en local (16/11/2026)

- QA: 10/10 reglas PASS (10 jugadores, 20 caras, 265 estadísticas completas, sin «N/D», ceros solo reales, sin fuga de «Real Madrid» en TODOS).
- Navegación: portada → rejilla (10 cartas) → carta → toggle de cara → notas de asterisco → Escape a la rejilla; carta de Cristiano con imagen aprobada (carga ~1 s, PNG de 2,7 MB).
- Layout: sin desbordamiento horizontal a 817, 390 y 320 px (medido con iframes en vista rejilla, carta MADRID y cara TODOS); sin errores de consola.
- Fallo corregido durante la revisión: la portada apuntaba la imagen con `../` y daba 404; corregido a la ruta de la misma carpeta.

### 13.4 Pendiente para completar (ver `TAREAS.md`)

1. 9 retratos/cartas reales con licencia verificada (hoy placeholder).
2. Cifras REVISAR y discrepancias del dossier.
3. Marcos Oro y Blanco/Violeta y el resto de la lista de 50 (sin aprobar por el usuario).
4. Quiz de identificación y modo efemérides; historias (4–5 por jugador).
5. Progreso por perfil y claves de localStorage (whitelist en `mi-progreso.html`).
6. Integración en `peques/areas-test.html` (menú de Juegos) y publicar, previa autorización.
