# Mi Mundo de Aprendizaje

## Objetivo
Crear una plataforma propia de juegos educativos para mis dos hijas,
partiendo de la estructura inicial de Mundo Mellis.

## Para quién
- Niña de 2 años y medio: juegos visuales, sonidos, colores, formas,
  animales, primeras palabras y números.
- Niña de 7 años: lectura, vocabulario, matemáticas, memoria, lógica,
  ciencias y retos progresivos.

## Objetivos principales
1. Tener juegos apropiados para cada edad.
2. Poder crear nuevos juegos fácilmente, sin programar cada uno.
3. Acceder desde cualquier dispositivo a través de Internet.
4. Poder utilizar los juegos sin conexión.
5. Guardar estrellas y progresos.
6. Mantener una interfaz sencilla, alegre y adaptada a cada edad.

## Estado actual
La web está en peques/index.html.
Es una aplicación de HTML, CSS y JavaScript en un solo archivo.

Funciones existentes:
- Selector de nivel de 3 y 7 años.
- Juegos de matemáticas, palabras, memoria y escucha.
- Síntesis de voz del navegador en español.
- Estrellas y retos guardados en localStorage.
- Diseño adaptable a móvil y ordenador.

## Plan de trabajo
1. Revisar y conservar una copia de seguridad de la versión inicial.
2. Mejorar la selección de perfiles y adaptar los juegos a cada edad.
3. Crear un editor sencillo para añadir juegos y preguntas.
4. Preparar una PWA con recursos descargables y funcionamiento offline.
5. Probar la web en ordenador, tableta y móvil.
6. Publicar mediante GitHub Pages.
7. Evaluar más adelante la sincronización online entre dispositivos.

## Consideraciones
- Los datos de localStorage se guardan en el navegador y dispositivo.
- Los juegos offline necesitarán sus recursos disponibles localmente.
- La sincronización entre dispositivos requerirá un servicio adicional.
- Antes de cambiar la aplicación, conservar una copia de seguridad.

## Próximo objetivo
Preparar una primera versión con dos mundos diferenciados,
uno para cada niña, manteniendo los juegos que ya funcionan.
# Hoja de ruta — Mi Mundo de Aprendizaje

## 1. Objetivo del proyecto

Crear una aplicación educativa y lúdica para Mireia y Sofía, adaptada a sus edades, que combine aprendizaje, creatividad, atención y diversión. El proyecto crecerá por etapas y mantendrá una versión funcional durante el desarrollo.

## 2. Perfiles

* **Mireia:** actividades educativas con distintos niveles, pruebas, puntuaciones e histórico de resultados.
* **Sofía:** actividades visuales, sonidos, colores, asociación, cuentos y juegos sencillos, con menos énfasis en las puntuaciones.
* Cada niña tendrá su propio perfil y progreso independiente.

## 3. Idiomas

Desde el principio se contemplarán:

* Castellano.
* Catalán.
* Inglés.

Cada actividad indicará el idioma correspondiente.

## 4. Materias y actividades

### Aprendizaje

* Matemáticas: sumas, restas, multiplicaciones, cálculo mental, problemas y quizzes.
* Castellano: lectura, escritura, vocabulario y comprensión.
* Catalán: lectura, escritura, vocabulario y comprensión.
* Inglés: vocabulario, lectura, escucha y comprensión.
* Ciencias.
* Historia.

### Creatividad y entretenimiento

* Dibujo y colorear.
* Música y reconocimiento de sonidos.
* Puzles y laberintos.
* Encuentra las diferencias.
* Sopas de letras.
* Juegos de memoria y atención.
* Chiste del día, adivinanzas y curiosidades.
* Nuevas materias y juegos que se incorporarán progresivamente.

Los juegos basados en personajes conocidos deberán respetar los derechos de autor.

## 5. Exámenes e histórico

Las pruebas educativas tendrán normalmente entre 10 y 20 preguntas, según la actividad y la edad.

Cada intento podrá registrar:

* Fecha y actividad realizada.
* Idioma y nivel.
* Número de preguntas y respuestas correctas.
* Puntuación.
* Tiempo empleado, cuando sea relevante.
* Errores y conceptos que conviene repasar.
* Identificación de la actividad para distinguir entre pruebas nuevas y repetidas.

El sistema permitirá consultar el histórico y observar la evolución a lo largo del tiempo. Los resultados servirán para adaptar las actividades, no para diagnosticar capacidades o dificultades.

## 6. Duración y organización

* Objetivo orientativo para Mireia: sesiones de 30–40 minutos.
* Actividades cortas de aproximadamente 5–8 minutos.
* Sesiones flexibles, con posibilidad de descansar o terminar antes.
* Para Sofía: sesiones adaptadas a su edad, más cortas y centradas en explorar y jugar.
* Se probará inicialmente una frecuencia de incorporación de contenido nuevo cada 3–4 días o semanalmente.

## 7. Instalación y sincronización

### Primera etapa: PWA

Convertir la web en una aplicación instalable desde la pantalla de inicio de móviles y tablets.

Preparar funcionamiento sin conexión para las actividades compatibles.

### Segunda etapa: sincronización

Utilizar una base de datos en línea, valorando Supabase, para sincronizar perfiles y resultados entre dispositivos.

El acceso será privado. Cada familia deberá tener sus datos aislados si en el futuro se amplía el proyecto a otras familias.

### Tercera etapa: Android

Cuando la web y la sincronización estén probadas, preparar una versión instalable para Android y valorar su publicación en Google Play.

## 8. Orden de desarrollo

1. Recuperar y comprobar el proyecto actual.
2. Revisar los perfiles, imágenes y juegos existentes.
3. Crear una copia de seguridad.
4. Convertir la web en PWA.
5. Preparar la base de datos, el acceso privado y la sincronización.
6. Implementar el histórico de resultados.
7. Desarrollar las primeras actividades de Matemáticas, idiomas y atención.
8. Incorporar progresivamente creatividad, ciencias, historia y otros juegos.
9. Probar el funcionamiento en móvil y tablet.
10. Preparar la aplicación Android.

## 9. Principios del proyecto

* Dar instrucciones de desarrollo paso a paso.
* No eliminar funciones existentes sin comprobar antes su uso.
* Hacer copias de seguridad antes de cambios importantes.
* Probar cada etapa antes de continuar.
* Priorizar la privacidad y la seguridad de los datos infantiles.
* Mantener una experiencia positiva, divertida y adaptada a cada edad.

## 10. Estado actual

El proyecto web inicial existe en la carpeta `peques/`. La siguiente tarea es comprobar que Codespaces abre correctamente, que los perfiles funcionan y que los juegos originales siguen operativos antes de comenzar las modificaciones de la PWA.


---

# Plan maestro actualizado — 19/10/2026

## Prioridad actual: mundo de aventuras de Mireia

Desarrollar primero el mundo de Mireia; adaptar más adelante una experiencia apropiada para Sofía. El objetivo visual es un videojuego educativo infantil con una isla de aventuras, mapa conectado por caminos, acabado 3D de juguete y colores vibrantes. La composición debe conservar la idea de isla de aventura y los puntos de interés deben ser grandes, equilibrados, fáciles de reconocer y con nombres muy legibles.

### Mapa principal: 13 puntos

Las 12 zonas educativas y el punto futuro son:
1. Mi Mates.
2. Mi Lectura.
3. Mi Escritura.
4. Mi Inglés.
5. Mi Catalán.
6. Mi Alemán.
7. Ciencias.
8. Música.
9. Biblioteca de Cuentos.
10. Mitología Griega.
11. Mitología India.
12. Juegos.
13. Área en construcción.

Ideas visuales específicas: un palacio inspirado en el Taj Mahal para Mitología India; un barco visible en un puerto dentro del mar; un avión F/A-18 en maniobra de izquierda a derecha, inclinado y con las dos alas visibles, para Ciencias. Inventar hitos visuales memorables para las demás zonas, manteniendo la coherencia del mapa.

