# Check if the shell is interactive
if [[ $- == *i* ]]; then

    # Readline bindings for history search via arrow keys
    bind '"\e[A":history-search-backward'
    bind '"\e[B":history-search-forward'

    # Custom aliases
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias app_id="sleep 3 && swaymsg -t get_tree | jq '.. | select(.focused? == true) | {app_id, name}'"

    # Shell prompt configuration
    PS1='[\u@\h \W]\$ '

    # Interactive greeting output
    echo -e "\n▶ Welcome to your Endeavour today!🚀"
    echo -e "\n▶ hello👋 $USER "
    echo -e "▶ 📅 \c "
    date
    echo -e "▶  \c "
    uname -r
    echo -e " "
    echo -e "🥠"

    # Execute fortune if binary is available to prevent command not found errors
    if command -v fortune >/dev/null 2>&1; then
        fortune
    fi
    echo -e " "
fi