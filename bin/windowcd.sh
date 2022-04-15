current_workspace=`swaymsg -t get_tree | jq -r '.nodes[] | select(.current_workspace!=null) | .current_workspace'`
static_windows=$(swaymsg -t get_tree | jq -r '.nodes[].nodes[] | select(.name=="'$current_workspace'") | .nodes')
floating_windows=$(swaymsg -t get_tree | jq -r '.nodes[].nodes[] | select(.name=="'$current_workspace'") | .floating_nodes')
windows=$(jq --argjson arr1 "$static_windows" --argjson arr2 "$floating_windows" '$arr1+$arr2' -n)
choice=$(echo $windows | jq -r '.[] | select(.name!=null) | .name' | rofi -dmenu -matching=fuzzy -i)
id=$(echo $windows | jq -r '.[] | select(.name=="'"$choice"'") | .id')
echo $id
swaymsg [con_id="$id"] focus
