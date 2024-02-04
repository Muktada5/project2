#!/bin/bash
# Deployment
if [ "$DEPLOYMENT_GROUP_NAME" == "mnptech-dev-deployment" ]
then
sudo cp -r /var/www/html/code-dir/* /var/www/html/
sudo service httpd restart
fi
