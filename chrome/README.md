# Chrome (Chromium actually)

Because one browser is not enough. 

The `chromium-browser` package install it as a snap (and auto installs `snapd`), so let's find another way...


https://askubuntu.com/questions/1204571/chromium-without-snap

```
sudo bash -c "cat > /etc/apt/sources.list.d/debian.list" << EOL
deb http://ftp.debian.org/debian buster main
deb http://ftp.debian.org/debian buster-updates main
deb http://ftp.debian.org/debian-security buster/updates main
EOL
```

And import the keys:

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A

Then creat this file:

```
sudo bash -c "cat > /etc/apt/preferences.d/chromium.pref" << EOL
# Note: 2 blank lines are required between entries
Package: *
Pin: release a=eoan
Pin-Priority: 500

Package: *
Pin: origin "ftp.debian.org"
Pin-Priority: 300

# Pattern includes 'chromium', 'chromium-browser' and similarly named dependencies:
Package: chromium*
Pin: origin "ftp.debian.org"
Pin-Priority: 700
EOL
```

Finally run:

    sudo apt update
    sudo apt install chromium


## Plugins, add-ons, apps, whatever...

I only use Chromium for Hangouts, so I install that.
