#!/system/bin/sh

MODPATH=/data/adb/modules/gsm_faker

sleep 30s # wait for boot complete

if [ -f $MODPATH/pm-clear ]; then
  su -c 'pm clear com.google.android.gms'
  su -c 'pm clear com.google.android.gsf'
  rm $MODPATH/pm-clear
fi

. $MODPATH/apply.sh
crond -c $MODPATH/cron
