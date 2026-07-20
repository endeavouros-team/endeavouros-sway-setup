# EndeavourOS Sway setup

sway setup for EndeavourOS evolving from [i3 setup](https://github.com/endeavouros-team/endeavouros-i3wm-setup)
# Get It, Break It, Love It
![screenshot](https://raw.githubusercontent.com/endeavouros-team/artwork-images-logo/refs/heads/master/eos-sway/eos-sway.png)

# includes:
1. [waybar](https://github.com/Alexays/Waybar) with tray, powermenu, systemmonitors, worksapce buttons and audio control
2. [rofi](https://github.com/lbonn/rofi) for menues (Application menu and others)
3. [swaync](https://github.com/ErikReider/SwayNotificationCenter) notification, including swaync center for easy access to old notifications.
4. [sway tools](https://github.com/killajoe/sway_tools/tree/main)
5. [greetd](https://git.sr.ht/~kennylevinsen/greetd) with [tuigreet](https://github.com/apognu/tuigreet) (as login manager)
6. [nwg-look](https://github.com/nwg-piotr/nwg-look) and [nwg-displays](https://github.com/nwg-piotr/nwg-displays) for setup/change gtk theme and display settings. Awesome tools made by piotr: [nwg](https://nwg-piotr.github.io/nwg-shell/)
7. [thunar](https://docs.xfce.org/xfce/thunar/start) as filemanager, including setup to open kitty terminal in path, and filextractor
8. [bash](https://www.gnu.org/software/bash/bash.html) using a nice welcome message and fortune cookies enabled, plus history with up and down arrow buttons
9. [gtklock](https://github.com/jovanlanik/gtklock) as lock screen
10. [swayosd](https://github.com/ErikReider/SwayOSD) as OSD for volume brightness and others
11. [kitty](https://sw.kovidgoyal.net/kitty/) as terminal [currently]

![panel-helper](https://raw.githubusercontent.com/endeavouros-team/artwork-images-logo/refs/heads/master/eos-sway/doc.png)
1. [Workspaces](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/skel/.config/sway/config.d/workspaces)
2. [App-Menu](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/skel/.config/rofi/rofidmenu.rasi) (Rofi)
3. [System Monitoring](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/skel/.config/waybar/config.jsonc)
4. [Tray-Icons](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/skel/.config/waybar/config.jsonc)
5. [Power-Profiles-Switcher](https://github.com/killajoe/sway_tools/tree/main/power_profiles_switcher)
6. [Way-Bar Reloder Button](https://github.com/killajoe/sway_tools/tree/main/waybar_toggle)
7. [Notification Tray](https://github.com/endeavouros-team/endeavouros-sway-setup/tree/main/skel/.config/swaync) (swayNC)
8. [Simple Keybind Hinter ](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/skel/.local/bin/keyhint)(YAD)
9. [Power Menu](https://github.com/killajoe/sway_tools/tree/main/powermenu) ([it gracefully exit the session](https://github.com/killajoe/sway_tools/tree/main/gracefully_exit))

## you want more fancy?

install [swayfx](https://github.com/WillPower3309/swayfx) from AUR:

`yay -S swayfx` and let it replace sway package.

## Manual install:

```
wget https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/install
chmod +x ./install
./install
```
**what will this do?**

This script backs up existing dotfiles to a timestamped directory before installing system dependencies and cloning the EndeavorOS Sway repositories. It then deploys custom configuration files, Rofi themes, and helper utilities directly into the current user's home directory, ultimately enabling greetdand systemd services to deliver a fully pre-configured, ready-to-use Sway environment upon reboot.

## Install over EndeavourOS ISO/installer:

1. copy the raw iso mode script url:
[sway_install_isomode](https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/sway_install_isomode)

2. paste it into "fetch your install customization file (advanced)" option on screen, in the booted installler ISO:
![2023-09-06_15-10](https://github.com/EndeavourOS-Community-Editions/.github/assets/16797647/0b5fb0dc-609f-479e-9669-94b961db089d)

3. run online install and choose **no-desktop** option, when selection for Desktops is shown up.
![2023-09-06_15-10_1](https://github.com/EndeavourOS-Community-Editions/.github/assets/16797647/5aebc38e-4864-428a-b2c9-1523f6b30443)
