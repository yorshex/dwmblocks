#!/bin/sh
echo -n ' '"$(sensors -j | jq '."k10temp-pci-00c3".temp1.temp1_input' | sed 's/\(.*\)\..*/\1/')"'°C'
