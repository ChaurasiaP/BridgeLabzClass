echo "Enter Digit: "
read digit
echo "Convert from"
echo "1. Feet to inch	2. Feet to Meter"
echo "3. Inch to Feet	4. Meter to feet"
read option

case $option in
                1 )
                        echo $(($digit*12))
                ;;
                2 )
                        echo $(($digit*0.3048))
                ;;
                3 )
                        echo $(($digit/12))
                ;;
                4 )
                        echo $(($digit*3))
                ;;
                
                * )
                        echo try again
                ;;
esac
