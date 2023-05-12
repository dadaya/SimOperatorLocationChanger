ui_print '

Following properties will be changed:
 * gsm.sim.operator.alpha: O2
 * gsm.sim.operator.numeric: 23402
 * gsm.sim.operator.iso-country: gb
 * gsm.operator.numeric: 23402
 * gsm.operator.iso-country: gb
 * gsm.operator.alpha: O2

These packages will be cleared on next reboot:
 * com.google.android.gms
 * com.google.android.gsf
'

# clearing Google Play services crashes Magisk Manager
touch $MODPATH/pm-clear
