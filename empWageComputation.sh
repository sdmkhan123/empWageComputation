#! /bin/bash
FullTime=1
PartTime=2
NotPresent=0
Wage_per_Hr=20
echo "Welcome in Main Branch"
a=$((RANDOM%3))
if [ $a -eq 1 ]
then
	echo "present"
	empHr=8
	dailyWage=$(( $Wage_per_Hr * $empHr ))
elif [ $a -eq 2 ]
then
	echo "Part Time Present"
	empHr=8
	empWage=$(( $Wage_per_Hr * $empHr))
else
	echo "Not Present"
	empHr=0
	dailyWage=0
fi
