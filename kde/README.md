# KDE

Some tools that are not installed by default:

```
sudo zypper install kompare ktorrent kolourpaint kturtle ksysguard5
```

The `ksysguard5` is a dependency of the later installed "System Load Viewer" panel applet.


## Changing the wallpaper

Find one, put it in `~/Pictures/wallpaper` and use both for:

* The current display's background
* Any other backgrounds for displays you may have plugged in
* An in two places in System Settings (see the section below


## The Panel

*NOTE:* Do this first as the Media Player applet needs to be installed to have its shortcut configured later on.

Switch the start menu to "Application menu" (right click on the KDE logo in bottom-left).

Add the following widget/applets/plasmoids to the panel though `Add Widgets...` > `Add New Widgets...`:
 
* System Load Viewer
* Redshift Control

Configure the *System Load Viewer* (love this thing) as follows:
* Set compact bar (first!)
* Select all but cache in "Show:"
* Colors: Set colors manually
* Maybe tweak the colors a little...
* WISH: it'd also show network (aggregated in/out) and storage (aggregated i/o)

Configure the *Redshift Control* applet:
* Disable autostart
* Set "Manual temperature step" to `25`
* Set "Manual brightness step" to `0.01`
* ISSUE: setting keeps reverting in current setup]
* TODO: use it from System Tray

From left to right:
* K-menu
* NOT a pager (remove it)
* Task Manager
* System Load Viewer (love this)
* System Tray (configure it to remove Clipboard entry, as `META-V` is the way to go; before removing right click the icon `Configure Clipboard... > Clipboard history size` size set to 25)
* the tiniest spacer you can make
* Redshift Control
* Clock

Now adjust the height of the pannel so that the icons look best (not too much out of line).




## System Settings

* Workspace > Workspace Behavior:
  * Desktop effects > Dim inactive and Dim for root privs
  * Screen Locking > Appearance > Add Image... (if not already in the list by now)
  * Screen Edges > remove the actions from corners and edges
* Workspace > Window Management:
  * Task Switcher > Main tab > Pick "Informative" from the top-left dropdown menu
* Workspace > Shortcuts > Global Shortcuts > (reassign if needed):
  * Audio Volume > Alternates for: Mute/Decrease/Increase Volume to `META`-`0`/`-`/`=` (meta being the WIN key)
  * Media Controller > Play/Pause media playback to `META`-`p`
  * Plasma > Open Klipper at mouse position to `META`-`v`
  * Power Management > Alternates for: Increase/Decrease Screen Brightness to `META`-`[`/`]`
* Workspace > Startup and Shutdown:
  * Login Screen (SDDM) > Theme > Breeze (top one will do) > Background (click the button)
  * Splash Screen > None
* Personalization > Applications > Launch Feedback > No feedback (kills busy cursor)
* Personalization > Regional settings:
  * Formats > Detailed setting > set all to "C"
  * Date & Time > Time zone to Amsterdam
* Hardware > Input devices:
  * Mouse: increase speed, invert scrolling
  * Touchpad: increase speed, enable tap clicking, two finger scrolling and invert scrolling


## Konsole

After a long adventure with `tmux` I now simply use Konsole's tabs. No splitting, no "remote sessions", but I find little need for that nowadays.

Settings > Edit default profile
* 70 rows
* Apperance: Breeze
* Font: Source Code Pro 14px (install instructions in `../fonts/README.md`)
* Scrolling -> Unlimited scroll

Settings > Configure Konsole
* General: DONT Show menubar by default (Ctrl-M to toggle)
* TabBar:
  * Position: Below
  * Close tab button: None (use `CTRL-D` or `exit`)
  * Use user defined stylesheet: `konsole.css` from the same dir as this README
  * New tab behavior: After current tab

Some cool shortcuts I keep forgetting:

* `CTRL-SHIFT-t` for new tab
* `SHIFT-left/right` for tab switch, or `CTRL-SHIFT-left/right` for tab ordering
* `SHIFT-PgUp/Down` for half page scrolling
* `CTRL-SHIFT-f` for search in buffer, `ESC` to get out, `(SHIFT)-enter` for prev/next match

Splitting does not work well. It should split a tab in panes, but instead each split has its own tabs.


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


## Display Configuration

Everytime I attach a monitor you I have to place it over my laptop screen in the *Display Configuration*. It will remember them.


## Window shortcuts

These dont seem to stick to the windows, any tips welcome here (how to get a shortcut for the first Firefox, Konsole, IntelliJ window)


# Some nice shortcuts (to remember)

* Toggle windows maximize: `META-PgUp`
* Minimize: `META-PgDn`
* Quick tile window L/R/T/B: `META-<arrows>`
* Switch to window to the L/R or A/B: `META-ALT-<arrows>`
* Toggle present windows: `META-~` (tilde/backtick) and you can type to find a window in this mode
* Open print screen dialog: `PrScr`


## Notes

* Keep resizing those tiny default dialogs and windows, KDE is quite good it remembering those




