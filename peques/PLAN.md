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

Título de trabajo: **EL MUNDO MÁGICO DE MIREIA**. El mapa de referencia generado el 19/10/2026 se encuentra en la sesión de ChatGPT; aún debe incorporarse como archivo al repositorio para que quede versionado junto al código.

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

La zona de fiestas debe ser una caja/panel independiente del mapa, ubicada abajo a la derecha. No debe formar parte de los puntos educativos de la isla. Cada evento tendrá exactamente las mismas dimensiones y una identidad de color propia. Eventos inactivos: icono/logo en blanco y negro; el evento activo tendrá el icono iluminado y sus colores estacionales. El panel y la lógica deben poder reutilizarse cambiando tema, icono y actividades sin rediseñar el mapa.

Paletas iniciales:
- Halloween: naranja, negro y marrón, con ambiente otoñal.
- Navidad: rojo, verde y blanco.
- Verano: azul, amarillo y blanco.
- Semana Santa: violeta, oro y blanco.
- Sant Joan, San Sebastián, San Patricio y otras celebraciones apropiadas: colores e iconos propios.

El lanzamiento inicial debe estar tematizado para Halloween. La temporada activa se destacará en el panel; el resto permanecerá visualmente atenuado.

## Sistema de estrellas y registro

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

