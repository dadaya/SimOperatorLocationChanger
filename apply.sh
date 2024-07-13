PROPERTY='
gsm.sim.operator.numeric=62120
gsm.sim.operator.iso-country=NG
gsm.sim.operator.alpha=O2
gsm.operator.numeric=62120
gsm.operator.iso-country=NG
gsm.operator.alpha=O2
'

for PROP in $PROPERTY; do
  NAME=${PROP%=*} VALUE=${PROP#*=}
  REPORT=$(getprop $NAME)
  TARGET=$(echo $REPORT | sed -r "s/[^,]{1,}/$VALUE/g") # dual-sim
  [ "$TARGET" = "$REPORT" ] || resetprop -n $NAME $TARGET
done
