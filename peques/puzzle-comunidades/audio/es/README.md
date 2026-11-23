# Audios del Puzzle de las Comunidades Autónomas

## Estado
- 19 presentaciones (nombre + gentilicio).
- 190 curiosidades, transcritas literalmente del TXT aportado.
- Total: 209 audios MP3 individuales.
- Voz elegida provisionalmente: Lucía, español de España (ClipUtils). Hay que escuchar una prueba antes de producir todo el lote.

## Herramienta
[ClipUtils – Texto a voz en español](https://www.cliputils.com/tools/spanish-text-to-speech)

En el ordenador, el motor se ejecuta en el navegador y descarga un modelo de voz de unos 92 MB la primera vez. Permite descargar MP3, sin registro ni marca de agua. El límite publicado es de hasta 8 minutos por generación. Consulta la herramienta antes de producir todos los archivos.

## Cómo generar los archivos
1. Abre ClipUtils en Chrome o Edge desde un ordenador.
2. Selecciona Español y la voz Lucía.
3. Genera primero una prueba con el texto de presentación de Andalucía y escucha el resultado.
4. Si la voz te convence, utiliza el archivo `audio-manifest.json` para generar los 209 MP3, uno por entrada.
5. Guarda cada MP3 con el nombre exacto de la propiedad `file` dentro de esta carpeta `audio/es/`.
6. No cambies el texto: procede literalmente del TXT educativo adjunto.

## Nombres de archivo
Cada territorio tiene:
- `00-presentacion.mp3`: nombre y gentilicio.
- `01.mp3` a `10.mp3`: sus diez curiosidades.

Ejemplo:
`audio/es/andalucia/00-presentacion.mp3`
`audio/es/andalucia/01.mp3`

## Nota técnica importante
No se han generado ni descargado MP3 todavía. Este manifiesto prepara y organiza exactamente los 209 textos; la descarga real requiere utilizar el botón de descarga de ClipUtils en un navegador. No se deben sustituir los MP3 por la voz robótica del navegador.
