xset r rate 300 50
setxkbmap -option caps:escape
setxkbmap -option altwin:swap_alt_win

feh --bg-scale ~/sources/wall.jpg

volumeicon &
tint2 &
exec openbox
