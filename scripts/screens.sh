if xrandr | grep HDMI1 | grep " connected " ; then
  # External monitor is connected
  xrandr --output LVDS1 --primary --mode 1360x768 --pos 0x1024 --output HDMI1 --mode 1280x1024 --pos 40x0
  if [ $? -ne 0 ]; then
    # Something went wrong. Autoconfigure the internal monitor and disable the external one
    xrandr --output LVDS1 --mode 1360x768 --output HDMI1 --off
  fi
else
  # External monitor is not connected
  xrandr --output LVDS1 --mode 1360x768 --output HDMI1 --off
fi
