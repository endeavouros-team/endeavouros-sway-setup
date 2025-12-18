#!/usr/bin/env bash
# Maintainer: joekamprad [joekamprad //a_t// endeavouros.com]
# run this from installed Archbased as normal user (as a script or line by line)
git clone https://codeberg.org/joekamprad/endeavouros-sway-setup.git
cd endeavouros-sway-setup/etc/skel/
cp -R .config .local .icons $HOME/
cp  .bashrc .gtkrc-2.0 packages-AUR.txt $HOME/
git clone https://github.com/killajoe/sway_tools.git
cp sway_tools/gracefully_exit/gracefully_exit $HOME/.config/sway/scripts/
cp sway_tools/new_workspace/new_workspace $HOME/.config/sway/scripts/
cp sway_tools/powermenu/powermenu $HOME/.config/sway/scripts/
cp sway_tools/power_profiles_switcher/power_profiles_switcher $HOME/.config/sway/scripts/
cp sway_tools/swaycast/swaycast $HOME/.config/sway/scripts/
cp sway_tools/swayshot/swayshot $HOME/.config/sway/scripts/
cp sway_tools/waybar_toggle/waybar_toggle $HOME/.config/sway/scripts/
cp sway_tools/weather/openweather $HOME/.config/sway/scripts/
# make scripts executable
chmod -R +x $HOME/.config/sway/scripts
sudo pacman -S --needed --noconfirm - < packages-repository.txt 
cd /
rm -R endeavouros-sway-setup
# start DM (ly)
systemctl enable ly@tty2.service
# disable TTY2 to be free for ly
sudo systemctl disable getty@tty2.service
# needed for swayosd
sudo systemctl enable swayosd-libinput-backend.service
echo "sway is now setup for your current user, you may reboot to login to sway"