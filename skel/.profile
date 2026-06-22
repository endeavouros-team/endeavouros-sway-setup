# Ensure local bin exists and append it to PATH
if [ -d "$HOME/.local/bin/" ]; then
    PATH="$HOME/.local/bin/:$PATH"
    export PATH
fi
