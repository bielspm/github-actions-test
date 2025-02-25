#!/bin/sh
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get install -y python3.10
py -m pip install --upgrade pip
cd /home/ubuntu
pip -m virtualenv venv
source venv/bin/activate
pip install -r requirements.txt