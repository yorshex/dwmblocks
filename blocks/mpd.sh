#!/bin/sh

icon="󰎇"
msg=`mpc -f '[[%artist% - ]%title%]|[%file%]'`
lines=`echo "$msg" | wc -l`

if [[ "$lines" -gt 2 ]]; then
	status=`echo "$msg" | tail -n 2 | head -n 1 | awk '{ print $1 }'`
	[[ "$status" == "[paused]" ]] && icon="󰏤"
	msg=`echo "$msg" | head -n 1`
else
	icon="󰓛"
	msg="mpd"
fi

echo -n "$icon $msg"
