killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top &
polybar top2 &
polybar bottom & 
polybar bottom2 &
