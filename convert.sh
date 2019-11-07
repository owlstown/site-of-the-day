#!/bin/bash

# Exit when any command fails
set -e

# JPG quality
# https://sirv.com/help/resources/jpeg-quality-comparison/
QUALITY=75

SRC_DIR=toconvert
DEST_DIR=deploy

mogrify -quality $QUALITY -path $DEST_DIR -format jpg -interlace plane $SRC_DIR/*.png
mogrify -quality $QUALITY -path $DEST_DIR/small -format jpg -resize 600x600 $SRC_DIR/*.png
mv $SRC_DIR/*.png archive
