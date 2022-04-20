#!/bin/sh
# Resize all images matching given pattern
#
# Usage:
#   ./resize.sh [pattern]
#
# Parameters:
#   pattern - optional, file pattern to match input files,
#             defaults to *.JPG
#
# Output:
#   All matching files are resized into a directory called "little/"
#   within the current working directory.
#
# Requires:
#   mogrify  - resize an image, blur, crop, (...) [from Image Magick]
#
pattern="${1:-*.JPG}"

mkdir -p little/
mogrify -path little/ -resize 50% -resample 90 -quality 80 $pattern
