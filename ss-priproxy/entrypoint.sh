#!/bin/bash

L_PORT=${L_PORT:-"6444"}
F_PORT=${F_PORT:-"6443"}
F_HOST=${F_HOST:-"ss"}
cp /etc/privoxy/configbak /etc/privoxy/config
echo listen-address 0.0.0.0:${L_PORT}$'\n'forward-socks5 / ${F_HOST}:${F_PORT} . >> /etc/privoxy/config
privoxy --no-daemon /etc/privoxy/config