Título de trabajo: **EL MUNDO MÁGICO DE MIREIA**. La referencia visual elegida por la usuaria está versionada en `peques/imagenes/fondomundomireia.webp`; el PNG original se conserva en la carpeta de entregables local.

## Interfaz de la pantalla del mapa

### Barra superior
- Foto/ avatar de Mireia en tamaño pequeño, arriba a la izquierda, manteniendo la identidad visual de la página actual.
- En la parte superior derecha: banderas para Español, Inglés, Catalán y Alemán.
- Mostrar fecha como DD/MM/AAAA y hora como HH:MM.
- Mostrar los contadores de estrellas doradas, plateadas y de bronce por separado.
- Añadir un botón **Salir** que vuelva a la pantalla de selección de perfil.
- Cambiar el idioma no debe reiniciar la actividad, exigir el PIN de nuevo ni borrar el progreso de la sesión.

### Elementos que se pueden retirar de la pantalla principal
- Selector «Nivel».
- Etiquetas «Practicar» y «Elige una actividad».
- Bloques actuales «Mi progreso» y «Buen trabajo» y otros resúmenes que recarguen la pantalla.
- Conservar las funciones de perfiles, PIN, idiomas, juegos y progreso existentes; revisar el código antes de eliminar cualquier función y no tocar datos guardados sin una estrategia de migración.

## Panel separado de fiestas y temporadas

La zona de «Eventos Especiales» debe ir en una columna negra independiente, a la derecha del mapa y debajo de la fila superior de marcadores y del botón Salir. No debe cubrir la isla ni las etiquetas de áreas educativas. La imagen de fondo de la isla debe guardarse sin el panel viejo incrustado: para la vista previa se conserva la parte izquierda de 1280 × 1024 px, que mantiene la etiqueta de Lengua Alemán, y se reserva a su lado una columna negra para la interfaz de eventos. La columna incluirá los trece eventos con tarjetas de las mismas dimensiones e identidad de color propia. Los eventos inactivos se verán en blanco y negro; el evento activo se iluminará con sus colores estacionales. La zona «Área en construcción» debe quedar dentro del mapa, fuera del panel y visible. El panel y su lógica deben poder reutilizarse cambiando tema, icono y actividades sin rediseñar el mapa.

Paletas iniciales:
- Halloween: naranja, negro y marrón, con ambiente otoñal.
- Navidad: rojo, verde y blanco.
- Verano: azul, amarillo y blanco.
- Semana Santa: violeta, oro y blanco.
- Sant Joan, San Sebastián, San Patricio y otras celebraciones apropiadas: colores e iconos propios.

El lanzamiento inicial debe estar tematizado para Halloween. La temporada activa se destacará en el panel; el resto permanecerá visualmente atenuado.

## Sistema de estrellas y registro

### Agregación de estrellas por área y perfil

- Cada perfil conserva contadores independientes por área: `byArea[area].gold`, `byArea[area].silver` y `byArea[area].bronze`.
- Los colores reflejan la calidad del resultado, no el nombre del área: dorada, plateada y bronce siguen los umbrales de acierto definidos abajo. Las actividades de una sola pregunta correctas al primer o último intento cuentan como 100% y suman dorada; las pruebas de varias preguntas asignan el color al resultado final.
- El marcador del perfil se calcula sumando los contadores de todas sus áreas; no se guarda como un total independiente que pueda desincronizarse.
- Cada actividad actualiza el contador del área a la que pertenece. La relación inicial es: Matemáticas → Mi Mates; Palabras y Escucha → Mi Lectura; Memoria → Juegos.
- Los perfiles siguen aislados por su clave de almacenamiento.
- El futuro registro de actividad guardará área, módulo, fecha, idioma, nivel, resultado y estrellas para mostrar qué áreas practica más y dónde obtiene mejores resultados.
- Al migrar el progreso antiguo, las estrellas se repartirán según los juegos ya guardados; cualquier resto sin área identificable se conservará bajo «Actividades anteriores».

Para actividades internas, la idea inicial de recompensa es:
- 100% de respuestas correctas: una estrella dorada.
- Más del 75% y menos del 100%: una estrella plateada.
- Del 60% al 75%, ambos incluidos: una estrella de bronce.
- Menos del 60%: sin estrella todavía y opción de repetir.

Para actividades externas, no afirmar que se conoce la puntuación del sitio externo. Se puede registrar una misión completada mediante confirmación manual y conceder una estrella por sesión/objetivo, no por cada pregunta individual. Guardar, cuando sea posible, fecha, actividad/zona, idioma, puntuación, intentos, duración y estrellas. La sincronización entre dispositivos no debe darse por existente hasta verificarla; actualmente el almacenamiento conocido usa localStorage y puede ser específico del navegador/dispositivo.

Para el quiz de cuentos de cinco preguntas: cuatro opciones por pregunta; no revelar inmediatamente cuál era la respuesta correcta. Mostrar el resultado total al final. Regla provisional para confirmar al implementarlo: 5/5 = 2 estrellas; 3–4 correctas = 1 estrella; 0–2 correctas = repetir sin premio. Esta interpretación evita la contradicción entre «una estrella si hay algún error» y «repetir si hay tres o más errores».

## Recursos educativos y desarrollo incremental

- Aprovechar recursos educativos externos para no tener que producir todas las historias, imágenes y audios desde cero.
- «Cuentos 1»: enlace a https://www.mundoprimaria.com/cuentos-infantiles-cortos.
- «Cuentos 2»: quizzes propios de cinco preguntas asociados a cuentos concretos.
- En «Mi Mates», priorizar juegos externos adecuados y registrar la misión/sesión completada manualmente cuando no exista integración verificable.
- No dar a Mireia la respuesta correcta después de cada pregunta; presentar el resultado agregado al terminar.

## Orden de trabajo acordado
1. Revisar la aplicación y su estructura actual sin modificarla inicialmente.
2. Conservar perfiles, PIN, idiomas, juegos y progreso funcionales.
3. Integrar el mapa de aventuras como pantalla principal y los 13 puntos.
4. Crear el panel separado de fiestas/temporadas.
5. Implementar estrellas, registro de misiones y pruebas internas de forma gradual.
6. Incorporar recursos externos y quizzes de cuentos.
7. Aplicar el tema Halloween, probar en móvil y ordenador y solo entonces publicar.
8. Hacer copias de seguridad antes de cambios importantes; no sobrescribir ni borrar el stash de Git sin necesidad.



## Calendario y experiencia de eventos especiales

### Apariencia y ventanas de activación

La página principal mostrará una tarjeta por evento con el nombre acordado y una imagen o portada. Cada tarjeta estará en blanco y negro cuando su periodo especial no esté activo y se iluminará con sus colores cuando la fecha actual entre en la ventana indicada. Las ventanas se repiten cada año. Para Navidad y Año Nuevo, cuyo periodo cruza el cambio de año, se considerarán activos los días desde el 15 de diciembre hasta el 2 de enero.

La fecha de activación visual es una ventana de disponibilidad educativa; no sustituye ni modifica las fechas reales de la celebración. En la ficha interior se mostrarán las fechas de la fiesta tal como se celebran (las fechas móviles, como Semana Santa, deberán indicarse según el año cuando se implemente).

### Fichas interiores

Al abrir una tarjeta, Mireia verá:
- El nombre del evento centrado en la parte superior.
- Las fechas de celebración.
- Una explicación breve y adecuada a su edad sobre la fiesta.
- Juegos y actividades relacionados, que pueden incluir fondos temáticos, cuentos, relatos u otros materiales.
- Se podrán reutilizar actividades propias ya existentes o enlazar recursos externos apropiados. Si no hay un recurso atractivo que encaje, se creará material propio.

### Eventos y ventanas acordadas

