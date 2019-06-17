#!/bin/bash

L_PORT=${L_PORT:-"6444"}

cp /etc/privoxy/configbak /etc/privoxy/config
echo listen-address 0.0.0.0:${L_PORT} >> /etc/privoxy/config
privoxy --no-daemon /etc/privoxy/config




