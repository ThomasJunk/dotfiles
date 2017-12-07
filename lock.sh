#!/bin/bash
ICON=~/locked.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 25% -scale 400% -blur 18.5 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
