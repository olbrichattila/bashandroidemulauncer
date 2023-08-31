#!/bin/bash

items=$(~/Android/Sdk/emulator/emulator -list-avds)

IFS=$'\n' read -r -d '' -a item_array <<< "$items"

echo "Select an emulator:"
for i in "${!item_array[@]}"; do
    echo "[$i] ${item_array[i]}"
done

read -p "Enter the index of the emulator to open: " selection

if [[ $selection =~ ^[0-9]+$ ]] && [ $selection -ge 0 ] && [ $selection -lt ${#item_array[@]} ]; then
    selected_item="~/Android/Sdk/emulator/emulator -avd ${item_array[selection]} &>/dev/null &"
    eval "$selected_item"
else
    echo "Invalid selection."
fi
