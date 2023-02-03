#!/bin/bash

HOST_URL=$HOST_URL

docker-compose run --rm openvpn  ovpn_genconfig -u udp:$HOST_URL
