#!/bin/bash -ex
sudo su
#sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
#sudo apt-get install python3.10 -y
#sudo apt-get install python3.10-venv -y
#sudo apt-get install git-all -y
#cd /home
#cd github-actions-test
cd /home/github-actions-test
source venv/bin/activate
#python3.10 -m venv venv
echo "venv criado"
pip install -r requirements.txt
echo "instalando requirements.txt"
apt remove apache2 -y
echo "apache removido"