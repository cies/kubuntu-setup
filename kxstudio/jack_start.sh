#!/bin/bash

# Troubleshooting:
# * No sound: use cadence to check if jack is running, if it is check if `Configure > Driver tab` is setup with ALSA


echo
echo ">>> Kill all audio daemons"
#killall -9 carla
killall -9 a2jmidid
killall -9 jackdbus
killall -9 pulseaudio
sleep 5

echo
echo ">>> Start jack"
jack_control start & 
sleep 1

echo
echo ">>> Start pulseaudio"
pulseaudio --start

echo
echo ">>> Start cadence"
cadence &
sleep 2

#echo
#echo ">>> Unload pulseaudio modules related to jack"
#pacmd unload-module module-jackdbus-detect
#pacmd unload-module module-jack-sink
#pacmd unload-module module-jack-source
#sleep 2

#pulseaudio bridges | in / out

#pacmd load-module module-jack-source channels=2 source_name=voip-in client_name=voip-in connect=false
#pacmd load-module module-jack-sink channels=2 sink_name=voip-out client_name=voip-out connect=false

#pacmd load-module module-jack-sink channels=2 sink_name=games-out client_name=games-out connect=false

#echo
#echo ">>> Load pulseaudio modules for jack source and sink"
#pacmd load-module module-jack-source channels=2 source_name=jack-source client_name=jack-source connect=false
#pacmd load-module module-jack-sink channels=2 sink_name=jack-sink client_name=jack-sink connect=false
#sleep 2

echo
echo ">>> Start the a2jmidid daemon that makes all ALSA midi sequencers show up in jack"
PID=$(ps -ef | grep a2jmidid | grep -v grep | awk -v N=2 '{print $N}')
if [ -z "$PID" ]
then
	a2jmidid -e & sleep 2
else
	echo "a2jmidid runs with pid: $PID"
fi

echo
echo "Audio systems up and running"
