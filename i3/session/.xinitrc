#!/usr/bin/env /bin/bash

source $HOME/.profile

/usr/bin/xrdb -load $HOME/.Xresources

/usr/bin/display -window root $HOME/Images/desktop-background.jpg

/usr/bin/urxvtd -q -f -o

/usr/bin/numlockx on

/usr/bin/setxkbmap -option "compose:rctrl" -option "terminate:ctrl_alt_bksp"

/usr/bin/pulseaudio --start
/usr/bin/pax11publish

/usr/bin/xautolock -time 5 -locker "i3exit lock" -killtime 20 -killer "i3exit suspend" -notify 10 -notifier "notify-send Verrouillage dans 10 secondes" -corners 00+- -detectsleep &

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec /usr/bin/i3



