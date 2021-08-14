#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_HR=20
MAX_WORKING_DAYS=20
totalWorkHr=0
day=1
while [ $day -le $MX_WORKING_DAYS ]
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_PRESENT_FULL_TIME)
			empHr=8;;
		$IS_PRESENT_PART_TIME)
			empHr=8;;
		*)
			empHr=0;;
	esac
	totalWorkHr=$(( totalWorkHr + empHr ))
	((day++))
done
MonthlyWage=$(( totalWorkHr * EMP_RATE_HR ))
