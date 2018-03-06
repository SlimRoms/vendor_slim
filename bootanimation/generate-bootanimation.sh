#!/bin/bash

CWD=`pwd`
WIDTH=$1
HEIGHT=$(echo "$WIDTH/1.5" | bc)
RWIDTH=$WIDTH
RHEIGHT=$HEIGHT
HALF_RES=$2
OUT="$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION"

if [ "$HALF_RES" = "true" ]; then
    WIDTH=`expr $WIDTH / 2`
    HEIGHT=`expr $HEIGHT / 2`
fi
RESOLUTION=""$WIDTH"x"$HEIGHT""

mkdir -p $ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation/part{0..4}

tar xfp "$PWD/vendor/slim/bootanimation/bootanimation.tar" -C "$OUT/bootanimation/"
mogrify -resize $RESOLUTION -colors 250 "$OUT/bootanimation/"*"/"*".png"

# create desc.txt
echo "$RWIDTH" "$RHEIGHT" 60 > "$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation/desc.txt"
cat "$PWD/vendor/slim/bootanimation/desc.txt" >> "$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation/desc.txt"

# create bootanimation.zip
cd "$OUT/bootanimation"
zip -r0 "$ANDROID_PRODUCT_OUT/obj/BOOTANIMATION/bootanimation.zip" .
