#! /bin/bash
#cars.sh
#by Gregory Albarian

$MENU_CHOICE = 3

while [ $MENU_CHOICE -eq  "q" ]; do 
	echo "Menu"
	echo "a) Add a car"
	echo "v) View list of cars"
	echo "q) Quit"
	
	echo "Choose an option: "
	read MENU_CHOICE
	
	case "$MENU_CHOICE" in
	"a")
		;;
	"v") sort My_old_cars | tr ";" " ";;
	"q") echo "Goodbye"
;;
	*) echo "ERROR";;
	esac
done
