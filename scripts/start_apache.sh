#!/bin/bash
# Deployment
if [ "$DEPLOYMENT_GROUP_NAME" == "mnptech-deploy" ]
then
sudo cp /var/www/html/alliance-dir/index.html /var/www/html/
sudo service httpd restart
fi
