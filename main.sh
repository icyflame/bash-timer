echo "Cube Timer -- Main Menu"
echo "[default] Start Timer"
echo "[2] See Past Times"
echo "[3] Settings page"
read -p "Enter your choice now" -n 1 opt
echo

case $opt in

2) echo "Past times are" ;;

3) echo "Settings page" ;;

*) `bash timer.sh` ;;

esac