| Nombre de la tarjeta | Fechas de celebración de referencia | Ventana en que la tarjeta está activa |
|---|---|---|
| Sant Antoni y Sant Sebastià | Sant Antoni Abat: 16–17 de enero; Sant Sebastià: 18–20 de enero | 11–25 de enero |
| Carnaval & Jaia Corema | Enero–febrero; fechas variables | 26 de enero–14 de febrero |
| Diada de Baleares | 1 de marzo | 25 de febrero–5 de marzo |
| St. Jordi y Mamá | 23 de abril | 21–29 de abril |
| San Patricio | 17 de marzo | 10–20 de marzo |
| Semana Santa y Lunes de Pascua | Marzo–abril; fechas variables | 21 de marzo–21 de abril |
| Nit de Sant Joan | 23–24 de junio | 20–25 de junio |
| Vacaciones de Verano | Junio–septiembre | 1 de julio–7 de septiembre |
| Fiesta nacional de España | 12 de octubre | 7–14 de octubre |
| Halloween | 31 de octubre | 15 de octubre–5 de noviembre |
| Puente de la Inmaculada | 6–8 de diciembre | 1–12 de diciembre |
| Navidad & Año Nuevo | 24 de diciembre–1 de enero | 15 de diciembre–2 de enero |
| Los Reyes Magos | 5–6 de enero | 3–10 de enero |

Los periodos anteriores son los acordados para la disponibilidad especial; no mostrar numeración en las tarjetas. La primera implementación conservará los trece eventos y estos nombres. Cualquier celebración adicional será una propuesta pendiente de valoración, no se añadirá automáticamente.

---

## Actualización 25/10/2026 — Naruto: desafío ninja

### Estado

- Nuevo juego `peques/naruto-matematico.html` terminado y probado en local.
- 5 niveles: Muy fácil, Fácil, Medio, Difícil y Élite.
- 3 modos: Sumas, Restas y Mixtos.
- 10 retos por partida, estrellas, resultado, sonidos Web Audio y progreso V3.
- Fondo de Konoha, Naruto animado y Gaara en pixel art.
- Tarjeta nueva en `peques/mi-mates.html` y acceso desde `peques/index.html` para el nivel 7.
- QA responsive a 320, 390 y 1000 px sin overflow horizontal.
- Informe completo en `qa/naruto-2026-10-23/INFORME.md`.

### Publicación

- Publicado en GitHub Pages el 25/10/2026.
- Verificado en producción con Guest: índice, Mi Mates y juego de Naruto.
- Retirada de «Partido de sumas y restas» publicada también para Guest y Mireia.

### Pendiente

- Probar el flujo real de Mireia con PIN en producción.

### Reglas que se mantienen

- No subir `qa/`, `AGENTS.md`, `.opencode/` ni `*.antes-niveles.*`.
- Mantener las reglas de estrellas de Penalti Matemático.
- Usar las claves V3 compartidas; no crear un progreso paralelo.
- Conservar el estilo, los colores y el idioma existentes.
---

## Actualización 25/10/2026 — retirada de «Partido de sumas y restas»

- Eliminado de Mi Mates para Guest y Mireia.
- Retiradas la tarjeta, la pantalla de juego, los balones y la lógica JavaScript del partido.
- Se mantienen Sumas, Restas, Retos mixtos, Penalti matemático y Naruto.
- Se retiraron de `ui-language.js` las traducciones específicas del título y las instrucciones del partido.
- QA responsive a 320, 390 y 892 px sin overflow horizontal; consola limpia.
- Informe: `qa/mi-mates-2026-10-25/INFORME.md`.

---

## Actualización 26/10/2026 — Naruto: sin brazo, kunais en los carteles y música de partida

### Cambios

- Eliminado por completo el brazo animado de Naruto: HTML, CSS y JavaScript. El lanzamiento sale de la zona de la mano izquierda.
- Los fallos ya no lanzan el kunai al suelo: se clava en el cartel del nombre.
  - 1.er fallo: cartel de Gaara.
  - 2.º fallo: cartel de Naruto.
  - 3.er fallo: cartel de Gaara.
  - 4.º y siguientes: Gaara o Naruto al azar.
- Los kunais de los carteles se acumulan y solo se limpian al empezar partida o volver al setup.
- Los aciertos siguen dejando el kunai en el suelo, junto a la arena de Gaara, con 9 variantes.
- Tiempo de vuelo del kunai: 1–2 s según el tamaño de pantalla.
- La pantalla de resultado espera 6,5 s desde la última respuesta; el remate final de 9+ aciertos ocurre dentro de ese margen.
- Gaara un 25 % más grande y Naruto un 10 % más grande, con el kunai ajustado.
- Música separada:
  - Setup: `audios/naruto-theme.mp3`.
  - Partida: `audios/naruto-guitar-cover.mp3` (123.983 bytes).
  - La música de setup se detiene al entrar al juego; la de partida se detiene en el resultado; al reintentar vuelve la de partida y al cambiar de nivel vuelve la de setup.
  - El botón de sonido silencia y reanuda la pista de la pantalla actual, sin solapar ambas.

### Pruebas

- Brazo eliminado: 0 referencias a `naruto-arm`; `noArm=True` en las cuatro partidas de prueba.
- Secuencia de fallos comprobada: Gaara → Naruto → Gaara → aleatorio; contadores 1, 2, 3 y 4; sin kunais de suelo en los fallos.
- Resultados: 10/10 oro, 9/10 plata, 8/10 plata; 6/10 bronce con cuatro fallos.
- Tiempo de resultado medido: 6516–6603 ms en movimiento normal y 6503–6559 ms con movimiento reducido.
- Música comprobada en setup, partida, resultado, reintento y cambio de nivel; sin solape y sin errores de consola.
- Responsive: 320×568, 390×844, 568×320, 844×390, 768×1024, 1024×768 y 1180×820; sin overflow horizontal y respuestas visibles. Se mantiene un scroll vertical de 21 px en 320×568 y un solape leve Gaara–cartel en 768×1024, con el cartel por encima y legible.
- QA: `qa/naruto-mejoras-2026-10-25/ADENDA-2026-10-25-brazo-musica.md` y capturas en `qa/naruto-mejoras-2026-10-25/shots6/`.

### Publicación

- Commit `5215fdc` («Naruto: quita el brazo, kunais en carteles y musica de partida») publicado en `origin/main`.
- GitHub Pages construyó correctamente el commit `5215fdc`.
- Verificado en producción con Guest:
  - `naruto-arm` ausente.
  - `naruto-guitar-cover.mp3` carga con HTTP 200 y 123.983 bytes.
  - Setup reproduce `naruto-theme`; al entrar al juego se pausa y suena `naruto-guitar-cover`; sin errores de consola.
- La copia de seguridad se creará después de publicar, conservando las copias anteriores.

### Copia de seguridad

- Carpeta: `C:\Users\Usuario\Downloads\MiMundo_backup_2026-10-26_naruto-sin-brazo`.
- ZIP: `C:\Users\Usuario\Downloads\MiMundo_backup_2026-10-26_naruto-sin-brazo.zip`.
- Se conservan `MiMundo_backup_2026-10-25_sin-partido` y las copias anteriores.

### Pendiente

- Probar el flujo real de Mireia con PIN en producción.
- Revisar una partida completa en un móvil real.

---

## Actualización 28/10/2026 — Naruto: acción, sonido, kunai en la base, reparto aleatorio y movimiento reducido

### Cambios

- Nueva animación de acción de Naruto (`peques/imagenes/naruto-action-sheet.png`, 11 frames, 150 ms por frame, 1,65 s) que sustituye temporalmente a `naruto-run.webp` en cada respuesta.
- La acción se mantiene hasta que el kunai llega a Gaara o al cartel del nombre; después vuelve el sprite de carrera antes de que aparezca el siguiente reto.
- Fondo de la acción transparente (PNG con alfa), sin caja negra.
- Altura de Naruto en la acción ajustada a la del sprite de carrera: 112,9 px frente a 113,1 px (ratio 1,002).
- Sonido `audios/kunai-throw.mp3` sincronizado con el frame de lanzamiento (1500 ms; frame 10 de la acción).
- Kunai de fallo: la punta se clava en el color de la base del cartel del nombre (borde inferior), con el mango colgando por debajo; ya no cruza las letras ni flota.
- Los kunais de cartel se acumulan y solo se limpian al empezar partida o volver al setup.
- Reparto de carteles aleatorio y equilibrado: `nextMissTarget()` usa bolsas de 4 (2 Gaara + 2 Naruto) barajadas; en 8 fallos, 4 y 4, sin acumular todos en el mismo cartel.
- Tiempos de vuelo ajustados para que el kunai aterrice antes de los 3000 ms del siguiente reto: acierto `950 + 450 * escala`, fallo `900 + 450 * escala`, remate final `1100 + 750 * escala`.
- Movimiento reducido: la acción y el vuelo del kunai son feedback esencial y se mantienen aunque el sistema pida reducir movimiento; el resto de animaciones decorativas sigue respetándose. El remate final también se ejecuta.
- Cache-busting del nuevo asset: `naruto-action-sheet.png?v=20261028a`.

