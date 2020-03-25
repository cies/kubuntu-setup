# KXStudio

Follow [the instructions on how to add KX's repos](https://kx.studio/Repositories)

Then install the audio shebang:
 
    sudo apt install kxstudio-recommended-audio kxstudio-recommended-audio-plugins kxstudio-recommended-audio-plugins-lv2

Get yourself in the `audio` group: 
 
    sudo usermod -a -G audio $USER

There's a script in this dir named `jack_start.sh`, put it in `~/bin` and use it to get your jack-with-portaudios-bridge up and running.
