#!/sbin/sh

export C=/tmp
export S=/system
export V=9

 local FILE=`basename "$1"`
echo $FILE
#  if [ -e "$C/$S/$FILE" ]; then
	local USERLCD=`sed -n -e'/ro\.sf\.lcd_density/s/^.*=//p' $C/$FILE`
	echo "USERLCD="$USERLCD
	local SLIMLCD=`sed -n -e'/ro\.sf\.lcd_density/s/^.*=//p' $S/$FILE`
	echo "SLIMLCD="$SLIMLCD
SS="lcd_density="$SLIMLCD
echo $SS
DD="lcd_density="$USERLCD
echo $DD
echo $S/$FILE
	sed -i "s/ro.sf.lcd_density=$SLIMLCD/ro.sf.lcd_density=$USERLCD/g" $S/$FILE
#  fi
