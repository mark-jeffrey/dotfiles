#!/bin/bash

# find modeline and connected display name
MODELINE=$(gtf 1920 1080 60 | sed -n 's/Modeline//p')
MODE=$(echo $DISPLAY_MODELINE | awk -F '"' '{print $2}')
SCREEN=$(xrandr | grep " connected " | awk '{ print$1 }')

# define and output mode
xrandr --newmode "$MODE" ${MODELINE#*\"*\"}
xrandr --addmode $SCREEN "$MODE"
xrandr --output $SCREEN --mode "$MODE"
