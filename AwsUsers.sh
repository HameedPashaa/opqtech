#!/bin/bash
aws iam list-users --output text --query 'Users[*].[UserName]' > aws_users.txt
echo "IAM users list has been written to users.txt"
