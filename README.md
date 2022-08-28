# My OpenSUSE Tumbleweed setup

After enjoying Kubuntu and KDE for a while, I got fed up with the problematic distribution version upgrades.
I wanted to go with a rolling release model, and somethign that does not tries to shove `snap` or `flatpak` down my throat.

I picked SUSE Tumbleweed as it is quite KDE focussed, has speady enough updates, follows a rolling release model, comes with a solid package manager and is overall pretty stable. Arch, Neon and Manjaro were also considered.

This time around I wanted to use `btrfs` with snapshots on my root and `/home` partitions. Also I like the fact that  root and `/home` can share one partition in `btrfs` with its subvolumes feature. Obviously I will use disk encryption on that partition.

This repo contains per-topic guides (by means of a `README.md` file each in a directory of its own), and some generic setup stuff (in the `README.md` file you are reading now). I've tried lots of dotfile managers, yet they never really stuck (the dont really help for tree of configs and installing OS dependencies). Hence this repo simply contains Markdown files with copy-pastable bits and dot/config files. Maybe one day I manage to get some of my KDE settings automated, who knows.

This repro is to scratch my own itch, but feel free to copy from it. If you have tips or otherwise want to reach out (maybe you found a life saving productivity hack in here) feel free to file a issue even if you just want to say hi. There's no issue template. No code of conduct. Go for it.

**NOTE**: This guide assumes a recent version of SUSE Tumbleweed.


## Download the ISO and prepare a USB drive

First [download a recent OpenSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/#download) in `/tmp`.

Now find the block device of the USB drive with:

    lsblk  # repeat this with and without the USB drive inserted

Make sure the USB drive is **not** mounted.

We assume the USB drive is available as `/dev/sdb` and the image is `kubuntu-21.10-desktop-amd64.iso`.

```bash
sudo dd if=/tmp/openSUSE-Tumbleweed-DVD-*-Media.iso of=/dev/sdb bs=4M status=progress && sync
```

When this is finished the USB drive is ready to be used as installation medium.


## Installing Kubuntu

When installing choose these options:

* Keyboard layout variant: US
* What to install: Plasma
* Partitioning (this setup does not encrypt the swap and boot partition, it makes the setup of "only one passphrase at boot" and "hibernate (suspend to disk)" a lot easier). The size of the swap partition should not be much smaller than your memory (as in hibernation RAM gets compressed before it is written to disk).

```
/dev/nvme0n1
|--   /dev/nvme0n1p1     0.55 GB   F         EFI System Partition    /boot/efi
|--   /dev/nvme0n1p2    15.00 GB   F         Swap Partition          <swap>
|--   /dev/nvme0n1p3     1.20 GB   F         Ext4 Partition          /boot
\--   /dev/nvme0n1p4   900.00 GB   F   ENC   Btrfs Partition
      |--   @/         900.00 GB             Btrfs Subvolume         /
      \--   @/home     900.00 GB             Btrfs Subvolume         /home
```

## Generic setup

These steps are fundamental to the per topic READMEs and/or my sanity.


### Install some packages

I'm blind without these, and the rest of the READMEs may require them.

```bash
sudo zypper install git tig htop iotop ripgrep xinput
```

### Get `/usr/local/{bin,share,src}` ready

Since I like to use that `/usr/local` for installing software as a normal user that is not managed by the package manager and should be available system-wide.

```bash
sudo chown -R $USER:$USER /usr/local/bin /usr/local/share /usr/local/src
```

## Current laptop's issue: touchpad not working after waking up

Using a *Lenovo Yoga Slim 7 14ARE05* my touchpad does not work after sleep/hibernate, this fixes it when using KDE:

```bash
cat > /usr/local/bin/restart-touchpad.sh << EOF
#!/bin/sh
export TOUCHPAD_NAME="\$(xinput list --name-only | grep Touchpad)"
xinput disable "\$TOUCHPAD_NAME" && xinput enable "\$TOUCHPAD_NAME"
EOF
chmod +x /usr/local/bin/restart-touchpad.sh
cat > ~/.config/ksmserver.notifyrc << EOF
[Event/unlocked]
Action=Execute
Execute=/usr/local/bin/restart-touchpad.sh
Logfile=
Sound=
TTS=
EOF
```

**NOTE**: Finding a non-KDE-specific solution is not easy as requires the use of systemd's system-wide services (only those have access to the suspend and hibernate targets), while the system-wide services cannot access Xorg since the `XAUTHORITY` env var is not set (and on modern machines it can no longer be expected to be at `~/.Xauthority`.


## That's it...

See the on topic READMEs in the sub directories.

Usually I start with `kde` and `zsh` to avoid annoyance getting the others done.

