#!/bin/sh
dbus-launch dconf load / < ~/xed.dconf
sed -i 's|\(exec ~/set_once.sh\)|# \1|' ~/.config/sway/config
rm ~/xed.dconf ~/set_once.sh
