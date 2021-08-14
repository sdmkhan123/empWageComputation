#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
MAX_WORK_HR=100
EMP_RATE_HR=20
MAX_WORKING_DAYS=20
totalWorkHr=0
day=1

function getWorkHr(){
	local empCheck=$1
	local empHr=0
        case $empCheck in
                $IS_PRESENT_FULL_TIME)
                        empHr=8;;
                $IS_PRESENT_PART_TIME)
                        empHr=8;;
                *)
                        empHr=0;;
        esac
	echo $empHr
}
while [ $day -le $MX_WORKING_DAYS ] && [ $totalWorkingHr -lt  $MAX_WORK_HR ]
do
	empCheck=$((RANDOM%3))
	empHr="$( getWorkHr $empCheck )"
	totalWorkHr=$(( totalWorkHr + empHr ))
	Dailywage=$(( empHr * EMP_RATE_HR ))
	echo $Dailywage
	((day++))
done
TotalyWage=$(( totalWorkHr * EMP_RATE_HR ))
echo $TotalyWage
