#!/usr/bin/env bash
# Convierte imagenes (cualquier formato: jpg, png, webp, etc.) a PNG y las
# redimensiona, listas para usarse como logo aleatorio de fastfetch.
#
# Uso:
#   ./convert-logos.sh archivo1.jpg archivo2.webp ...
#   ./convert-logos.sh ~/Downloads/*.jpg
#
# Requiere: imagemagick (comando `magick`)

set -euo pipefail

DEST="${FASTFETCH_LOGO_DIR:-$HOME/.config/fastfetch/logo}"
MAX_SIZE="${MAX_SIZE:-600}"

if [ "$#" -eq 0 ]; then
    echo "Uso: $(basename "$0") <imagen1> [imagen2 ...]"
    echo "Ejemplo: $(basename "$0") ~/Downloads/*.jpg"
    exit 1
fi

if ! command -v magick >/dev/null; then
    echo "Falta imagemagick. Instala con: sudo pacman -S imagemagick"
    exit 1
fi

mkdir -p "$DEST"

for src in "$@"; do
    if [ ! -f "$src" ]; then
        echo "Omitido (no existe): $src"
        continue
    fi
    name="$(basename "${src%.*}")"
    dest="$DEST/$name.png"
    magick "$src" -resize "${MAX_SIZE}x${MAX_SIZE}>" "$dest"
    echo "OK -> $dest"
done

echo
echo "Listo. fastfetch elegira al azar entre lo que haya en: $DEST"
