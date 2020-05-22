#!/bin/bash -x
echo "Welcome to User Registration program"

#-------------New Branch UC1 -------------------


	echo "A reges pattern to Check The Firs Name"
	echo "Enter the name you want to check"
	read FirstName

	pat="^[A-Z]{1}[^A-Z][a-z]"

	if [[ $FirstName =~ $pat ]]
	then
		echo Valid
	else
		echo Invalid

	fi
#-------------------New Branch UC2 --------------------------


	echo "Checking Last Name"
	echo "Enter Last Name"

	read LastName

	if [[ $LastName =~ $pat ]]
	then
		echo "valid LastName"
	else
		echo  "Invalid LastName"
	fi

#--------------New Branch Uc3------

	echo "Checking valid email"
	echo "Enter the email : "
	read  email

	pat_m="^[a-z.]+@[a-z.]+[a-z.]+"  #checks loose type email abc.xyz@bl.co.in only validates small case letters and . Not designed for alphanumerica And uppercase
	if [[ $email =~ $pat_m ]]
	then
		echo "Valid Email"
	else
		echo "Invalid Email"
	fi


#----------New Branch UC4--------------------

	echo "Checkig valid mobile number"
	echo "Enter the Mobile Number "

	read mobileNumber
	pat_mobile="^[0-9]{2}([[:space:]])([0-9]{8})$"  #checks mobile numer  and validates - 91 898138332 this pattern

	if [[ $mobileNumber =~ $pat_mobile ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"

	fi

#-----------New Branch UC5----------------------

	echo "Password Checker"
	echo "Enter your password"
	read pass

	pat_pass="[a-bA-B0-9]{8,}"

	# checks for password with only one condition on length > 8 

	if [[ $pass =~ $pat_pass ]]

	then
		echo "Valid Password"
	else
		echo "Invalid Password"
	fi
#------------------New Branch UC 6--------------------

	echo "Checking Special Case Atleast One UpperCase"
	read s
	pat_passA="[A-Z]{1,}"

	if [[ $pass =~ $pat_passA ]]
	then
		echo "Valid Password"
	else
		echo "Invalid Password"
	fi
