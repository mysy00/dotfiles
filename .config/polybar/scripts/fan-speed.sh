#!/bin/dash

speed=$(sensors | grep fan1 | cut -d " " -f 9)

speed_round=$(echo "scale=1;$speed / 1000" | bc -l )
echo "$speed_round RPM"
