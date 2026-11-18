# Referencia visual v2 — Carta doble Di Stéfano (aportada por el usuario, 17/11/2026)

> Nueva referencia de estilo aprobada por el usuario: **una sola imagen con las dos caras** (anverso y reverso juntos).
> El archivo original aún no está en el disco: pedir al usuario que lo guarde en `~/Downloads/RM cromos/`
> (nombre sugerido: `REFERENCIA_DOBLE_DiStefano.png`) para copiarlo a `assets/` como referencia del paquete.

## 1. Calidad de la imagen

| Aspecto | Detalle |
|---|---|
| Formato | Una imagen horizontal con el anverso a la izquierda y el reverso a la derecha, separados por un margen blanco. |
| Resolución estimada | ~1540×1010 px (cada cara ~730×1010). Nítida, sin ruido visible. |
| Esquinas | Redondeadas en ambas caras; el marco llega hasta el borde. |
| Acabado | Efecto holográfico premium: mosaico facetado arcoíris (colores saturados) + detalles dorados con brillo. Nivel de detalle alto en marcos, escudos y banderas. |

## 2. Estilo — anverso (cara «MADRID»)

1. **Marco**: mosaico de cristales facetados arcoíris (más colorido que el mosaico blanco/plata/azul de la carta de CR7), con esquinas redondeadas.
2. **Interior**: azul marino oscuro con el escudo del Real Madrid gigante como marca de agua detrás del jugador y la corona arriba.
3. **Bandera** de Argentina arriba a la izquierda (no arriba a la derecha como en CR7).
4. **Retrato**: blanco y negro, serio y con orgullo, de medio perfil/tres cuartos, con la camiseta blanca y el escudo del club en el pecho (a color el escudo destaca sobre el retrato b/n).
5. **Placa inferior dorada**: nombre en mayúsculas doradas («ALFREDO DI STÉFANO») con relieve.
6. Debajo, en blanco: «REAL MADRID · 1953–1964», «396 PARTIDOS OFICIALES» y «308 GOLES» (goles destacado más grande).
7. **Fila de 4 trofeos con iconos** y su texto debajo, separados por líneas verticales doradas: Copa de Europa (5), Liga (8), Copa (1), Intercontinental (1).
8. La carta no muestra dorsal en esta referencia (la de CR7 sí llevaba «07»).

## 3. Estilo — reverso (cara «TODOS»)

1. Cabecera con banda dorada: **«TRAYECTORIA PROFESIONAL»** en mayúsculas oscuras.
2. **Una fila por club**, en tarjetas redondeadas con borde dorado: bandera del país (rectangular) + escudo del club + nombre en mayúsculas doradas + años en dorado + línea de estadísticas «PARTIDOS | GOLES | ASIST.» en blanco.
3. Clubs en orden cronológico: River Plate (1945 · 1947–1949), Huracán (1946 · CEDIDO), Millonarios (1949–1952), Real Madrid (1953–1964), RCD Espanyol (1964–1965).
4. **Bloque «LAURELES INDIVIDUALES»** al pie, con ramas de laurel doradas y separadores verticales: Balón de Oro (1957, 1959), Súper Balón de Oro (1989), Pichichi (5 veces). Cada premio con su icono (balón dorado, bota dorada).
5. Sin sección de selecciones separada: los ciclos con Argentina/Colombia/España quedan reflejados por la bandera del país de cada fila de club.

## 4. Nota de datos (no copiar el «N/D»)

- La referencia usa **«ASIST. N/D»**. Nuestro proyecto **no usa N/D**: se mantiene la regla «Sin registro fiable*» (`value: null` + `needs_verification`).
- La cara TODOS de la referencia incluye al **Real Madrid** (es una vista de toda la trayectoria). Nuestro QA prohibe mencionar Real Madrid en la cara TODOS porque la cara MADRID ya lo cubre: **se mantiene nuestra regla** (el estilo se adopta, el contenido lo define el dossier y el QA).

## 5. Datos nuevos que aporta la referencia (cotejados con `data/players.json`)

