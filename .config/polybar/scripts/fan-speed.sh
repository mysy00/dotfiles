#!/bin/sh

speed=$(sensors | grep fan1 | cut -d " " -f 9)

if [[ "$speed" != "" ]]
then
  speed_round=$(echo "scale=1;$speed / 1000" | bc -l )
else
  speed_round="0"
fi

echo "$speed_round RPM"
