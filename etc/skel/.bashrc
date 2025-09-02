#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind '"\e[A":history-search-backward' # history with arrow up key
bind '"\e[B":history-search-forward' # history with arrow down key

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias app_id="sleep 3 && swaymsg -t get_tree | jq '.. | select(.focused? == true) | {app_id, name}'"

PS1='[\u@\h \W]\$ '

echo -e "\n▶ Welcome to your Endeavour today!🚀"
echo -e "\n▶ hello👋 $USER "
echo -e "▶ 📅 \c "
date
echo -e "▶  \c "
uname -r
echo -e " "
echo -e "🥠"
fortune
echo -e " "
