#!/bin/bash -ex
sudo su
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update -y
sudo apt-get install python3.10 -y
sudo apt-get install python3.10-venv -y
sudo apt install git-all -y
cd /home
git clone https://github.com/bielspm/github-actions-test.git
cd github-actions-test
python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
flask --app app-flask.py run --port 80