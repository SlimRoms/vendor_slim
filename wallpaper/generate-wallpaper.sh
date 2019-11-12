#!/bin/bash

#################################
#EXECUTE FROM SLIM ROOT DIRECTORY
#################################


CWD=`pwd`

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        OS=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
        OS=darwin
fi

#SOURCE IMAGE NAME
BASE_NAME=default_wallpaper.png

#SOURCE IMAGE LOCATION
BASE_WALLPAPER=$(echo "$PWD"/vendor/slim/wallpaper/"$BASE_NAME")

#OUTPUT WALLPAPERS LOCATION
OUTPUT_PACKAGE=$(echo "$PWD"/vendor/slim/overlay/common/frameworks/base/core/res/res/)

#STANDARD IMAGE SIZES
HDPI_RES="1080x960"
MDPI_RES="720x640"
NODPI_RES="960x800"
SW600DP_RES="1600x1280"
SW720DP_RES="1920x1280"
XHDPI_RES="1440x1280"
XXHDPI_RES="2160x1920"
XXXHDPI_RES="2880x2560"

#STANDARD FOLDER NAMING
HDPI_FOLDER="$OUTPUT_PACKAGE"drawable-hdpi/
MDPI_FOLDER="$OUTPUT_PACKAGE"drawable-mdpi/
NODPI_FOLDER="$OUTPUT_PACKAGE"drawable-nodpi/
SW600DP_FOLDER="$OUTPUT_PACKAGE"drawable-sw600dp-nodpi/
SW720DP_FOLDER="$OUTPUT_PACKAGE"drawable-sw720dp-nodpi/
XHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xhdpi/
XXHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xxhdpi/
XXXHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xxxhdpi/


#CONVERT IMAGES
mkdir -p "$HDPI_FOLDER" "$MDPI_FOLDER" "$NODPI_FOLDER" "$SW600DP_FOLDER" "$SW720DP_FOLDER" "$XHDPI_FOLDER" "$XXHDPI_FOLDER" "$XXXHDPI_FOLDER"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $MDPI_RES^ -gravity center -extent $HDPI_RES -path $HDPI_FOLDER/ $BASE_WALLPAPER
echo "$HDPI_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $MDPI_RES^ -gravity center -extent $MDPI_RES -path $MDPI_FOLDER/ $BASE_WALLPAPER
echo "$MDPI_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $NODPI_RES^ -gravity center -extent $NODPI_RES -path $NODPI_FOLDER/ $BASE_WALLPAPER
echo "$NODPI_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $SW600DP_RES^ -gravity center -extent $SW600DP_RES -path $SW600DP_FOLDER/ $BASE_WALLPAPER
echo "$SW600DP_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $SW720DP_RES^ -gravity center -extent $SW720DP_RES -path $SW720DP_FOLDER/ $BASE_WALLPAPER
echo "$SW720DP_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $XHDPI_RES^ -gravity center -extent $XHDPI_RES -path $XHDPI_FOLDER/ $BASE_WALLPAPER
echo "$XHDPI_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $XXHDPI_RES^ -gravity center -extent $XXHDPI_RES -path $XXHDPI_FOLDER/ $BASE_WALLPAPER
echo "$XXHDPI_FOLDER$BASE_NAME created"
prebuilts/tools-slim/${OS}-x86/bin/mogrify -resize $XXXHDPI_RES^ -gravity center -extent $XXXHDPI_RES -path $XXXHDPI_FOLDER/ $BASE_WALLPAPER
echo "$XXXHDPI_FOLDER$BASE_NAME created"
echo "ALL DONE!"
