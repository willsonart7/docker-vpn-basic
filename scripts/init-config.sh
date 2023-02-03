#!/bin/bash

HOST_URL=$1

docker-compose run --rm openvpn  ovpn_genconfig -u $HOST_URL
