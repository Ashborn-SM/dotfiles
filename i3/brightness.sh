MONITORS=$(xrandr -q | grep ' connected' | cut -d ' ' -f1 | tr '\n' ' ')
CUR_BRIGHTNESS=$(xrandr --verbose | grep -i "brightness" | head -n 1 | grep -o '[0-9.]\+')

if [[ "$1" == "UP" ]]; then
	BRIGHTNESS=$(awk -v "k=$CUR_BRIGHTNESS" 'BEGIN { print k + 0.1 }')
elif [[ "$1" == "DOWN" ]]; then
	BRIGHTNESS=$(awk -v "k=$CUR_BRIGHTNESS" 'BEGIN { print k - 0.1 }')
fi

for MONITOR in $MONITORS; do
	xrandr --output $MONITOR --brightness $BRIGHTNESS
done
