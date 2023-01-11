#!/bin/sh

set -x

ip link add red type vrf table 2
ip link set dev red up

# eth1 goes in the vrf eth1vrf
ip link set dev eth1 master red

# vrf default route (we set it via the table)
ip route add default via 10.111.221.21 dev eth1 table 2
