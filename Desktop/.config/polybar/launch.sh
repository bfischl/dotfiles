killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m 
        echo $MONITOR
        export MONITOR
        polybar --reload top &
        polybar --reload bottom &
    done
else
polybar top &
polybar bottom & 
fi 
