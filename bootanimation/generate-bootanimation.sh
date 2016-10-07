#!/bin/bash

CWD=`pwd`
WIDTH=$1
HEIGHT=$(echo "$WIDTH/1.6" | bc)
HALF_RES=$2
if [ "$HALF_RES" = "true" ]; then
    WIDTH=`expr $WIDTH / 2`
    HEIGHT=`expr $HEIGHT / 2`
fi

if [ -f "$ANDROID_PRODUCT_OUT/bootanimation.zip" ]; then
    echo "$ANDROID_PRODUCT_OUT/bootanimation.zip"
else
RESOLUTION=""$WIDTH"x"$HEIGHT""
set >blah

mkdir -p $ANDROID_PRODUCT_OUT/bootanimation/part{0..4}
tar xvfp "$PWD/vendor/slim/bootanimation/bootanimation.tar" --to-command="convert - -resize '$RESOLUTION' \"png8:$ANDROID_PRODUCT_OUT/bootanimation/\$TAR_FILENAME\""
# create desc.txt
echo "$WIDTH" "$HEIGHT" 60 > "$ANDROID_PRODUCT_OUT/bootanimation/desc.txt"
cat "$PWD/vendor/slim/bootanimation/desc.txt" >> "$ANDROID_PRODUCT_OUT/bootanimation/desc.txt"

# create bootanimation.zip
cd "$ANDROID_PRODUCT_OUT/bootanimation"
zip -r0 "$ANDROID_PRODUCT_OUT/bootanimation.zip" .
echo "$ANDROID_PRODUCT_OUT/bootanimation.zip"

fi

