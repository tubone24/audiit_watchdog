#!/usr/bin/bash
source /etc/profile
swatch -c /etc/swatch.d/swatchrc.sshlogin -t /var/log/messages > /dev/null
