current=$(swaymsg -t get_workspaces  | jq '.[] | select(.visible == true) | .name')
name=`zenity --entry --text='Workspace Name'`
swaymsg rename workspace $current to  $name
