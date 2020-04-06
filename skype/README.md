# Skype

It was said MS would not release version os Skype for Linux. But it seems they are now.

Install with:

    sudo apt-get install -y skypeforlinux

It wants to start automatically on boot, and every time you start it it will restore this setting. And chaging that setting from the UI requires one to log in.  Me no gusto.
Luckily t's enough to create a folder with the same name as a file it's trying to create:

    rm ~/.config/autostart/skypeforlinux.desktop
    mkdir ~/.config/autostart/skypeforlinux.desktop