### Pruebas

- Guest 10/10: ORO, suma 1 estrella (15 → 16 en la última pasada), resultado a 6,5 s, `errors=[]`.
- Acción visible a 1500 ms y 2500 ms; oculta a 2900 ms en móvil y a 3100 ms en escritorio, con la carrera visible y el siguiente reto ya en pantalla.
- Fallo móvil: acción visible a 2500 ms con el kunai en vuelo; a 3100 ms la carrera ha vuelto y el kunai está clavado (`nameKunais=1`).
- Punta del kunai dentro del borde inferior del cartel a 390×844 y 1024×768; capturas `mobile8-*` y `desktop8-*`.
- 8 fallos seguidos: 4 Gaara / 4 Naruto; cada kunai aterrizó en el cartel anunciado (`miss-target-random.json`, `miss-target-random-final.png`).
- Movimiento reducido: acción visible a 800 ms y 2500 ms (frame 10), carrera a 2900 ms; fallo con kunai en vuelo a 2500 ms y `nameKunais=1` a 3100 ms; `errors=[]` (`reduced-motion.json`, `reduced-flight.json`, capturas `reduced-*`).
- Offline local con HTTPS/WSS bloqueados y `file://`: solo recursos locales, acción visible a 800 ms, carrera y siguiente reto a 2,9 s, sin errores.
- QA: `qa/naruto-mejoras-2026-10-25/ADENDA-2026-10-25-brazo-musica.md`, sección 8.

### Publicación

- **Pendiente de aprobación del usuario.** No se ha hecho commit ni push; la producción sigue en `5215fdc`.
- La copia de seguridad se creará después de publicar, conservando las copias anteriores.

### Pendiente

- Aprobación del usuario y publicación.
- Probar el flujo real de Mireia con PIN en producción.
- Revisar una partida completa en un móvil real.

## Actualización 28/10/2026 — Naruto: acción +50 %, Gaara −15 % y ajuste del recorte en 500 px

### Cambios

- La animación de acción de Naruto (`.naruto-action`) es un 50 % más grande: `height: 146.25%` (antes 97,5 %) y `left: calc(50% + max(12px, 10%))` para no recortar el fotograma más ancho en el borde izquierdo del stage. Se mantienen duración, keyframes, proporción 288:268, posición inferior y sprite de carrera.
- Gaara es un 15 % más pequeño en general: las tres anchuras de `.fighter-gaara` pasan al 85 % (base `clamp(127.5px, 36.125%, 318.75px)`, móvil `clamp(117.3px, 36.125%, 202.3px)`, landscape bajo `clamp(106.25px, 34%, 202.3px)`). No cambian nameplates, escudo de arena, posiciones ni el resto del layout.
- Sin cambios en reparto aleatorio, tiempos, sonido, kunai en la base, movimiento reducido, Guest/offline ni cache-busting.

### Pruebas

- Medidas en 320×568, 390×844, 500×805, 568×320, 720×900, 768×1024, 1024×768 y 1180×820: acción ×1,50 (1,4998–1,5001); Gaara ×0,85 (0,8500).
- A 390×844 la acción mide 187,23×174,23 px y Gaara 131,48 px (antes 154,69 px). El margen izquierdo mínimo es +0,79 px a 390 y +1,02 px a 500; ya no hay solape ni recorte en ningún viewport medido. El fix también corrigió 720×900, que antes quedaba a −2,96 px.
- Acción visible a 800 y 2500 ms; oculta y carrera visible a ~3050 ms. Fallo con kunai en vuelo a 2500 ms y `nameKunais=1` a 3100–3150 ms.
- Guest 10/10: ORO, +1 estrella, `errors=[]`; también a 500×805 (19→20). 8 fallos 4 Gaara / 4 Naruto y `match=true`; movimiento reducido y `file://` sin errores; escudo de arena dentro del stage y sin solapar carteles.
- QA: `qa/naruto-mejoras-2026-10-25/ADENDA-2026-10-25-brazo-musica.md`, sección 9; datos `qa-size-*` en `qa/naruto-mejoras-2026-10-25/shots6/`.

### Publicación

- Publicado junto con la pausa final en `52dabb8` (28/10/2026).
- Copia creada en `C:\Users\Usuario\Downloads\MiMundo_backup_2026-10-28_naruto-accion` (ZIP de 10,2 MB; sin `.git` ni `qa/` completa), conservando las copias anteriores.

### Pendiente

- Probar el flujo real de Mireia con PIN en producción.
- Revisar una partida completa en un móvil real.

## Actualización 28/10/2026 — Naruto: pausa de 5 s con Gaara caído antes del resultado

### Cambios

- En `finishGame()` se añade `const FINISHER_HOLD_MS = 5000;` y el helper `finish(extraHoldMs)` suma esa espera solo en el remate final (`score >= 9`): `launchKunai(true, true).then(function () { finish(FINISHER_HOLD_MS); })`.
- La pausa empieza cuando termina la caída de Gaara, no al lanzar el kunai. El resto de caminos mantiene el mínimo de 6,5 s desde la última respuesta.
- Sin cambios en animaciones, sonido, kunai, reparto aleatorio, movimiento reducido ni layout.

### Pruebas

- 500×805: respuesta→caída 4 930,5 ms; caída→resultado 6 763,2 ms; respuesta→resultado **11 693,7 ms**; espera tras la caída **5 051,8 ms**.
- 390×844: 4 829,5 / 6 754,8 / **11 584,3** / **5 052,0** ms.
- A los ~9 s la pantalla de juego sigue activa, Gaara caído visible y el resultado no ha aparecido.
- 8/10: 6 554,1 ms (PLATA); 0/10: 6 553,6 ms; Mireia 0/10: 6 560,7 ms. Sin espera extra.
- Guest 10/10: ORO, +1 estrella, `errors=[]`; clic bloqueado durante la espera; acción/kunai/sonido y movimiento reducido sin errores.
- QA: `qa/naruto-mejoras-2026-10-25/ADENDA-2026-10-25-brazo-musica.md`, sección 10; datos `qa-hold-qa-*` en `qa/naruto-mejoras-2026-10-25/shots6/`.

### Publicación

- Publicado en `52dabb8` (`Naruto: accion, sonido, tamanos y pausa final con Gaara caido`) en `origin/main`; GitHub Pages sirvió el cambio.
- Verificado en producción con Guest 10/10 a 500×805: respuesta→resultado **11 681,5 ms**, espera tras la caída **5 050,3 ms**, ORO y `errors=[]`. La hoja de acción responde HTTP 200 con 328.448 bytes.
- Mireia en producción redirige al login sin sesión (protección por PIN), como estaba diseñado; el smoke test local de Mireia 0/10 pasó con 6 560,7 ms y `errors=[]`.
- Copia creada en `C:\Users\Usuario\Downloads\MiMundo_backup_2026-10-28_naruto-accion` (ZIP de 10,2 MB; sin `.git` ni `qa/` completa), conservando las copias anteriores.

### Pendiente

- Probar el flujo real de Mireia con PIN en producción.
- Revisar una partida completa en un móvil real.

## Actualizacion 30/10/2026 - Formato vertical escolar y progresion de restas

### Cambios

