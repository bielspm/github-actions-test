#!/bin/bash #!/bin/bash -ex
sudo su
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install python3.10 -y
sudo apt-get install python3.10-venv -y
sudo apt-get install git-all -y
cd /home
cd github-actions-test
#python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
apt remove apache2 -y