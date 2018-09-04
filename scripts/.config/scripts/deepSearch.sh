#! /bin/bash
locate home | rofi -theme chrome -dmenu -i -p "locate:"| xargs -r -0 xdg-open

