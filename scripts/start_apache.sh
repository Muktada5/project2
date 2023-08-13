#!/bin/bash
# Deployment
if [ "$DEPLOYMENT_GROUP_NAME" == "mnp-dev-prod-app-dg" ]
then
sudo cp /var/www/html/alliance-dir/index.html /var/www/html/
sudo service httpd restart
fi
