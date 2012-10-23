#!/sbin/sh
# 
# /system/addon.d/20-bp.sh
# During a Slim upgrade, this script backs up user lcd density,
# /system is formatted and reinstalled, then the lcd density is restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
system/build.prop
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_lcd $S/"$FILE" "$R"
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
