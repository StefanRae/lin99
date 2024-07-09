#./Scripts/philips_monitor.sh &
xrdb ~/.Xresources &
#feh --bg-tile /home/stefan/morphing-diamonds.png &
feh --bg-tile /home/stefan/Downloads/Solid_green.png &
tint2 &
picom &
./lemstart.sh | sh &
exec openbox-session