- peques/naruto-matematico.html: niveles con rangos separados de resta (min/max) y suma (addMin/addMax): resta 0-9 / 0-20 / 1-50 / 1-99 / 100-1000; suma 0-10 / 0-50 / 11-99 / 100-499 / 500-1000. verticalOperation() con role=img y aria-label; niveles 2-5 en vertical, nivel 1 horizontal. Tarjetas muestran Restas y Sumas.
- peques/penalti-matematico.html: mismos rangos; nivel 1 horizontal centrado; niveles 2-5 verticales con linea de guiones del ancho correcto; role=img y aria-label; botones de nivel con rangos en title/aria-label.
- peques/mi-mates.html: 5 niveles (Muy facil, Facil, Medio, Alto, Experto) con subMin/subMax, addMin/addMax y vertical; eliminada la rama especial de facil; tarjetas con Restas y Sumas; ayuda actualizada.
- Sin cambios en estilo general, animaciones, sonido, kunai, reduced-motion ni FINISHER_HOLD_MS.

### Pruebas

- Local con servidor 8767 y CDP 9222, perfil guest: niveles 1 horizontal y 2-5 verticales; restas no negativas; sumas en rango; 1000 - 999 a 320 px sin desbordar.
- Tamanos revisados: 320x568, 390x844, 500x805, 1024x768 y 1180x820; sin scroll horizontal.
- Consola sin errores reales (solo favicon.ico previo).
- Produccion verificada con Guest y con PIN de Mireia: restas y sumas correctas en los tres juegos.

### Publicacion

- Commit a8e9aa2 publicado en origin/main; GitHub Pages sirve la nueva version.
- Verificado en produccion: Naruto, Penalti y Mi Mates con ?profile=guest sin errores de consola; perfil Mireia protegido por PIN como estaba disenado.

---

## Actualización 31/10/2026 — Halloween y Puzzles Mireia

### Halloween

- Título «Halloween» al doble de tamaño (`clamp(4.4rem,14vw,8.4rem)`) y colocado encima del vídeo de la calabaza.
- Tira de hojas de otoño (`peques/halloween-assets/hojas-otono.png`) superpuesta en la parte inferior del vídeo para tapar la marca «Free AI Preview».
- Botón de música en la cabecera de Halloween, junto a la fecha: silencia o activa `halloweenBGmusic.mp3` y guarda la preferencia en `halloweenMusicMuted`.
- Juego de memoria de la Familia Addams con `peques/halloween-assets/addams-theme.mp3` y botón propio de silencio; preferencia en `addamsMusicMuted`.
- Verificado en local a 892×800, 390×844 y 320×700, y en producción con `?profile=guest`: sin desbordamiento horizontal ni errores de consola.
- Commit `5215ea0` publicado en `origin/main`.

### Juegos: Puzzles Mireia

- Nuevo juego `peques/puzzles-mireia.html` (15 puzzles con imágenes integradas y progreso por perfil en `puzzlesMireiaDone_v1_<perfil>`).
- Añadido como primer módulo del área `Juegos` (`peques/areas-test.html?area=juegos&profile=...`), con etiqueta NEW visible para los perfiles `mireia` y `guest`.
- El módulo abre el juego en la misma pestaña con el perfil en la URL; el juego incluye un enlace «← Volver a Juegos» que conserva el perfil.
- Se carga `auth-guard.js` en el juego para mantener la protección por PIN del perfil Mireia; Guest entra directamente.
- Verificado en local y producción: módulo primero, badge NEW solo para Mireia y Guest, enlace y retorno correctos, partida iniciada con 18 piezas, sin errores de consola ni desbordamiento a 390 px.
- Commits `1818d91` y `f7fdb14` (ajuste de la pista en móvil) publicados en `origin/main`.
- Producción: `https://msm-srm.github.io/Aprender-es-divertido-/peques/areas-test.html?area=juegos&profile=guest` y `https://msm-srm.github.io/Aprender-es-divertido-/peques/puzzles-mireia.html?profile=guest`.

### Backup

- Copia de seguridad `C:\Users\Usuario\Downloads\MiMundo_backup_2026-10-31.zip` y resumen `C:\Users\Usuario\Downloads\MiMundo_update_chatgpt_2026-10-31.md` generados el 31/10/2026.

---

## Actualización 01/11/2026 — Cuentos Julia D. en Lengua Inglés

### Página nueva: Cuentos Julia D.

- Nueva página `peques/cuentos-julia-d.html` (HTML, CSS y JS propios, sin dependencias) con los 8 cuentos de Julia Donaldson en inglés: Stick Man, The Gruffalo, The Gruffalo's Child, Room on the Broom, The Baddies, Jonty Gentoo: The Adventures of a Penguin, The Trunk and the Skunk y A Squash and a Squeeze.
- Cada portada es un enlace que abre el cuento correspondiente en `read.studio` (los 8 enlaces, en orden, en pestaña nueva con `target="_blank"` y `rel="noopener noreferrer"`).
- Portada general JDAS arriba (`peques/imagenes/jd-stories/portada.jpg`) y grid responsive de tarjetas: 2 columnas a 390 px, 1 a 320 px y 4 en escritorio.
- Botón «← Volver» uniforme con el resto del sitio: `mundo-mireia.html?avatar=restored&profile=<perfil>`.
- Sin `localStorage` propio todavía: la página no guarda progreso ni suma estrellas.

### Imágenes

- Carpeta nueva `peques/imagenes/jd-stories/` con 9 ficheros JPG: `portada.jpg` y las 8 portadas de los cuentos (492.449 bytes en total).
- Material original en `Downloads\ENGLISH - Julia Donaldson\`; los dos PDF («FINAL JD Big 8 Activity Pack» y «Room on the Broom Activity Sheets») quedan como material futuro, sin usar todavía.

### Tarjeta en Lengua Inglés (`peques/idiomas.html`)

- Cuarta tarjeta del área, colocada en **primera posición**: «Cuentos Julia D.» con la portada JDAS y el subtítulo «Los 8 cuentos para leer en inglés».
- Solo aparece cuando el idioma activo es inglés (`language.key==='ingles'`, también sin `?lang=` en la URL); en catalán y alemán no se muestra.
- Badge «NEW» rojo pulsante en la esquina superior derecha (`aria-hidden="true"`), con `@media (prefers-reduced-motion: reduce)` para desactivar la animación.
- Enlaza a `cuentos-julia-d.html?profile=<perfil>` en la misma pestaña.
- Grid propio solo en inglés (`#modules.has-jd`, mínimo 190 px) para que quepan las 4 tarjetas; los colores de Palabras, Escucha y Frases se mantienen con `button.module:nth-of-type(...)`.

### Perfiles

- Accesible para `guest` (sin PIN) y `mireia` (con PIN, vía `auth-guard.js`).
- Sofía no tiene acceso al mapa, así que no llega a esta zona.

### Pruebas

- Local (servidor 8767): 9 recursos a 200, 8 tarjetas con sus imágenes y los 8 enlaces en orden, sin errores de consola.
- Escritorio 1280, móvil 390×844 y 320×568: sin scroll horizontal, títulos legibles y badge NEW visible dentro del cuadrado.
- `idiomas.html?lang=en`: 4 tarjetas con «Cuentos Julia D.» en primera posición; `?lang=ca` y `?lang=de`: 3 tarjetas y sin `has-jd`.

### Publicación

