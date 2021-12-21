#!/bin/bash
#
# Simple iPad Pro wallpaper creator
# Creates single line of text on plain background, designed to be visible on both lock and home screen.
#
# This script requires Image Magick to be installed. 
#

if [ "$#" -ne 1 ]
then
  echo
  echo "Usage: createWallpaper.sh <text>"
  echo
  echo
  exit 1
fi

export IMAGE_NAME=`echo $1 | tr ' ' '_'`

echo Image bane is $IMAGE_NAME

echo "$1" | convert -background SteelBlue3 -pointsize 70 -fill white -gravity center \
   -page 2732x2048+0+600 text:-'[0]' +repage `echo $IMAGE_NAME.jpg`


echo
echo Done.
echo
echo
