workspace=$(swaymsg -t get_workspaces | jq -r '.[].name' | rofi -dmenu)
swaymsg workspace $workspace
