#!/bin/bash

RESULT=`xrandr | grep -w DP*`

if [[ "$RESULT" =~ " connected " ]]; then
 DP_LINE=`xrandr | grep -w DP* | grep -w connected`
 DP_NUMBER=`echo "$DP_LINE" | awk '{print $1}' | cut -d':' -f1`
# echo $DP_NUMBER
 xrandr --output $DP_NUMBER --scale 2x2 --mode 1920x1080 --pos 3840x0
 xrandr --output eDP-1 --scale 0.9999x0.9999
fi
    
exit 0
