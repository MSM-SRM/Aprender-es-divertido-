# Geometría del puzzle de comunidades autónomas

El archivo `ccaa-geometry.geojson` contiene las geometrías del puzzle geográfico de España.

- **17 comunidades autónomas:** conjunto `spain-communities.geojson` de Code for America / click_that_hood.
  - **Licencia declarada por el conjunto de origen:** MIT.
  - **Identificadores:** códigos INE de comunidad autónoma (01–17), vinculados a los identificadores del manifiesto de audio.
- **Ceuta y Melilla:** polígonos reales del Instituto Geografico Nacional (España), publicados en el conjunto `geoBoundaries-ESP-ADM1` (geoBoundaries / World Bank / GADM 4.0).
  - **Licencia declarada por el conjunto de origen:** CC BY 4.0 (atribución requerida).
  - **Identificadores:** códigos INE de ciudad autónoma (51 Ceuta, 52 Melilla), vinculados a los identificadores del manifiesto de audio.

**Uso en este proyecto:** los polígonos se simplificaron para reducir el peso de descarga y se guardan como GeoJSON. Se conserva toda la geometría de origen (incluidos islotes menores); al dibujar las piezas se omiten anillos menores al 0,05 % del área principal solo en Ceuta y Melilla para que las siluetas sigan siendo legibles en pantallas pequeñas. Ninguna silueta es inventada ni aproximada.

## Alcance actual

Las 19 piezas/territorios (17 comunidades autónomas + Ceuta y Melilla) se dibujan como siluetas geográficas interactivas con contorno real y se pueden seleccionar y colocar en su ubicación del mapa. Canarias y las Illes Balears se muestran en recuadros de ubicación dentro del mapa.

Fuentes:

- https://github.com/codeforamerica/click_that_hood (spain-communities.geojson, MIT)
- https://www.geoboundaries.org (geoBoundaries-ESP-ADM1, CC BY 4.0; geometría del Instituto Geografico Nacional / CNIG)
