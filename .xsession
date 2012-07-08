BACKGROUND="${HOME}/pics/bg/thinksecurelyblackandwhite_1920x1200.png"

xrdb ${HOME}/.Xdefaults
xmodmap ${HOME}/.xmodmaprc

xscreensaver --no-splash &
Esetroot -s ${BACKGROUND}
exec spectrwm
