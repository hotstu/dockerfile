#!/bin/bash

L_PORT=${L_PORT:-"6444"}
F_PORT=${F_PORT:-"6443"}

cp /etc/privoxy/configbak /etc/privoxy/config
echo listen-address 0.0.0.0:${L_PORT}$'\n'forward-socks5 / 127.0.0.1:${F_PORT} >> /etc/privoxy/config
privoxy --no-daemon /etc/privoxy/config




