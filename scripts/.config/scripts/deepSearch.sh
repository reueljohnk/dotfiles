#! /bin/bash
locate /home/reueljohn | rofi -theme chrome -dmenu -i -p "Search"| xargs -r -0 xdg-open

