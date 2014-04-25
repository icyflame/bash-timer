echo
echo "Cube timer"
echo

############# timer sequence #####################

read -p "Enter a key to start timer: " -n 1 -s

echo
echo "Timer running!"

startTime=`date +"%S.%N"`

read -n 1 -s

endTime=`date +"%S.%N"`

t=`expr $endTime-$startTime | bc`

echo "Time elapsed:- $t"

############## comment sequence ##########################

echo -n "Do you want to add a comment to this time?(y/N) "
read -n 1 opt

comment="none"

case $opt in

"y" | "Y")

echo "Enter your comment: "
read comment
# echo "You entered $comment"
;;

*)

echo "You choosed to enter no comment!" ;;

esac

########################### write sequence ##########################

if [ "$comment" == "none" ]

then
echo -n "$t, " >> times.txt

else
echo -n "$t[$comment], " >> times.txt
fi

################ add and commit sequence #########################

git commit -a -m "Added a time!"


###################### push sequence #######################

read -p "Do you want to push all the times currently stored to the server?(y/N): " -n 1 opt

case $opt in

"y" | "Y")
echo "We will now enter the push sequence"
git push origin master
;;

esac

exit 0
