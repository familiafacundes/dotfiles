#!/bin/bash
# Home Media Center
xrandr --newmode "1360x768_60.00" 60.00 1360 1432 1568 1776 768 771 781 798 -hsync +vsync
xrandr --addmode LVDS1 1360x768_60.00
xrandr|grep 1360
xrandr --output LVDS1 --mode 1360x768_60.00 --pos 0x0 --output HDMI1 --mode 1360x768 --pos 0x0
