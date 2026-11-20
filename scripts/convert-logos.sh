#!/usr/bin/env bash
# Convierte imagenes (cualquier formato: jpg, png, webp, etc.) a PNG y las
# redimensiona, listas para usarse como logo aleatorio de fastfetch.
# Se renombran a un nombre generico consecutivo (logo-01.png, logo-02.png...)
# para evitar errores por espacios/simbolos raros en el nombre original;
# el conteo sigue desde el ultimo "logo-NN.png" que ya exista, sin pisar nada.
#
# Uso:
#   ./convert-logos.sh archivo1.jpg archivo2.webp ...
#   ./convert-logos.sh ~/Downloads/*.jpg
#
# Requiere: imagemagick (comando `magick`)

set -euo pipefail

DEST="${FASTFETCH_LOGO_DIR:-$HOME/.config/fastfetch/logo}"
MAX_SIZE="${MAX_SIZE:-600}"
PREFIX="${LOGO_PREFIX:-logo}"

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

# Encuentra el numero mas alto ya usado (ej. logo-07.png -> 7), para seguir
# la numeracion sin sobreescribir logos agregados antes.
next=1
for existing in "$DEST/$PREFIX"-*.png; do
    [ -e "$existing" ] || continue
    n="$(basename "$existing" .png)"
    n="${n#"$PREFIX"-}"
    n="${n##0}"
    [[ $n =~ ^[0-9]+$ ]] && [ "$n" -ge "$next" ] && next=$((n + 1))
done

for src in "$@"; do
    if [ ! -f "$src" ]; then
        echo "Omitido (no existe): $src"
        continue
    fi
    dest="$(printf '%s/%s-%02d.png' "$DEST" "$PREFIX" "$next")"
    magick "$src" -resize "${MAX_SIZE}x${MAX_SIZE}>" "$dest"
    echo "$(basename "$src") -> $dest"
    next=$((next + 1))
done

echo
echo "Listo. fastfetch elegira al azar entre lo que haya en: $DEST"
