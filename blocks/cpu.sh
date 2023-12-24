#!/bin/sh
echo -n ' '"$(sensors -j | jq 'map(.).[0].temp3.temp3_input' | sed 's/\(.*\)\..*/\1/')"'°C'
