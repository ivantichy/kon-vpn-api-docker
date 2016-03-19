#!/bin/bash

if [ "$1" == "bash" ]; then
	"$@"
	exit
fi 

if [[ ! -f haveca ]]; then

        echo "y"> haveca
	Koncentrator/test/BasicTests/cleanserver.sh
	chmod +x Koncentrator/*.sh

fi

service openvpn start 

java -classpath Koncentrator/*:Koncentrator/lib/* cz.ivantichy.httpapi.handlers.vpnapi.RunnerVPN >> vpn.log

service openvpn stop


