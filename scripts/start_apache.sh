#!/bin/bash
# Deployment
if [ "$DEPLOYMENT_GROUP_NAME" == "mnptech-deploy" ]
then
sudo cp -r /var/www/html/code-dir/* /var/www/html/
sudo service httpd restart
fi
