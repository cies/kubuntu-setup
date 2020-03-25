# My Kubuntu setup

After having a bad experience with other distros I'm back to Kubuntu and KDE.

KDE because... XFCE was too light, LXQt was not there yet. Gnome was better in some ways, but could not beat KDE for me.

Kubuntu because... They seem to have fixed the issues I had with it years ago. Neon was overall less stable (and I like some stability nowadays). I needed an `apt` based distro asn I'm tired of learning the package management dance all over. If the Ubuntus go all in with [snap](/docs/installing-snapd) I will move to a distro without it.

This repo contains per topic guides (by means of a `README.md` file each in a directory of its own), and some generic setup stuff (in the `README.md` file you are reading now). I've tried lots of dotfile managers, yet they never really stuck (the dont really help for tree of configs and installing OS dependencies). Hence this repo simply contains Markdown files with copy-pastable bits and dot/config files. Maybe one day I manage to get some of my KDE settings automated, how knows.

This repro is to scratch my own itch, but feel free to copy from it. If you have tips or otherwise want to reach out (maybe you found a life saving productivity hack in here) feel free to file a issue. There's no issue template. No code of conduct. Go for it.


# Installing Kubuntu

* Keyboard layout: US/ Euro on 5
* What to install: Minimal installation + all updates and proprietary extras
* Partitioning: Split root and home partitions without disk encryption or "one big root partition" with encryption
* Timezone: US/NYC (switch it later back to my actual timezone, as setting it here will result in other unwanted localization settings beyond the timezone)


# Generic setup

If I dont do these first, doing the rest will be impossible or unnessecarily frustrating.


## Keyboard mapping

This maps `CAPS` to an extra `CTRL` and setup up the `RightALT` as the compose key
(allowing: `RightALT` `"` `e` -> `ë`).

    sudo bash -c "cat > /etc/default/keyboard" << EOL
    # KEYBOARD CONFIGURATION FILE
    # Consult the keyboard(5) manual page.
    XKBMODEL="pc105"
    XKBLAYOUT="us"
    XKBVARIANT="euro"
    XKBOPTIONS="compose:ralt,ctrl:nocaps"
    BACKSPACE="guess"
    EOL

Then run:

    sudo dpkg-reconfigure keyboard-configuration

Answer the questions. When done it puts my keyboard config realy deep in the OS, so it works always and everywhere. It requires a restart to be in effect.


## Remove snap

I hate it. It makes my system less predictable, increases load times, makes UI stuff look ugly, obfuscates process monitoring, hogs memory, cannot deal with files in `/tmp` (and I happen to like `/tmp`, makes if hard to do audio (like connecting a mic to Chromium)... I can go on.

    sudo rm -rf /var/cache/snapd/ && sudo apt autoremove --purge snapd

And then:

    rm -fr ~/snap

And make sure it never installs again:

```
sudo bash -c "cat > /etc/apt/preferences.d/no-snapd.pref" << EOL
Package: snapd
Pin: origin ""
Pin-Priority: -1
EOL
```


## Install some system packages

    sudo apt-get install -y git vim htop tree dtrx build-essential net-tools


## That's it...

See the on topic READMEs in the sub directories.
