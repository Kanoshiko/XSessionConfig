#!/usr/bin/env /bin/bash

source $HOME/.profile

/usr/bin/xrdb -load $HOME/.Xresources

#/usr/bin/display -window root $HOME/Images/desktop-background.jpg

/usr/bin/urxvtd -q -f -o

/usr/bin/numlockx on

/usr/bin/setxkbmap -option "compose:rctrl" -option "terminate:ctrl_alt_bksp"

/usr/bin/pulseaudio --start
/usr/bin/pax11publish

#$HOME/bin/btsync --config $HOME/.btsync.json

/usr/bin/xautolock -time 5 -locker "i3exit lock" -killtime 15 -killer "i3exit suspend" -notify 10 -notifier "notify-send 'Verrouillage imminent'" -corners 00+- -detectsleep -noclose &

/usr/bin/update-notifier &

xrandr --output DP-1 --right-of DVI-I-1 --primary

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)

exec /usr/bin/i3
