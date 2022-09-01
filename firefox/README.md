# Firefox

Firefox comes pre-installed with OpenSUSE.
It easily is one of my most used apps, yet sadly still has a horrible story for power users.

## Plugins

Gotta install 'm.

* Tree Style Tab
* uBlock
* Privacy Badger
* CleanURLs
* Firefox Multi-Account Containers ([this](https://www.thechiefmeat.com/guides/containers.html) should get you started)
* Temporary Containers (not needed when using *Firefox Multi-Account Containers*)
* NoScript
* SkipRedirect
* Plasma Integration (integration with KDE, so you get OS play-pause to control browser players)
* Bitwarden (open source, zero knowledge protocol, free for personal use password manager)

Sometimes also have to install 1Password (password manager), the only non open source plugin. This is a problem as browser plugins have access to a lot of privacy sensitive data.


## Settings (from the hamberger menu, right of the address bar)

### General

* Startup: Restore previous session
* Tabs: Ctrl+Tab cycles through tabs in recently used order
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


## Changes to about:config

Thse changes are made in `about:config` (enter that in the location bar).

* Change paper size to A4 (Firefox does not pick up `/etc/papersize`):
  * Find `print.print_paper_name`
  * Enter `iso_a4` in the dialog box and press OK.


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

