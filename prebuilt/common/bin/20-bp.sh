#!/sbin/sh
# 
# /system/addon.d/20-bp.sh
# During a Slim upgrade, this script backs up user lcd density,
# /system is formatted and reinstalled, then the lcd density is restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
build.prop
EOF
}

case "$1" in
  backup)
    cp $S/$FILE $C/$S/$FILE
    done
  ;;
  restore)
	USERLCD=`sed -n -e'/ro\.sf\.lcd_density/s/^.*=//p' $C/$S/$FILE`
	SLIMLCD=`sed -n -e'/ro\.sf\.lcd_density/s/^.*=//p' $S/$FILE`
	sed -i 's/ro.sf.lcd_density=$SLIMLCD/ro.sf.lcd_density=$USERLCD/g' $S/$FILE
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
