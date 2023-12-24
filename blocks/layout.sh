#!/bin/sh
case "$(xset -q | grep LED | awk '{ print $10 }' | cut -c -5)" in
    '00000' ) echo 'us' ;;
    '00001' ) echo 'ru' ;;
    * )       echo '??' ;;
esac