- Publicado en `origin/main` el 01/11/2026; GitHub Pages sirve la página y la tarjeta nueva.
- Copia de seguridad en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-01_cuentos-julia-d`.

### Pendiente

- El badge NEW ya es automático: se oculta solo a las 24 h de la primera apertura por perfil (ver «Norma NEW 24h»).
- Sumar el progreso a `byArea.ingles` si se quiere integrar con el marcador del mapa.
- Posibles actividades con los 2 PDF del material original.

---

## Actualización 02/11/2026 — Norma NEW 24h

### Norma del sitio

- En todo juego o área nueva, la pegatina NEW se muestra mientras el perfil no haya abierto el juego por primera vez o dentro de las 24 h siguientes a esa primera apertura; después desaparece sola.
- La norma se aplica por perfil: cada perfil tiene su propio estado y puede seguir viendo el badge aunque otro ya haya abierto el juego.

### Clave canónica

- Clave `mundoAprendizajeNewSeen_<slugJuego>_<perfil>` con el timestamp en milisegundos de la primera apertura.
- El juego la escribe en su carga si todavía no existe; la tarjeta del área la lee para decidir si muestra el badge.
- `try/catch` obligatorio en lectura y escritura: si `localStorage` falla, el badge se mantiene visible.
- Una clave por perfil; no se comparte entre `guest`, `mireia` ni futuros perfiles.

### Implementación actual

- `peques/cuentos-julia-d.html` escribe `mundoAprendizajeNewSeen_cuentos-julia-d_<perfil>` al cargar, solo si la clave no existe.
- `peques/idiomas.html` lee esa clave en `renderModules()` y calcula `showNew`: visible si no hay clave o si han pasado menos de 86.400.000 ms (24 h); si no, la tarjeta se pinta sin `<span class="jd-new">`.
- El resto de la tarjeta no cambia: sigue en primera posición del área de inglés y el clic abre el juego con el perfil en la URL.

### Para futuros juegos

- Copiar el patrón cambiando `<slugJuego>` en ambos lados: escritura en la carga del juego y lectura en la tarjeta del área.
- Mantener el umbral de 86.400.000 ms y el valor por defecto visible ante cualquier error.

### Limpieza

- Retirados 2 harness temporales de pruebas `qa/_tmp-*.html`; no afectan al repositorio publicado.

---

## Actualización 02/11/2026 — Copia de seguridad del progreso

### Página nueva: Mi progreso

- Nueva página `peques/mi-progreso.html` (HTML, CSS y JS propios, sin dependencias) con resumen del progreso del perfil, exportación e importación de la copia y zona de borrado.
- El perfil se elige con `?profile=mireia|sofia|guest`; si el valor no es válido se usa `mireia`. Carga `auth-guard.js` como el resto del sitio (Guest entra sin PIN; en local las páginas se abren sin sesión).
- Resumen: oro, plata y bronce sumados de `byArea`, puzzles completados `n/15`, retos (`rounds`), actividades distintas (`Object.keys(byGame).length`) y desglose por área con el total de estrellas de cada una.
- El enlace «← Volver» lleva a `index.html?profile=guest` en Guest y a `mundo-mireia.html?avatar=restored&profile=<perfil>` en Mireia y Sofía.

### Qué guarda la copia (whitelist)

- Solo las claves del perfil abierto:
  - `mundoAprendizajeProgressV3_<perfil>` (estrellas, retos, `byGame` y `byArea`).
  - `puzzlesMireiaDone_v1_<perfil>`.
  - `halloweenPaintDiscover:v2:<perfil>`.
  - `mundoHalloweenSeenV1_<perfil>`.
  - `mundoAprendizajeUiLanguageV1_<perfil>`.
  - `mundoAprendizajeNewSeen_<slugJuego>_<perfil>` (avisos NEW, cualquier slug).
- Queda fuera la sesión `mundoAprendizajeSession_<perfil>` y cualquier clave de otro perfil. El idioma de la interfaz sí se incluye en la copia (se restaura tal cual); en el borrado total, en cambio, se conserva.
- Al importar se valida el sobre, se comprueba cada clave contra la whitelist del perfil y se exige JSON válido en las claves que lo son (`Progress`, `puzzles`, `halloweenPaint`, `HalloweenSeen` y `NewSeen`). Las claves ajenas, las que no son texto o las que no parsean se ignoran y se informa del recuento. Si el archivo es de otro perfil se pide confirmación antes de escribir; al terminar se recarga la página.

### Formato del archivo

- JSON con este sobre y un objeto plano `clave → valor` con los valores tal cual están en `localStorage`:

```json
{
  "format": "mi-mundo-progreso",
  "version": 1,
  "profile": "guest",
  "exportedAt": "2026-11-02T13:25:14.015Z",
  "data": { "clave": "valor" }
}
```

- Nombre del archivo: `mi-mundo-progreso-<perfil>-AAAA-MM-DD.json`.
- Se rechaza cualquier archivo con otro `format`, con `version` distinta de 1 o sin bloque `data`.

### Borrado por área

- Un botón por área con progreso (los de 0 estrellas aparecen desactivados). Pide una confirmación y, si se acepta:
  - pone a cero `byArea[área]` (`{gold:0,silver:0,bronze:0}`);
  - elimina de `byGame` los contadores del área: la clave exacta, las que empiezan por `área_` y los alias antiguos (`math` para Mates; `words`, `listen`, `repeat` y `stories` para Lectura; `memory` para Juegos);
  - recalcula `stars` sumando todas las áreas y vuelve a pintar el resumen.
- El resto de áreas y sus contadores no se tocan.

### Borrado total

- Doble confirmación: un `confirm` y después escribir `BORRAR` en un `prompt` (se acepta en mayúsculas o minúsculas).
- Borra todas las claves de la whitelist del perfil menos el idioma; nunca toca la sesión ni claves de otros perfiles. Recarga la página al terminar.
- Los avisos de resultado se muestran en la propia página (`aria-live`) y en el diálogo final.

### Accesos

- Mapa (`peques/mundo-mireia.html`): botón «💾 Progreso» en el HUD, con el `href` reescrito por JS a `mi-progreso.html?profile=<perfil>`.
- Inicio (`peques/index.html`): enlace «💾 Copia de seguridad» bajo el selector (perfil `guest`) y otro en la pantalla de Sofía (perfil `sofia`).

### Pruebas

- Local (servidor 8767): 58 comprobaciones automatizadas, todas correctas. Las 3 primeras discrepancias fueron del arnés de pruebas, no del sitio (codificación de acentos en el script y filtro de claves al verificar la importación).
- Cubierto: resumen a 0 con el perfil limpio, exportación con las 6 claves de la whitelist sin sesión ni otros perfiles, importación que restaura las 6 con los mismos valores, borrado por área y total, y clic real desde el mapa y desde el inicio con el perfil correcto.
- Sin errores de consola ni respuestas ≥ 400 en `mi-progreso.html`, `mundo-mireia.html` e `index.html`.

### Publicación

- Publicado en `origin/main` el 02/11/2026 y servido por GitHub Pages.
- Copia de seguridad en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-02_progreso`.

---

## Actualización 03/11/2026 — Módulo compartido de progreso (fase 1)

### Motivo

- La carga, el recálculo de estrellas y el guardado estaban copiados en 8 páginas. Un arreglo en una no llegaba a las demás.
- Fase 1: crear el módulo común y migrar las 5 páginas de área simples. Index, Naruto y Penalti quedan para la fase 2.

### Módulo nuevo: `peques/progress-shared.js`

- Script clásico sin dependencias que expone `window.MiProgreso`.
- `key(perfil)`: `mundoAprendizajeProgressV3_<perfil>`.
- `load(perfil)`: lectura tolerante con try/catch; objetos vacíos si no hay datos o el JSON está roto; conserva campos desconocidos.
- `recalc(datos)`: recalcula `stars` sumando oro, plata y bronce de todas las áreas, con la misma fórmula que había.
- `persist(perfil, datos)`: recalcula y guarda con try/catch (si la cuota falla, la partida sigue en memoria).
- `area(datos, clave)`: crea y normaliza el área activa (`gold`, `silver`, `bronze` a números ≥ 0) y devuelve la referencia.

### Páginas migradas

- `mi-mates.html`, `mi-lectura.html`, `mi-escritura.html`, `areas-test.html` e `idiomas.html`.
- Cada una carga `progress-shared.js` antes de su script y sustituye su carga/guardado duplicado por `MiProgreso.load/persist`; los incrementos de retos, `byGame` y la referencia `scores` se mantienen igual. No cambian textos, estilos, claves ni forma del JSON.
- `areas-test.html` conserva el bonus de historia (+2/+1 oro) antes de guardar.

### Pruebas

