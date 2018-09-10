#!/bin/bash -v
yum update -y
yum install nginx
sudo systemctl start nginx
