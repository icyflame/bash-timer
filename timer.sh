echo "Cube timer"

read -p "Enter a key to start timer: " -n 1 -s

echo
echo "Timer running!"

startTime=`date +"%S.%N"`

#read subOpt

read -n 1 -s

endTime=`date +"%S.%N"`

t=`expr $endTime-$startTime | bc`

echo "Time elapsed:- $t"

echo -n "Do you want to add a comment to this time?(y/N) "
read -n 1 opt

case $opt in

"y" | "Y")

echo "Enter your comment: "
read comment
echo "You entered $comment"
;;

esac

echo "You choosed to enter no comment!"

# we now have the time in the variable t

echo "$t, " >> times.txt

git commit -a -m "Added a time!"
git push origin master

exit 0
