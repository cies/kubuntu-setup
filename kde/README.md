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
  * Touchpad: increase speed, enable tap clicking and invert scrolling
* Shortcuts > Global Shortcuts > (reassign if needed)
  * Audio Volume > Alternates for: Mute/Decrease/Increase Volume to `META`-`0`/`-`/`=` (meta being the WIN key)
  * Media Controller > Play/Pause media playback to `META`-`p`
  * Power Management > Alternates for: Increase/Decrease Screen Brightness to `META`-`(`/`)`


## The panel

Switch the start menu to "Application menu" (right click in bottom-left)

Add the following widget/applets/plasmoids to the panel:
 
* System Load Viewer
* Redshift Control
* Media Player (media play/pause key on your keyboard should work)

Configure the System Load Viewer (love this thing) as follows:
* Set compact bar (first!)
* Select all but cache in "Show:"
* Colors: Set colors manually
* Maybe tweak the colors a little...
* WISH: it'd also show network (aggregated in/out) and storage (aggregated i/o)

From left to right:
* K-menu
* NOT a pager (remove it)
* task switcher
* status bar
* the tiniest spacer you can make
* Media Player
* Redshift Control
* System Load Viewer (love this)
* Clock

Now adjust the height of the pannel so that the icons look best (not too much out of line)

And finally lock the widgets in the panel


## Konsole

After a long adventure with `tmux` I now simply use Konsole's tabs. No splitting, no "remote sessions", but I find little need for that nowadays.

Settings > Edit default profile
* 70 rows
* Apperance: Dark pastels
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


## Redshift (red filter)

Rihgt click the lightbulb icon in the task bar (as per earlier instruction) and pick Configure Redshift Control. In Keyboard Shortcuts set it to `META`-`R`


## Window shortcuts

Now set up the following windows + shortcuts:

 * Kosole: `META`-`k`
 * Firefox: `META`-`f`
 * IntelliJ: `META`-`i`

Set 'm up by right clicking the window bar: More Actions > Window Shortcut...


## Notes

* Keep resizing those tiny default dialogs and windows, KDE is quite good it remembering those




