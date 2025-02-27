#!/bin/sh
sudo apt update
sudo apt install ruby-full
sudo apt install wget
cd /home/ubuntu
wget https://aws-codedeploy-sa-east-1.s3.sa-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto


#systemctl status codedeploy-agent