#!/bin/bash

# Получаем текущие значения отступов
get_current_gaps() {
    hyprctl getoption general:gaps_out -j | jq -r '.int'
    hyprctl getoption general:gaps_in -j | jq -r '.int'
}

# Основная функция изменения отступов
change_gaps() {
    local out_change=$1
    local in_change=$2
    
    # Получаем текущие значения
    current_out=$(hyprctl getoption general:gaps_out -j | jq -r '.int')
    current_in=$(hyprctl getoption general:gaps_in -j | jq -r '.int')
    
    # Вычисляем новые значения
    new_out=$((current_out + out_change))
    new_in=$((current_in + in_change))
    
    # Не даем уйти в отрицательные значения
    if [ $new_out -lt 0 ]; then
        new_out=0
    fi
    if [ $new_in -lt 0 ]; then
        new_in=0
    fi
    
    # Применяем изменения одной командой
    hyprctl --batch "keyword general:gaps_out $new_out ; keyword general:gaps_in $new_in"
    
    # Показываем уведомление
    notify-send -t 1000 "Gaps" "Out: ${new_out}px | In: ${new_in}px"
}

# Обработка аргументов
case $1 in
    "increase")
        change_gaps 5 5
        ;;
    "decrease")
        change_gaps -5 -5
        ;;
    "out-increase")
        change_gaps 5 0
        ;;
    "out-decrease")
        change_gaps -5 0
        ;;
    "in-increase")
        change_gaps 0 5
        ;;
    "in-decrease")
        change_gaps 0 -5
        ;;
    "reset")
        hyprctl --batch "keyword general:gaps_out 20 ; keyword general:gaps_in 10"
        notify-send -t 1000 "Gaps Reset" "Out: 20px | In: 10px"
        ;;
    *)
        echo "Usage: $0 {increase|decrease|out-increase|out-decrease|in-increase|in-decrease|reset}"
        ;;
esac
