# Dive into configuring your Sway WM setup

The main configuration file for endeavouros-sway can be found at `"${HOME}"/.config/sway/config`. and to make structure clean, you will find other parts of the config in its dropin path:

`${HOME}/.config/sway/config.d/`

here you have parts of the config named to fit what they include, these will sourced into the main config file automatically.

* autostart - everything to be automatically started with the session
* defaults - default window handling
* input - input device configuration
* workspaces - workspace handling
* keybindings - custom keybindings

User scripts can be found under `$HOME/.config/sway/scripts/`
make sure marking them executable to be used in waybar or other tools

Here are the pathes to default used tool setups:

* $HOME/.config/gtklock
* $HOME/.config/rofi
* $HOME/.config/swaync
* $HOME/.config/swayosd
* $HOME/.config/waybar

## Firefox is autostarting at each login?

Open `${HOME}/.config/sway/config.d/autostart`
Add/remove `#` at the start of the line to disable/enable auto start at login:

 
```
# autostart apps
exec firefox https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
#exec  sleep 5 && telegram-desktop
```

After (changed setting, firefox will not auto start at login)

```
# autostart apps
#exec firefox https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
#exec  sleep 5 && telegram-desktop
```


## Disable the battery indicator
needs to get implemented 


## Autostart Implementation

**[dex](https://man.archlinux.org/man/extra/dex/dex.1.en) is used to auto start applications on startup in sway.**
 
Open `${HOME}/.config/sway/config.d/autostart`
  
Add/remove `#` at the start of the line to disable/enable xdg auto start.
  
Before (default setting, xdg auto start enabled)

```
# dex execute .desktop files
exec  dex --autostart --environment sway
```

After (changed setting, xdg auto start disabled)

```
# dex execute .desktop files
#exec  dex --autostart --environment sway
```

## waybar (panel)

`${HOME}/.config/.config/waybar`

**Includes two files:**

1. `config.jasonc`is the bar config, check in case to enable/disable/add modules.

You can see // is the commenting sign for disable modules:

```
  "modules-right": [
    "pulseaudio",
    "custom/separator",
    "custom/cputemp",
    // "custom/separator",
    // "custom/gputemp",
    "custom/separator",
```
2. `style.css` is the look and feel part written in css.

## screencast

```
# Start recording (select area)
bindsym $mod+Shift+y exec screencast-select

# Stop recording
bindsym $mod+Shift+x exec screencast-select stop
```

It is taken from sway-tools:

https://github.com/killajoe/sway_tools

In case you want to modify one or the other of the sway_tools scripts you can copy them to users path:
`cp /usr/bin/sway-powermenu ~/.local/usr/bin/` and edit from there.
 

## Reset Configuration


The default configuration file for endeavouros-sway can be found [here:](https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/skel/.config/sway/config).

To replace your current configuration with the default of endeavouros-sway run the following command. This will also make a backup of your current configuration at `"${HOME}"/.config/sway/config.1`

```
wget --backups=1 https://raw.githubusercontent.com/endeavouros-team/endeavouros-sway-setup/refs/heads/main/skel/.config/sway/config -P "${HOME}"/.config/sway/
```

## Help

Still having some issues? ask for help on [EndeavourOS Forum](https://forum.endeavouros.com/).
Or join the helpchat at telegram: [EndeavourOS-Chat](https://t.me/Endeavouros).
