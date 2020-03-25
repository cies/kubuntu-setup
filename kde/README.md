# KDE

Some tools that are note installed by default:

sudo apt-get install -y kate kompare ktorrent kolourpaint
sudo apt-get install -y plasma-applet-redshift-control
sudo apt-get install -y kturtle


## Wallpaper

Find one, put it in `~/Pictures/wallpaper` and use both for:

* The current display's background
* Any other backgrounds for displays you may have plugged in
* As an SSDM "Startup and Shutdown" background in "System Settings" (see next section)
* And in "Desktop Behavior > Screen Locking" in "System Settings" (see next section)


## System Settings

* Startup and Shutdown > Login Screen (SDD) > Theme > Breeze > Background
* Desktop Behavior > Screen Locking > Appearance > Add Image...
* Personalization > Applications > No feedback (kills busy cursor)
* Desktop effects > Dim inactive and Dim for root privs
* Regional settings:
  * Date & Time > Time zone to Amsterdam
  * Formats > Detailed setting > set all to "C"
* Input devices:
  * Mouse: increase speed, invert scrolling
  * Touchpad: increase speed, tap clicking and invert scrolling


## The panel

Switch the start menu to "Application menu" (right click in bottom-left)

Add the following widget/applets/plasmoids to the panel:
 
* System Load Viewer
* Redshift Control
* Media Player (media play/pause key on your keyboard should work)


## Konsole

Settings > Edit default profile
* 70 rows
* Apperance: Dark pastels
* Font: Ubuntu Mono 12px
* Scrolling -> Unlimited scroll

Settings > Configure Konsole
* DONT Show menubar by default (Ctrl-M to toggle)


## Dolphin

Dolphin prefs:
* View Modes > Details > Folder: NOT Expandable & 32 pixels size for both

Control:
* Set tree view "details"
* Show hidden

Places toolbar:
* Desktop
* Home
* Documents
* Root (`/_` icon)
* Tmp (Green icon)
* Trash

Remove the "Search For" submenu in the places sidebar


## TODO: Consider

Global shortcuts for most used actions (that are otherwise all over the place on different keyboards)
  * play/pause
  * screen brightness/backlight up/down
  * redshift on/off
  * increase/decrease volume
  * jump to konsole (or open one)
  * jump to browser (or open one)


