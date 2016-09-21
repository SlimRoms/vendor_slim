#!/bin/sh

RESOLUTIONS="480 600 720 800 1080 1200 1600"

for i in $RESOLUTIONS; do
	mkdir $i
	cd $i
		unzip ../$i.zip
		for j in */*.[pP][nN][gG]; do
			convert $j png8:tmp.png
			mv tmp.png $j
		done
	zip -r0 ../$i.zip .
	cd ..
	rm -rf $i
done
