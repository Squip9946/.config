cur=$(cat /sys/class/leds/spi::kbd_backlight/brightness)
case "$cur" in
    0) next=127
    ;;
    127) next=255
    ;;
    *) next=0
    ;;
esac
brightnessctl --device=spi::kbd_backlight set "$next"
