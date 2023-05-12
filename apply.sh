PROPERTY='
gsm.sim.operator.numeric=23402
gsm.sim.operator.iso-country=gb
gsm.sim.operator.alpha=O2
'

for PROP in $PROPERTY; do
  NAME=${PROP%=*} VALUE=${PROP#*=}
  REPORT=$(getprop $NAME)
  TARGET=$(echo $REPORT | sed -r "s/[^,]{1,}/$VALUE/g") # dual-sim
  [ "$TARGET" = "$REPORT" ] || resetprop -n $NAME $TARGET
done
