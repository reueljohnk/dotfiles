#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
    temp=$(redshift -p 2> /dev/null | grep temp | cut -d ":" -f 2 | tr -dc "[:digit:]")

    if [ -z "$temp" ]; then
        echo ""
    elif [ "$temp" -ge 5000 ]; then
        echo ""
    elif [ "$temp" -ge 4000 ]; then
        echo ""
    else
        echo ""
    fi
fi
