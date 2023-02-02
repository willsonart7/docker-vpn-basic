#!/bin/bash

CLIENTNAME=$1

docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass && echo $CLIENTNAME >> /opt/openvpn/users.csv
