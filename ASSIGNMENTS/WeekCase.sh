#!/bin/bash -x

echo "Enter Digit"
read digit

case $digit in
		1 )
			echo Monday
		;;
		2 )
			echo Tuesday
		;;
		3 )
			echo Wednesday
		;;
		4 )
			echo Thursday
		;;
		5 )
			echo Friday

		;;
		6)
			echo Saturday
		;;
		7 )
			echo Sunday
		;;
		* )
			echo enter DIGIT between 1-7 ONLY	
		;;
esac
