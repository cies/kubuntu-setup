# My Kubuntu setup

**NOTE**: This repository archived as I've since moved to OpenSUSE Tumbleweed for which I keep [similar notes](https://github.com/cies/tumbleweed-setup).

After having a bad experience with other distros I'm back to Kubuntu and KDE.

KDE because... [XFCE](https://www.xfce.org) was too light (and [in terms of resources not much lighter](https://www.forbes.com/sites/jasonevangelho/2019/10/23/bold-prediction-kde-will-steal-the-lightweight-linux-desktop-crown-in-2020) than KDE). [LXQt](https://lxqt.org) was not there yet. [GNOME](https://www.gnome.org/gnome-3) was better in some ways, but could not beat KDE for me.

Kubuntu because... They seem to have fixed the issues I had with it years ago. Neon was overall less stable (and I like some stability nowadays). I needed an `apt` based distro as I'm tired of learning the package management dance all over, and I'm done with compiling everything myself. If the Ubuntus go all in with [snap](/docs/installing-snapd) I will move to a distro without it. Back to Debian? But for now I still like my distro a little more bleeding edge than Debian.

This repo contains per-topic guides (by means of a `README.md` file each in a directory of its own), and some generic setup stuff (in the `README.md` file you are reading now). I've tried lots of dotfile managers, yet they never really stuck (the dont really help for tree of configs and installing OS dependencies). Hence this repo simply contains Markdown files with copy-pastable bits and dot/config files. Maybe one day I manage to get some of my KDE settings automated, who knows.

This repro is to scratch my own itch, but feel free to copy from it. If you have tips or otherwise want to reach out (maybe you found a life saving productivity hack in here) feel free to file a issue even if you just want to say hi. There's no issue template. No code of conduct. Go for it.

**NOTE**: This guide assumes Kubuntu version **22.04** (LTS), it may or may not with newer versions.


## Download the ISO and prepare a USB drive

First [download a recent Kubuntu ISO](https://kubuntu.org/getkubuntu). Then write the `.iso` file to a USB drive.

Find the block device of the USB drive with:

    lsblk  # repeat this with and without the USB drive inserted

Make sure the USB drive is **not** mounted.

We assume the USB drive is available as `/dev/sdb` and the image is `kubuntu-21.10-desktop-amd64.iso`.

     sudo dd if=./kubuntu-22.04-desktop-amd64.iso of=/dev/sdb bs=4M status=progress && sync

When this is finished the USB drive is ready to be used as installation medium.


## Installing Kubuntu

When installing choose these options:

* Keyboard layout variant: US/ Euro on 5
* What to install: Minimal installation + updates + proprietary extras
* Partitioning: Split root and home partitions without disk encryption or "Guided- use entire disk and setup encrypted LVM" if you want full disk encryption
* Timezone: US/NYC (switch it later back to my actual timezone, as setting it here will result in unwanted localization settings beyond the timezone)


## Generic setup

If I don't do these first, doing the rest will be unnessecarily frustrating.


### Install some packages

I'm blind without these, and the rest of the READMEs may require them.

```
sudo apt-get install -y git tig vim htop iotop tree build-essential net-tools
```


### Keyboard mapping

This maps `CAPS` to an extra `CTRL`, sets up `R-ALT` as the compose key
(allowing: `R-ALT` `"` `e` → `ë`), and maps `MENU` to `R-CTRL`, and `R-CTRL` to the `R-WIN` key.
Then I physically switch keycaps on these keys the `MENU` and `R-CTRL` key.

```
sudo bash -c "cat > /etc/default/keyboard" << EOL
XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT="euro"
XKBOPTIONS="compose:ralt,ctrl:nocaps,ctrl:swap_rwin_rctl,ctrl:menu_rctrl"
BACKSPACE="guess"
EOL
```

Then run:

```
sudo dpkg-reconfigure keyboard-configuration
```

Answer the questions. It puts the keyboard config realy deep in the OS (initramfs), so it works always and everywhere. It requires a restart to be in effect.


### Get `/usr/local/src` ready

I like to use that directory as a normal user.

```
sudo chown $USER:$USER /usr/local/src
```


### Remove snap

I hate it. It makes my system less predictable, increases load times, makes UI stuff look ugly, obfuscates process monitoring, hogs resources, does not allow me to start applications from the command line, cannot deal with files in `/tmp` (and I happen to use `/tmp` a lot), litters my system non-standard directories, installs in `$HOME` what I consider system applications, creates loads of mounts, makes if hard to do audio (like connecting a mic to Chromium)... I can go on.

```
sudo apt autoremove --purge snapd
sudo apt remove --purge plasma-discover-backend-snap
sudo apt purge -y snapd
sudo apt purge -y libsnapd-qt1
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/cache/snapd
sudo rm -rf /var/lib/snapd
sudo apt-mark hold snapd
sudo bash -c "cat > /etc/apt/preferences.d/no-snapd.pref" << EOL
Package: snapd
Pin: origin ""
Pin-Priority: -1
EOL
```

The last lines are an attempt to ensure snapd will not be considered in future.

The following commands are interactive:

```
sudo apt remove firefox chromium chromium-browser chromium-browser-l10n chromium-codecs-ffmpeg-extra
sudo add-apt-repository ppa:mozillateam/ppa
sudo add-apt-repository ppa:savoury1/chromium
sudo apt update
sudo apt install firefox-esr chromium
```



## That's it...

See the on topic READMEs in the sub directories.
