# Chrome (Chromium actually)

Because one browser (Firefox, yay) is not enough these days. 

The `chromium-browser` package from Ubuntu (Kubuntu) installs it as a snap (and auto installs `snapd`, which sould have been blacklistes as per the root README). I hate snap, hence it is blacklisted. So let's find another way...

Make sure `chrome` (includes Chromium) is not running:

    killall -9 chrome


Then add some repos from Debian:

```
sudo bash -c "cat > /etc/apt/sources.list.d/debian.list" << EOL
deb http://ftp.debian.org/debian buster main
deb http://ftp.debian.org/debian buster-updates main
deb http://security.debian.org/debian-security buster/updates main
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

* I only use Chromium for Hangouts, so I install that from the Chrome Store.