- Local (servidor 8767, perfil guest): se sembró un progreso conocido y se provocó un guardado en cada una de las 5 páginas.
- Resultado en las 5: `MiProgreso` cargado, marcador sembrado visible, área correcta +1 oro, `rounds` +1, `byGame` con la misma clave que antes, `stars` recalculado (7 → 8) y resto de áreas intactas.
- JSON corrupto en `mi-lectura.html`: la página arranca en 0 sin errores y el módulo devuelve un objeto válido.
- `mi-progreso.html` sigue leyendo el mismo esquema.

### Fase 2 (completada el 04/11/2026)

- Migradas `index.html`, `naruto-matematico.html` y `penalti-matematico.html` al módulo común (`MiProgreso.load/persist`), con pruebas equivalentes por página.

### Puzzles Mireia: imágenes fuera del HTML y progreso conectado

- `peques/puzzles-mireia.html` pasa de **1.962.670 bytes a 20.861 bytes**: las 19 imágenes que estaban en base64 (15 puzzles + 4 cajas de regalo) se han extraído a `peques/imagenes/puzzles/` (1.422,6 KB en total, JPG individuales y cacheables).
- Nombres: `puzzle-NN-<id>.jpg` para los 15 puzzles y `gift-1..4.jpg` para las cajas. El array `PUZZLES` y `GIFT_IMAGES` apuntan a esas rutas relativas.
- Al completar un puzzle **nuevo** se suma también 1 estrella de oro al área `juegos` de `mundoAprendizajeProgressV3_<perfil>` (`rounds` +1 y `byGame.juegos_puzzles` +1) mediante `progress-shared.js`; el progreso de puzzles (`puzzlesMireiaDone_v1_<perfil>`) se mantiene como estaba.
- Repetir un puzzle ya completado no vuelve a sumar estrella. Los puzzles completados antes de este cambio no reciben estrella retroactiva.
- Pruebas locales: 19/19 imágenes a 200, cajas de regalo cargadas, primer `finish()` → 1 oro / 1 reto / `juegos_puzzles`, segundo `finish()` sin cambios, `done` con el id completado.

### Publicación

- Commit y push de la fase 1 y de los puzzles publicado el 03/11/2026 (`246ec0f` y el commit de puzzles).

---

## Actualización 03/11/2026 — Idiomas por perfil y limpieza de backups

### Idioma unificado por perfil

- `ui-language.js` usa `mundoAprendizajeUiLanguageV1_<perfil>` y escribe también el espejo `mundoAprendizajeLanguage`; al arrancar, si el perfil no tiene clave, usa el espejo global y después español.
- `index.html` expone `window.MiIdioma` (`apply`/`current`) desde su sistema de idiomas (que vive en un IIFE) y guarda el idioma del perfil al cambiarlo. Al entrar en un perfil, `selectProfile` aplica su idioma guardado (o el global) antes de mostrar la pantalla; funciona también cuando el perfil aún no tiene clave propia.
- `naruto-matematico.html` y `penalti-matematico.html` cargan `ui-language.js` al final. El selector se monta en `.topbar-right` (Naruto) y `.back-row` (Penalti), con ajuste responsive a 390 px sin desbordamiento.
- Diccionario ampliado para Naruto y Penalti: títulos, enlaces de vuelta, niveles (`Muy fácil`…`Élite`), modos (`Mixtos`), ayudas, HUD (`Nivel`, `Reto`, `Aciertos`, `Tiro`, `Goles`) y textos dinámicos de resultado (`Has acertado…`, `Has marcado…`, metadatos y total de estrellas) en EN/CA/DE. Los textos dinámicos se traducen también cuando el juego los inserta después de cargar.
- `idiomas.js` era huérfano (sin referencias) y se ha retirado.

### Limpieza de backups

