#!/bin/bash
# Original: https://gitlab.com/Nmoleo/i3-volume-brightness-indicator
# Angepasst für Sway, Wayland, brightnessctl & mako

bar_color="#7f7fff"
volume_step=5
brightness_step=5
max_volume=100

# Lautstärke holen
get_volume() {
    pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

# Mute-Status holen
get_mute() {
    pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

# Lautstärke-Icon
get_volume_icon() {
    local volume=$(get_volume)
    local mute=$(get_mute)
    if [ "$volume" -eq 0 ] || [ "$mute" == "yes" ]; then
        volume_icon=""
    elif [ "$volume" -lt 50 ]; then
        volume_icon=""
    else
        volume_icon=""
    fi
}

# Volume-Notification
show_volume_notif() {
    local volume=$(get_volume)
    get_volume_icon
    notify-send -t 1000 -h int:value:$volume -h string:x-dunst-stack-tag:volume "$volume_icon  $volume%"
}

# Helligkeit holen (brightnessctl gibt z. B. „intel_backlight,actual,100,90%“ zurück)
get_brightness() {
    brightnessctl -m | awk -F, '{print $4}' | tr -d '%'
}

# Icon für brightness
get_brightness_icon() {
    brightness_icon=""
}

# Brightness-Notification
show_brightness_notif() {
    local brightness=$(get_brightness)
    get_brightness_icon
    notify-send -t 1000 -h int:value:$brightness -h string:x-dunst-stack-tag:brightness "$brightness_icon  $brightness%"
}

# Hauptlogik
case "$1" in
    volume_up)
        pactl set-sink-mute @DEFAULT_SINK@ 0
        volume=$(get_volume)
        if [ "$volume" -ge "$max_volume" ]; then
            pactl set-sink-volume @DEFAULT_SINK@ ${max_volume}%
        else
            pactl set-sink-volume @DEFAULT_SINK@ +${volume_step}%
        fi
        show_volume_notif
        ;;
    volume_down)
        pactl set-sink-volume @DEFAULT_SINK@ -${volume_step}%
        show_volume_notif
        ;;
    volume_mute)
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        show_volume_notif
        ;;
    brightness_up)
        brightnessctl set +${brightness_step}%
        show_brightness_notif
        ;;
    brightness_down)
        brightnessctl set ${brightness_step}%-
        show_brightness_notif
        ;;
    *)
        echo "Usage: $0 {volume_up|volume_down|volume_mute|brightness_up|brightness_down}"
        exit 1
        ;;
esac

