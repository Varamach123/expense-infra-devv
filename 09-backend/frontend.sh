#!/bin/bash
component=$1
environment=$2
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost, -U https://github.com/Varamach123/expense-ansible-roles-tf1.git main.yaml -e component=$component -e env=$environment