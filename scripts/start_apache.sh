#!/bin/bash
# MNP-Tech prod Deployment
if [ "$DEPLOYMENT GROUP_NAME" == "mnp-dg" ]
then
sudo cp /var/lib/jenkins/workspace/codedeploy/index.html /var/www/html/
sudo service httpd restart
fi
