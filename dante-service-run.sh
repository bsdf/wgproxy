#!/usr/bin/with-contenv bash

ip link show wg0 &>/dev/null || exit
exec s6-setuidgid abc /usr/sbin/danted
