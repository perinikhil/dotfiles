xset led $(xset -q | awk '/LED mask:/{print ($NF?"off":"on")}')
