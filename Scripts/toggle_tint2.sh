#!/bin/bash

if pgrep -x "tint2" > /dev/null
then
	pkill tint2
else
	tint2 &
fi
