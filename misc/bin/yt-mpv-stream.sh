#!/bin/bash

# Verifica que se pase una URL
if [ "$#" -ne 1 ]; then
  echo "Uso: $0 <URL>"
  exit 1
fi

URL=$1

# Preguntar al usuario si quiere subtítulos
read -p "¿Deseas subtitular el video? (s/n): " SUBTITULAR

# Si el usuario decide no subtitular
if [ "$SUBTITULAR" != "s" ]; then
  echo "Reproduciendo el video sin subtítulos..."
  mpv "$URL"
  exit 0
fi

# Directorio temporal para almacenar subtítulos
TEMP_DIR=$(mktemp -d)

# Descargar el video de YouTube usando yt-dlp pero sin descargar el video
echo "Descargando información del video..."
yt-dlp --skip-download --write-auto-sub --sub-lang en --output "${TEMP_DIR}/%(id)s.%(ext)s" "$URL"

# Descargar subtítulos en español usando subliminal
echo "Descargando subtítulos en español..."
subliminal download -l es --output "$TEMP_DIR" "$URL"

# Buscar el archivo de subtítulos en español (formato .srt)
SUB_FILE=$(find "$TEMP_DIR" -name "*.es.srt" | head -n 1)

if [ -z "$SUB_FILE" ]; then
  echo "No se encontraron subtítulos en español. Reproduciendo el video sin subtítulos..."
  mpv "$URL"
else
  echo "Reproduciendo el video en streaming con subtítulos en español..."
  mpv "$URL" --sub-file="$SUB_FILE"
fi

# Limpiar el directorio temporal
rm -r "$TEMP_DIR"
