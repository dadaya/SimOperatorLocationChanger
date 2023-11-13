#!/system/bin/sh

MODPATH=/data/adb/modules/gsm_faker

# wait for boot complete
while [ "$(getprop sys.boot_completed)" != 1 ]; do
    sleep 1
done

if [ -f $MODPATH/pm-clear ]; then
  su -c 'pm clear com.google.android.gms'
  su -c 'pm clear com.google.android.gsf'
  su -c 'pm clear com.android.vending'
  rm $MODPATH/pm-clear
fi

. $MODPATH/apply.sh
crond -c $MODPATH/cron
