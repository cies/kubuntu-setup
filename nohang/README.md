Nohang — Prevent out of memory
==============================

By default Kubuntu does not warn you when you're running out of memory (and/or swap space). Good chances you find out too late (and you get crashes, lockups, lost data, etc.)

The `nohang` Python script fixes this, and sends notification with `libnotify` which are shown in KDE.

It costs 10-15MBs of memory to run this thing.

It required the following system package:

```
sudo apt get install libnotify-bin
```

Install it as follows:

```
cd /usr/local/src
git clone https://github.com/hakavlad/nohang.git
cd nohang
sudo make install
```

Now install the service and run it with:

```
sudo systemctl enable nohang-desktop
sudo systemctl start nohang-desktop
```

The default config (`/etc/nohang/nohang-desktop.conf`) works quite well.

It may be tested with `nohang --memload` (recommended, check if desktop notifications work)


