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

cd Koncentrator

exec ./RunCERTAPI.sh >> cert.log