- Movidos a `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-03_limpieza\peques\` y retirados del repo: `index.antes-perfiles.html`, `index-main back up.html`, `index-backup.v3.html`, `mi-mates.antes-niveles.html`, `naruto-matematico.antes-accion.html`, `ui-language.antes-niveles.js` e `idiomas.js`.
- Comprobación SHA-256 de las 7 copias antes de borrar: todas idénticas.
- Se conservan `indexOK.html` y `halloween-libro-original.html` (no estaban en el lote acordado). Ambos se revisaron el 04/11/2026: `indexOK.html` se sustituyó por una copia fechada y `halloween-libro-original.html` se retiró por ser un redirect sin uso.

### Pruebas

- Local (servidor 8767, Chrome CDP): 21/21 comprobaciones en index, Naruto y Penalti.
  - Index: EN escribe clave global y de perfil; perfil con CA impone CA sobre global EN; sin clave de perfil usa el global DE; 0 errores JS.
  - Naruto: EN en título, enlaces, rangos, selector de 4 banderas y HUD; cambio a CA persiste y se recuerda al recargar; 1280 y 390 px sin desbordamiento horizontal; 0 errores JS.
  - Penalti: DE en título, h1, etiquetas, niveles y HUD (`Schuss`, `Tore`); cambio a EN persiste y se recuerda; emoji ⚽ conservado; 1280 y 390 px sin desbordamiento; 0 errores JS.
  - Pruebas de cadenas dinámicas de resultado en EN/CA/DE: 11 casos × 3 idiomas correctos.
  - Smoke test de las otras 8 páginas que cargan `ui-language.js` (`mi-mates`, `mi-lectura`, `mi-escritura`, `areas-test`, `idiomas`, `mi-progreso`, `mundo-mireia`, `evento-especial`): 8/8 con `lang=en`, selector y 0 excepciones.
- Capturas en `qa/shots-i18n/` (Naruto EN 1280/390 y Penalti DE 1280/390).
- Arneses reutilizables: `qa/tools/i18n-test.ps1`, `qa/tools/dynamic-i18n-test.ps1` y `qa/tools/smoke-ui-language.ps1`.

### Publicación

- Publicado en `origin/main` el 03/11/2026 y servido por GitHub Pages.

---

## Actualización 04/11/2026 — Fase 2 del módulo de progreso

### Motivo

- Las 3 páginas que aún duplicaban la carga y el guardado del progreso (`index.html`, `naruto-matematico.html` y `penalti-matematico.html`) usan ya `progress-shared.js`. Con esto, las 8 páginas que guardan progreso comparten clave, lectura tolerante y guardado.

### Cambios

- `index.html`: carga `progress-shared.js` antes de su script; `loadProgress()` usa `MiProgreso.load(currentProfile)` y `saveProgress()` usa `MiProgreso.persist(currentProfile, progress)`. Se conserva `normalizeProgress` con la migración legacy de estrellas planas a áreas (`GAME_AREAS` y `anteriores`).
- `naruto-matematico.html`: `MiProgreso.load(profileId)` y `MiProgreso.area(profileProgress, 'mates')` al arrancar; `MiProgreso.persist` al terminar. Se mantiene una sola escritura por partida, `mates_naruto_<nivel>` y los umbrales.
- `penalti-matematico.html`: mismo cambio con `mates_penalti_<nivel>` y `matchFinished` para no guardar dos veces.
- No cambian claves, forma del JSON, textos, estilos, i18n ni tiempos de juego.

### Pruebas

- Index (Sofía): +1 oro en mates, retos 7→8, `byGame.math` 2→3, estrellas 10→11, campo desconocido conservado; migración legacy (5 estrellas → mates 2, lectura 2, juegos 1); JSON corrupto arranca a 0 sin errores.
- Index (Mireia): retos 2→3, estrellas 3→4, lectura +1 oro, `byGame.words` 1.
- Naruto (guest, nivel 1): 10/10 → oro, retos 7→8, `mates_naruto_1` 1, estrellas 11→12, resto intacto.
- Penalti (guest, nivel 1): 10/10 → oro, retos 7→8, `mates_penalti_1` 1, estrellas 11→12; «¡Partido perfecto!».
- Penalti (Mireia): guardado real con retos 2→3, mates +1 oro y estrellas 4.
- Regresión fase 1: `qa/progress-fase1-test.html` → `RESULT: TODO OK` (118 líneas, 0 fallos).
- 0 errores de consola y una sola carga de `progress-shared.js` en las 3 páginas.
- Producción: index (perfil temporal) y Penalti (guest) guardan con el módulo; Naruto (guest, nivel 1) 10/10 → estrellas 11→12 y `mates_naruto_1` 1; 0 errores. Los datos de prueba de guest se retiraron al terminar.
- Informe: `qa/progreso-fase2-2026-11-04.md`.

### Copia de seguridad

- Originales en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-03_fase2-progreso\peques\`, con SHA-256 idéntico.

### Publicación

- Publicado en `origin/main` el 04/11/2026 (`ffd86ac`) y verificado en GitHub Pages el mismo día.

---

## Actualización 04/11/2026 — Sustitución de indexOK por copia fechada

### Revisión de `indexOK.html`

- Era una copia del 21/10/2026 (28.071 bytes), anterior a los perfiles, el mapa, Naruto, la copia de seguridad, el i18n y la fase 2 del progreso.
- Comparado con el `index.html` actual (66.123 bytes): todos sus `id`, funciones, `data-game`, enlaces y textos visibles existen ya en el index nuevo; la única diferencia de almacenamiento es la clave antigua `mundoAprendizajeProgressV1`, que ya no se usa.
- No aporta ninguna página, juego, texto ni enlace que no esté en la versión actual.

### Cambios

- Nuevo `peques/Index-ok-04.11.26.html`: copia byte a byte del `index.html` actual (SHA-256 `8737A26F5346AFF1F3E5429008A9D81DFF47F241AF6ED0640289E96D1DE295D0`).
- `peques/indexOK.html` retirado del repo. Copia en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-04_index-ok\peques\` (SHA-256 `52E2A7A3727CF85CDC324533B462B398D6A835B1E23C1D555E86D44936AEFD8A`).
- Copia de la nueva backup también en esa carpeta de Descargas.

### Pruebas

- SHA-256 idéntico entre `index.html` y `Index-ok-04.11.26.html`; idéntico entre el `indexOK.html` original y su copia de seguridad.
- `Index-ok-04.11.26.html` carga en local con el mismo título, `MiProgreso` y sin errores de consola.
- `halloween-libro-original.html` se revisó y retiró el 04/11/2026 (ver última sección).

### Publicación

- Publicado en `origin/main` el 04/11/2026 (`d7d9044`) y verificado en GitHub Pages: la copia responde 200 y `indexOK.html` devuelve 404.

---

## Actualización 04/11/2026 — Retirada de halloween-libro-original.html

### Revisión

- `halloween-libro-original.html` (1.309 bytes, 30/10/2026) solo mostraba un botón y redirigía a los 1,2 s al PDF de Free Kids Books; no contenía el cuento ni ilustraciones propias.
- El área de Halloween (`evento-especial.html`) enlaza la tarjeta «My First Halloween» directamente al PDF y mantiene el crédito «by Rayane Meghriche (author)».
- No hay ningún enlace interno a `halloween-libro-original.html`; solo aparecía en la documentación.

### Cambios

- Retirado `peques/halloween-libro-original.html`.
- Copia en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-04_halloween-libro-original\peques\` (SHA-256 `FEDBE00A58023C3588F62990A7156067633D27C7A80F49A39C960207050A4C80`).
- No se toca `evento-especial.html` ni el enlace al PDF.

### Pruebas

- `evento-especial.html?profile=guest`: la tarjeta My First Halloween conserva autor, portada y enlace directo al PDF; imagen 200; 0 errores de consola.
- `halloween-libro-original.html` devuelve 404 en local tras retirarlo.
- Producción: la página antigua devuelve 404; la tarjeta conserva «by Rayane Meghriche (author)», la portada 537×528 y el enlace al PDF; 0 errores de consola.
- `halloween-libro.html` y `halloween-libro2.html` se revisaron y retiraron el 04/11/2026 (ver última sección).

### Publicación

- Publicado en `origin/main` el 04/11/2026 (`2fb505f`) y verificado en GitHub Pages.

---

## Actualización 04/11/2026 — Retirada de los lectores duplicados de Halloween

### Revisión

- `halloween-libro.html` (5.078 bytes) era un lector propio de «Once Upon a Halloween» con 11 páginas e imágenes en `imagenes/halloween-book/` (10,68 MB). No tenía enlaces internos.
- `halloween-libro2.html` (5.165 bytes) era un lector propio de «My First Halloween» con portada y emojis. Tampoco tenía enlaces internos.
- El área de Halloween ya ofrece ambos cuentos mediante tarjetas que abren los PDF oficiales de Free Kids Books. Comprobado con los perfiles Mireia y Sofía en local: ambas tarjetas cargan portada y enlace, y los PDF responden 200.
- Los dos lectores eran alternativas duplicadas que quedaron fuera del flujo al enlazar las tarjetas directamente a los PDF.

### Cambios

- Retirados `peques/halloween-libro.html` y `peques/halloween-libro2.html`.
- Retiradas sus imágenes exclusivas: `peques/imagenes/halloween-book/` (22 JPG) y `peques/imagenes/halloween-libro2/cover.jpg`.
- Total: 25 archivos y 10.728.588 bytes.
- Copia completa en `C:\Users\Usuario\Downloads\ZZ - Mi_Mundo Back ups\MiMundo_backup_2026-11-04_halloween-libros-duplicados\peques\`, con `SHA256.txt`; 25/25 hashes idénticos.
- No se toca `evento-especial.html` ni los enlaces a los PDF.

### Pruebas

- Local, perfiles Mireia y Sofía: Halloween activo, tarjetas «My First Halloween» y «Once Upon a Halloween» con portada cargada (537×528 y 426×531), enlace directo al PDF y 0 errores de consola.
- PDF oficiales: 200, `application/pdf`.
- `halloween-libro.html` y `halloween-libro2.html` devuelven 404 en local tras retirarlos.
- No quedan referencias a los lectores ni a sus carpetas de imágenes.
- Producción: las dos páginas y las dos carpetas de imágenes devuelven 404; `evento-especial.html?profile=guest` mantiene Halloween activo, las dos tarjetas con portada cargada (537×528 y 426×531), autor, enlace directo a los PDF y 0 errores de consola.
- `evento-especial.html?profile=mireia` y `?profile=sofia` responden 200 y conservan las tarjetas y el enlace al PDF; sin sesión, `auth-guard.js` redirige al index como en el resto del sitio.

### Publicación

- Publicado en `origin/main` el 04/11/2026 (`ad1ba37`) y verificado en GitHub Pages.

---

## Actualización 05/11/2026 — Fondo animado en la página de entrada

### Cambios

- Copiado `page1BgGif.mp4` (665.521 bytes, 480×320, 9,6 s) a `peques/imagenes/fpbg.mp4`; SHA-256 idéntico al original.
- `peques/index.html`: añadido un `<video class="bg-video">` fijo a pantalla completa, silenciado, en bucle y con `object-fit:cover`, colocado detrás del contenido.
- La imagen `imagenes/fpbg.png` (en realidad AVIF) y el color `#f6cbd9` del `body` siguen como respaldo estático si el vídeo no carga.
- Con `prefers-reduced-motion: reduce`, el vídeo se oculta y queda el fondo estático.
- No se modifica `Index-ok-04.11.26.html` (copia fechada).

### Pruebas

- Local: el vídeo responde 200 (`video/mp4`, 665.521 bytes), carga con `readyState` 4, se reproduce solo, está silenciado y completa el bucle de 9,6 s; 0 errores de consola.
- Escritorio (892×582): el vídeo cubre el área visible con `object-fit:cover`; las tarjetas de perfil y el selector de idioma siguen legibles.
- Móvil simulado en iframe de 390×844: fondo a pantalla completa, sin desbordamiento horizontal, tarjetas en dos columnas y selector visibles; 0 errores de consola.
- `prefers-reduced-motion: reduce`: `.bg-video` oculto y fondo estático `fpbg.png` visible.
- Respaldo: `imagenes/fpbg.png` sigue respondiendo 200.

### Publicación

- Pendiente de publicar en `origin/main`.
