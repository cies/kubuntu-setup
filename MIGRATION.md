# Migration

When moving from one laptop to another some files and folders need to be copied over.

This document covers some best practices.

## Copy over all dotfiles, or not?

Sometime it's good to start afresh. Some dotfiles are managed/kept in this repo under `dotfiles`.

## Wifi passwords

Copy over the following files/folders to migrate the Wifi passwords:

* `/etc/NetworkManager/system-connections/*.nmconnection` — one entry per connection
* `~/.local/share/kwalletd` — where the secrets are kept in KDE (opens automatically on login)


