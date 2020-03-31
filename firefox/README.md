# Firefox

Firefox comes pre-installed on Kubutnu. It easily is one of my most used apps, and still has a horrible story for power users.

## Plugins

Gotta install 'm.

* Tree Style Tab
* uBlock
* Privacy badger
* Plasma Integration (integration with KDE, so you get OS play-pause to control browser players)
* Bitwarden (open source, zero knowledge protocol, free for personal use password manager)

Sometimes also have to install 1Password X (password manager), the only non open source plugin. This is a problem as browser plugins have access to a lot of privacy sensitive data.


## Preferences

### General

* Startup: Restore previous session
* Downloads: Always ask where

### Privicy & Security

* Logins and Passwords: DONT Ask to save logins and passwords for websites

* Permissions:
   * Location -> Block new requests
   * Notifications -> Block new requests

 
## Navigation/address bar

Use the "customize" mode to organize icons/widgets from left to right:

* TST
* Library
* 2x flexible space
* `<-`
* `->`
* url bar
* the rest (services, accounts, blockers)
* hamburger menu


## Pin your tabs

Make sure to first restart FF with a tab pinned to be sure it remembers your session


## Make spellcheck multi-lingual

[Explained here](https://superuser.com/questions/108177/how-do-i-make-firefox-spellcheck-in-multiple-languages-simultaneously)


## Configure Tree Style Tab

See the `userChrome.css` and `TST-Extra-style-rules.css` files in this directory,
they contain instructions on how to install them.

[More customization and or updates to our current CSS rules](https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules)


## TODO: Configure keyboard shortcuts

This is not possible without hacking FF.

[An indepth explanation how to do so](https://github.com/nilcons/firefox-hacks)


## TODO: Further customizations to consider

* Something like this? https://github.com/hoplax/hoplax
* Or better keyboard base link clicking


## TODO: Consider automatic deletion of cookies

Like with the Cookie Auto Delete addon

