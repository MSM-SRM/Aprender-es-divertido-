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
