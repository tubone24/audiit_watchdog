#!/usr/bin/env bash
WEBHOOK_URL=$1
cp swatch/etc/swatch.d/* /etc/swatch.d/
cp swatch/etc/systemd/system/* /etc/systemd/system/

systemctl enable swatch-openvpn-init.service
systemctl start swatch-openvpn-init.service
systemctl enable swatch-ssh-login.service
systemctl start swatch-ssh-login.service
