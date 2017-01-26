#!/bin/bash
# pushes latest $1 build to adb-connected device's root storage
# usage (from root source tree): adbpush.sh device

requested_product=$1
out_dir=$2
source_path=$(ls -t $out_dir/target/product/$requested_product/*build*.zip | head -1)
destination_path="/sdcard/$(basename $source_path)"
connected_product=$(adb wait-for-device shell getprop ro.build.product)
if [[ "$source_path" == *"No such file"* ]]; then #no build found
  echo $source_path
else
  if [[ "$connected_product" == "$requested_product" ]]; then
    echo "pushing build to $connected_product"
    adb push $source_path $destination_path
  else #connected device does not match specified device
    echo "connected device $connected_product does not match specified device $requested_product"
    echo "please connect your $requested_product to adb and try again"
  fi
fi