| Dato de la referencia | Estado en nuestro JSON | Acción |
|---|---|---|
| RCD Espanyol 1964–1965 · 60 partidos, 14 goles | **No está** | Añadir a `faces.todos.clubs` cuando se confirme con fuente primaria (apuntado en `TAREAS.md`) |
| River Plate «1945 · 1947–1949» | «1945–1949 y 1953 (según fuentes)» | Contrastar el regreso de 1953 |
| Huracán «1946 · CEDIDO» | «1946–1947» | Contrastar si fue 1946 año completo en calidad de cedido |
| Millonarios «1949–1952» | «1949–1953» | Contrastar el año final (¿1952 o 1953?) |
| Balón de Oro 1957 y 1959 | «Balón de Oro = 2» sin temporadas | Añadir `seasons: ['1957','1959']` |
| Súper Balón de Oro 1989 | «Súper Balón de Oro = 1» sin temporada | Añadir `seasons: ['1989']` |
| Pichichi 5 veces | «Pichichi = 5» sin temporadas | Buscar las 5 temporadas con fuente |
| Madrid 396/308 · 5 Copas de Europa · 8 Ligas · 1 Copa · 1 Intercontinental | Coincide (nuestro JSON añade Copa Latina 2) | Sin acción; la referencia omite la Copa Latina, nuestra fuente la mantiene |

## 6. Navegación tipo cuenta atrás (decisión de UX, 17/11/2026)

A petición del usuario, el álbum **ya no muestra las 10 cartas a la vez**:

- Se entra por la **carta 10 (Casillas)** y se baja hasta la **1 (Cristiano)**: cuenta atrás.
- Cada carta se ve de **una cara cada vez** (nunca las dos a la vez): botones MADRID / TODOS.
- Navegación con **«← Atrás»** y **«Siguiente →»** (+ flechas del teclado; Escape vuelve a la portada).
- Insignia circular con el número de carta (cuenta atrás visible) y estados deshabilitados en los extremos; en la carta 1 el botón pasa a «Fin de la colección».
- La rejilla de 10 miniaturas se ha eliminado del flujo.

## 7. Cómo pedir las próximas cartas (plantilla de prompt, v2)

Para las 9 cartas pendientes, generar **cada cara por separado** (2 imágenes por jugador) con el estilo de esta referencia:

- Anverso: mosaico arcoíris, retrato b/n con orgullo de medio perfil, bandera arriba a la izquierda, placa dorada con el nombre, equipo · años, partidos y goles, fila de trofeos con iconos.
- Reverso: banda «TRAYECTORIA PROFESIONAL», filas por club con bandera + escudo + años + PARTIDOS | GOLES (sin «N/D»; los datos sin registro se omiten o se marcan con *), bloque «LAURELES INDIVIDUALES» con laurel si procede.

Los prompts actualizados vivirán en `assets/players/PROMPT_CARTAS_PENDIENTES.md`.

## 8. Giro 3D implementado (18/11/2026)

El cambio de cara ya no es instantáneo: al pulsar **MADRID** o **TODOS** la carta gira 180° en horizontal.

- **CSS**: `#flipStage` (perspectiva 1800 px y altura animada) → `#flipInner` (`transform-style:preserve-3d`, `transition:transform .62s`) → dos caras `.flip-face` con `backface-visibility:hidden`; la trasera va pre-rotada 180°.
- **JS**: `setFace()` alterna `is-flipped`, fija `aria-hidden` y `inert` en la cara oculta y llama a `sizeStage()`, que ajusta la altura del escenario a la cara visible. Un `ResizeObserver` mantiene la altura cuando carga la imagen o cambia el contenido; también se recalcula al redimensionar.
- **Accesibilidad**: la cara oculta no recibe foco (`inert`), los botones siguen usando `aria-pressed`, y `prefers-reduced-motion: reduce` elimina la transición.
- **Verificado**: MADRID → TODOS → MADRID, cambio de carta con una cara activa, Escape a la portada, sin recortes ni saltos, sin errores de consola y sin desbordes a 817/390/320 px.

Cuando lleguen los diseños del usuario (CR7, Di Stéfano y Raúl, dos caras), cada cara mostrará su imagen real (`cardImageFront` / `cardImageBack`) dentro del mismo escenario giratorio.
