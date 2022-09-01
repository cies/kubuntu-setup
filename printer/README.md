# Printer

The *Bonjour/Dejavu* protocol is considered a security thread (it advertises your machine in the local network), so it is blocked by the firewall in OpenSUSE.

To test if we can find *Bonjour* services on the local network we need the `avahi` tools installed:

```bash
sudo zypper install -y avahi-utils
```

Using `avahi-browse -at` you can list any *Bonjour* sevices that can be found.

To temporarily open the firewall, first find the zone you are in with:

```bash
sudo firewall-cmd --list-all-zones
```

The zone you are in has an real ethernet interface specified for it (no virtual interfaces like bridges), also it has the tag `(active)` after its name.
On my system the current zone was `public`.
I opened the firewall for *Bonjour* with:

```bash
sudo firewall-cmd --zone=public --add-service=mdns
```

Running `avahi-browse -at` again then showed several sevices.

I then started *YaST Printer*, had it install some driver packages, selected a printer and a driver by the same name and I was good to go.

Finally I close the firewall for *Bonjour* with:

```bash
sudo firewall-cmd --zone=public --remove-service=mdns
```

By installing printer drivers you may have installed `hplip` which sets up the *HP Device Manager* to autostart.
I do not like that and remove it with:

```bash
sudo zypper remove -y hplip
```
