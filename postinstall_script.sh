#!/bin/bash

/usr/sbin/systemsetup -setremotelogin On

if [[ $(/usr/sbin/systemsetup -getremotelogin) = 'Remote Login: On' ]] 
then
	exit 0
fi

exit 1