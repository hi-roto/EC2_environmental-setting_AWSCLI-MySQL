#!/bin/bash -l

sudo yum update -y

sudo install git -y

sudo yum localinstall https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm -y

sudo yum-config-manager --disable mysql80-community > /dev/null

sudo yum-config-manager --enable mysql57-community > /dev/null

sudo yum install mysql-community-server -y

sudo systemctl start mysqld.service

sudo systemctl enable mysqld.service

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" > /dev/null

unzip awscliv2.zip > /dev/null

aws_comand_path=$(which aws)
ls -l $aws_comand_path

sudo ./aws/install > /dev/null

sudo ./aws/install --bin-dir /usr/bin --install-dir /usr/aws-cli --update