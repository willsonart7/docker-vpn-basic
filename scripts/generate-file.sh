#!/bin/bash

CLIENTNAME=$1

docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > ./user_files/$CLIENTNAME.ovpn
