# Audios del Puzzle de las Comunidades Autónomas

## Estado verificado

- **209 archivos MP3 generados y guardados en GitHub.**
- 19 territorios: las 17 comunidades autónomas, Ceuta y Melilla.
- 11 audios por territorio: 1 presentación y 10 curiosidades.
- Voz: DaveFX, Piper `es_ES-davefx-medium`.
- El manifiesto `audio-manifest.json` contiene las rutas y los textos que utiliza el juego.

## Estructura

Cada territorio tiene su propia carpeta:

- `00-presentacion.mp3`: nombre y gentilicio.
- `01.mp3` a `10.mp3`: diez curiosidades.

Ejemplo:
`andalucia/00-presentacion.mp3`
`andalucia/01.mp3`

## Uso desde el juego

La página `peques/puzzle-comunidades.html` carga `audio-manifest.json` y reproduce los archivos desde esta carpeta. No se deben regenerar los audios ni cambiar sus nombres sin actualizar el manifiesto.

## Comprobación

Se revisaron las 19 carpetas del repositorio y se encontraron exactamente 11 MP3 en cada una (19 × 11 = 209).
