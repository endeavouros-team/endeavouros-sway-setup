<p align="center">
  <img src="https://raw.githubusercontent.com/endeavouros-team/artwork-images-logo/refs/heads/master/eos-sway/force-knowledge-header.svg" alt="Firefox just opened itself. It's homework." width="100%">
</p>

## Browser is autostarting at each login?

Open `~/.config/sway/config.d/autostart`
Add `#` at the start of the line (commenting the line) to disable auto start at login:

```
# autostart apps
exec xdg-open https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
```

After saving the autostart config browser will not auto start at login:

```
# autostart apps
#exec firefox https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/force-knowledge.md
```

---

**Dive into configuring your Sway WM setup:**

Start reading here: [Readme.md](https://github.com/endeavouros-team/endeavouros-sway-setup/blob/main/README.md#dive-into-configuring-your-sway-wm-setup)


## Help

Still having questions? ask for help on [EndeavourOS Forum](https://forum.endeavouros.com/).
Or join the helpchat at telegram: [EndeavourOS-Chat](https://t.me/Endeavouros).
