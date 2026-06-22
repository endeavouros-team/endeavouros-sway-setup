# Ensure local bin exists and append it to PATH
if [ -d "$HOME/.local/usr/bin/" ]; then
    PATH="$HOME/.local/usr/bin/:$PATH"
    export PATH
fi
