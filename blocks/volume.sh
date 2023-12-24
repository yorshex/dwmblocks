#!/bin/sh
case "$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')" in
    'yes' ) printf '' ;;
    'no' ) printf '' ;;
esac
pactl get-sink-volume @DEFAULT_SINK@ | sed '1!d' | awk -F' / ' '{print " "$2}'
