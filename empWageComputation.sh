#! /bin/bash
Wage_per_Hr=20
echo "Welcome in Main Branch"
a=$((RANDOM%2))
if [ $a -eq 1 ]
then
	echo "present"
	empHr=8
	dailyWage=$(( $Wage_per_Hr * $empHr ))
else
	echo "Not Present"
	empHr=0
	dailyWage=0
fi
