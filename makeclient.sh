#!/bin/bash
docker run -v /etc/openvpn:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $1 nopass
docker run -v /etc/openvpn:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $1 > $1.ovpn
