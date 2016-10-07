#!/bin/bash

current=$PWD
out=$OUT/obj/BOOTANIMATION
screen_width=$1
screen_height=$(bc <<<$screen_width/1.6)
resolution="$screen_width"x"$screen_height"
half_res=$2

if [ "$half_res" = "true" ]; then
    screen_width=`expr $screen_width / 2`
    screen_height=`expr $screen_height / 2`
fi

if [ -f $out/bootanimation.zip ]; then
    echo $out/bootanimation.zip
    exit 0
fi

for part in vendor/slim/bootanimation/part*; do
    p=`basename $part`
    for image in $part/*.[pP][nN][gG]; do
        echo $image
        i=`basename $image`
        dir=`dirname $image`
        if [ ! -d "$out/bootanimation/$p" ]; then
            mkdir -p $out/bootanimation/$p
        fi
        convert $image -resize $resolution png8:$out/bootanimation/$p/$i
    done
done

# create desc.txt
echo $screen_width $screen_height 60 > $out/bootanimation/desc.txt
cat vendor/slim/bootanimation/desc.txt >> $out/bootanimation/desc.txt

# create bootanimation.zip
cd $out/bootanimation
zip -r0 $out/bootanimation.zip .
cd $current

echo $out/bootanimation.zip
