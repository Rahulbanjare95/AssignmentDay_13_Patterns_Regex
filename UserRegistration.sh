#!/bin/bash -x
echo "Welcome to User Registration program"

#-------------New Branch UC1 -------------------


	echo "A reges pattern to Check The Firs Name"
	echo "Enter the name you want to check"
	read name

	pat="^[A-Z]{1}[^A-Z][a-z]"

	if [[ $name =~ $pat ]]
	then
		echo Valid
	else
		echo Invalid

	fi

