#! /bin/bash

echo "Welcome in Main Branch"
a=$((RANDOM%2))
if [ $a -eq 1 ]
then
	echo "present"
else
	echo "Not Present"
fi
