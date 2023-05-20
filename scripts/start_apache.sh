#!/bin/bash
# MNP-Tech prod Deployment
if [ "$DEPLOYMENT GROUP_NAME" == "bala-dg" ]
then
sudo cp /var/lib/jenkins/workspace/codedeploy/index.html /var/www/html/
if
