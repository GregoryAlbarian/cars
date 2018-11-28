#! /bin/bash
#cars.sh
#by Gregory Albarian

MENU_CHOICE=3

while [ "$MENU_CHOICE" !=  "q" ]; do 
	
	echo "Menu:"
	echo "a) Add a car"
	echo "v) View list of cars"
	echo -e "q) Quit \n"
	
	echo "Choose an option: "
	read MENU_CHOICE
	
	case "$MENU_CHOICE" in
	
	"a")
		echo "What is the year of the car? "
		read YEAR
		echo "What is the make of the car? "
		read MAKE
		echo "What is the model of the car? "
		read MODEL
			
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
	
	"v")
		echo
		sort My_old_cars | tr ":" " "
		echo ;;
	
	"q")
		 echo "Goodbye";;
	
	*)
		 echo -e "ERROR\n";;
	
	esac
done
