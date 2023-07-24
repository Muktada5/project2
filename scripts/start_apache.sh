#!/bin/bash
# Deployment
if [ "$DEPLOYMENT GROUP_NAME" == "mnp-dg" ]
then
sudo cp /var/lib/jenkins/workspace/${JOB_NAME}/index.html /var/www/html/
sudo service httpd restart
fi
