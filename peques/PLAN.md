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
