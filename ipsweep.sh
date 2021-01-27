#!/bin/bash

echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
echo "▀█▀ ▒█▀▀█ ░░ ▒█▀▀▀█ █░░░█ █▀▀ █▀▀ ▒█▀▀█ "
echo "▒█░ ▒█▄▄█ ▀▀ ░▀▀▀▄▄ █▄█▄█ █▀▀ █▀▀ ▒█▄▄█ "
echo "▄█▄ ▒█░░░ ░░ ▒█▄▄▄█ ░▀░▀░ ▀▀▀ ▀▀▀ ▒█░░░"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"

if [ "$1" == "" ]
then
echo "~~ Use : ./world.sh <ip-address> (e.g : ./world.sh 127.0.0.) ~~ "
echo "~~ Hey ! You forgot to put IP, or correct syntax IP ~~"

else

for ip in `seq 1 254`; do
echo "The IP are as follows :-"
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
