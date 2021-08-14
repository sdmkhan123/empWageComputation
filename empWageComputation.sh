#! /bin/bash -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
empCheck=$((RANDOM%2))
case $empCheck in
	$IS_PRESENT_FULL_TIME)
		echo "FUll Time Present";;
	$IS_PRESENT_PART_TIME)
		echo "Half Time Present";;
	*)
		echo "Not Present";;
esac
