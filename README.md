# My Kubuntu setup

After having a bad experience with other distros I'm back to Kubuntu and KDE.

KDE because... XFCE was too light, LXQt was not there yet. Gnome was better in some was, but could not beat KDE for me.

Kubuntu because... They seem to have fixed the issues I had with it years ago. Neon was overall less stable (and I like some stability nowadays). I needed an `apt` based distro asn I'm tired of learning the package management dance all over.

This repo contains guides on topics (each in a directory of its own), and some basic setup stuff (read on). I've tried lots of dotfile managers, yet they never really stuck to me. Hence this repos simply contains Markdown files with copy-pastable bits and some files. Maybe one day I manage to get some of my KDE settings automated, how knows.

# Basic setup

If I dont do these first, doing the rest will be impossible or unnessecarily frustrating.


## Installing Kubuntu

* Keyboard layout: US/ Euro on 5
* What to install: Minimal installation + all updates and proprietary extras
* Partitioning: Split root and home partitions without disk encryption or "one big root partition" with encryption
* Timezone: US/NYC (switch it later back to my actual timezone, as setting it here will result in other unwanted localization settings beyond the timezone)


## Keyboard mapping

This maps `CAPS` to an extra `CTRL` and setup up the `RightALT` as the compose key
(allowing: `RightALT` `"` `e` -> `ë`). This works also in console screens.

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

Answer the questions on you keyboard type. On my XPS13 I use "Generic 104 PC", "English (US)" and "(euro on 5)". It puts my keyboard config realy deep in the OS, so it works always and everywhere. It requires a restart to be in effect.


## Remove snap

I hate it. It makes my system less predictable, increases load times, makes UI stuff look ugly.

    sudo rm -rf /var/cache/snapd/ && sudo apt autoremove --purge snapd

And then:

    rm -fr ~/snap


## Some system packages

    sudo apt-get install -y git vim htop tree build-essential


## Assume identity

You might want to copy over some key files.


