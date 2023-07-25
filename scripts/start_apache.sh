#!/bin/bash
# Deployment
if [ "$DEPLOYMENT_GROUP_NAME" == "mnp-prod-dg" ]
then
sudo cp /var/lib/jenkins/workspace/${JOB_NAME}/index.html /var/www/html/
sudo service httpd restart
fi
