#export DESKTOP_SESSION=plasma
#exec startplasma-x11

xmodmap ~/.xmodmap-`uname -n`
xmodmap ~/.xmodmaprc
xinput set-prop 11 313 1
xinput set-prop 11 321 1
#feh --recursive --bg-fill --randomize ~/Pictures/Wallpapers/wallpapers/Landscapes/* & disown
exec startplasma-x11
