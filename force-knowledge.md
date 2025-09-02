# Dive into configuring your sway wm

The configuration main file for endesway can be found at `"${HOME}"/.config/sway/config`. and to make structure clean you will find other parts of teh config in the dropin path:
`${HOME}/.config/sway/config.d/`

## Firefox is autostarting at each login?

 Open `${HOME}/.config/sway/config.d/autostart_applications`
 Add/remove `#` at the start of the line to disable/enable auto start at login:

 
```
# autostart apps
exec firefox https://codeberg.org/joekamprad/endeavouros-sway-setup/src/branch/main/force-knowledge.md
#exec  sleep 5 && telegram-desktop
```

 After (changed setting, firefox will not auto start at login)

```
# autostart apps
#exec firefox https://codeberg.org/joekamprad/endeavouros-sway-setup/src/branch/main/force-knowledge.md
#exec  sleep 5 && telegram-desktop
```



## Disable the battery indicator



## Autostart Implementation

 **[dex](https://man.archlinux.org/man/extra/dex/dex.1.en) is used to auto start applications on startup in sway.**
 
  Open `${HOME}/.config/sway/config.d/autostart_applications`
  
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

## Reset Configuration


 The default configuration file for endeavouros-sway can be found [here](https://codeberg.org/joekamprad/endeavouros-sway-setup/raw/branch/main/etc/skel/.config/sway/config).

To replace your current configuration with the default of endeavouros-sway run the following command. This will also make a backup of your current configuration at `"${HOME}"/.config/sway/config.1`

```
wget --backups=1 https://codeberg.org/joekamprad/endeavouros-sway-setup/raw/branch/main/etc/skel/.config/sway/config -P "${HOME}"/.config/sway/
```

## Help

Still having some issues? ask for help on [EndeavourOS Forum](https://forum.endeavouros.com/).
Or join the helpchat at telegram: [EndeavourOS-Chat](https://t.me/Endeavouros).
