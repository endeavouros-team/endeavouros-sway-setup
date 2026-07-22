# Ensure local bin exists and append it to PATH
if [ -d "$HOME/.local/bin/" ]; then
    PATH="$HOME/.local/bin/:$PATH"
    export PATH
fi

# for qt-theming
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct
export QT_QPA_PLATFORM="wayland;xcb"
# Disables window decorations for Qt applications to prevent duplicate title bars in a tiling environment.
#export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# Enables automatic DPI scaling for Qt applications on High-DPI setups.
#export QT_AUTO_SCREEN_SCALE_FACTOR=1

# uncomment if running in qemu and cursor is upside down
#export WLR_RENDERER=pixman
# may needed in VMs to show cursor correctly
#export WLR_NO_HARDWARE_CURSORS=1

## some useful variables
# e.g., portals, themes, screen sharing via xdg-desktop-portal-wlr
export XDG_CURRENT_DESKTOP=sway
# Instructs GTK (GTK3/GTK4) applications to prefer the Wayland backend and fall back to X11 if necessary.
#export GDK_BACKEND=wayland,x11
# Forces the Wayland backend for games and applications using SDL2.
export SDL_VIDEODRIVER=wayland
# Sets the Wayland backend for Clutter-based applications.
#export CLUTTER_BACKEND=wayland
# Forces native Wayland rendering for modern Electron applications (e.g., VS Code, Obsidian, Discord).
#export ELECTRON_OZONE_PLATFORM_HINT=auto #(or wayland)
# in case you need to set cursor theme and size ( if cursor is not correctly shown over xwayland rendered apps p.e.)
#export XCURSOR_THEME=Qogir-Dark
#export XCURSOR_SIZE=24
