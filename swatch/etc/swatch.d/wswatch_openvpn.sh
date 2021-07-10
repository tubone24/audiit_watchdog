#!/usr/bin/bash
source /etc/profile
swatch -c /etc/swatch.d/swatchrc.openvpninit -t /var/log/openvpn.log > /dev/null
