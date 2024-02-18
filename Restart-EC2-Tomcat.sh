#!/bin/bash
echo "Restarting EC2 instance..."
#use your instance id here i-.....
aws ec2 reboot-instances --instance-ids  i-046f5a48edf50e61c 
echo "Restarting Tomcat service..."
sudo systemctl restart tomcat.service
