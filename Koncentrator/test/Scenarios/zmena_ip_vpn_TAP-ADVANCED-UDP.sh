#!/bin/bash

set -ex 
set -o pipefail

set +e
pkill -e -f ".*cz.ivantichy.httpapi.handlers.vpnapi.*"
set -e

java -classpath "Koncentrator/*:Koncentrator/lib/*" cz.ivantichy.httpapi.handlers.vpnapi.RunnerVPN &
java -classpath "Koncentrator/*:Koncentrator/lib/*" cz.ivantichy.httpapi.handlers.vpnapi.RunnerCERT &

sleep 5

chmod 666 *.json

java -classpath "Koncentrator/*:Koncentrator/lib/*" cz.ivantichy.support.JSON.test.JSONAddParameter server.json ip_range 172.17.213.0/24


#VPN updateServer
curl -f -v -X POST "http://127.0.0.1:10002/updateserver" -d @server.json

pkill -e -f ".*cz.ivantichy.httpapi.handlers.vpnapi.*"













