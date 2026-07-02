# Ensure local bin exists and append it to PATH
if [ -d "$HOME/.local/bin/" ]; then
    PATH="$HOME/.local/bin/:$PATH"
    export PATH
fi

# for qt-theming
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct

# uncomment if running in qemu and cursor is upside down
#export WLR_RENDERER=pixman
