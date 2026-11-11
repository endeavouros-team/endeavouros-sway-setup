## Browser is autostarting at each login?

Open `~/.config/sway/config.d/autostart`
Add `#` at the start of the line (commenting the line) to disable auto start at login:

```
# autostart apps
exec xdg-open https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
```

After (changed setting, browser will not auto start at login)

```
# autostart apps
#exec firefox https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
```

---

**Dive into configuring your Sway WM setup**
Start reading here: [Readme.md](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/README.md#dive-into-configuring-your-sway-wm-setup)


## Help

Still having some issues? ask for help on [EndeavourOS Forum](https://forum.endeavouros.com/).
Or join the helpchat at telegram: [EndeavourOS-Chat](https://t.me/Endeavouros).
