# Wifi passwords

In modern Linux environments wifi passwords can be in several locations.
Usually NetworkManager tries to save them to some sort of wallet of keyring service when available.
Since I use encryption on both the root (`/`) and the home (`/home`) partitions, and keep all my secrets in password managers that are backed by a cloud service (like *1Password* for work and *BitWarden* for personal use), the wallet service (*KWallet*) is disabled on my machine.
This makes NetworkManager store the wifi-passwords unencrypted in `/etc/NetworkManager/system-connections`, which greatly simplies migrating them over to a new installation.

Combine the wifi passwords into a single file with located in `/tmp`:

```bash
(cd /etc/NetworkManager; sudo tar cvzf /tmp/nm-wifi-passwords.tgz system-connections)
```

Copy this file into you `$HOME` directory before reinstalling or migrating.
Then install the wifi passwords for the file with and restart the NetworkManager (for the passwords to be recognized) with:

```bash
sudo stop network-manager
sudo tar xvzf nm-wifi-passwords.tgz -C /etc/NetworkManager/
sudo chown root:root -R /etc/NetworkManager/system-connections
sudo start network-manager
```

**NOTE**: There is a chance the network interface has a different identifier on the new machine, as a result NetworkManager may not consider them. This can be fixed by updating the lines starting with `interface-name=` in `/etc/NetworkManager/system-connections/*.nmconnection`
