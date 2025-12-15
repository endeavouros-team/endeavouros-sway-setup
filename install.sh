#!/usr/bin/env bash
# Maintainer: joekamprad [joekamprad //a_t// endeavouros.com]
# run this from installed Archbased as normal user (as a script or line by line)
git clone https://codeberg.org/joekamprad/endeavouros-sway-setup.git
cd endeavouros-sway-setup/etc/skel/
cp -R .config .local .icons $HOME/
cp  .bashrc .gtkrc-2.0 packages-AUR.txt $HOME/
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