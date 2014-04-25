echo "Cube timer"

#echo "Enter a key to start timer: "

# read subOpt

read -p "Enter a key to start timer: " -n 1 -s

echo "Timer running!"

startTime=`date +"%S.%N"`

#read subOpt

read -n 1 -s

endTime=`date +"%S.%N"`

t=`expr $endTime-$startTime | bc`

echo "Time elapsed:- $t"

# we now have the time in the variable t

echo "$t, " >> times.txt

git commit -a -m "Added a time!"
git push origin master

exit 0
