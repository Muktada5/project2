#!/bin/bash
# MNP-Tech prod Deployment
if [ "$DEPLOYMENT GROUP_NAME" == "bala-dg" ]
then
	echo "$DEPLOYMENT GROUP_NAME"
	cd /var/www/html/
	sudo cp /alliance-dir/index.html /var/www/html/
	if
