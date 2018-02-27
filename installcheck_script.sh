#!/bin/bash

#check to see if ssh is off
if [[ $(systemsetup -getremotelogin) = 'Remote Login: Off' ]] 
then
	# exit 0 to tell Munki an install is needed
	exit 0
fi
# if not needed, exit 1
exit 1