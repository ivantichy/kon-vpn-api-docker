
#!/bin/bash

Koncentrator/test/BasicTests/cleanserver.sh

if [[ -f haveca ]]; then

        echo "y"> haveca

fi

cd Koncentrator
./RunCERTAPI.sh >> cert.log
