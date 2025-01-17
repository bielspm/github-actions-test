#!/bin/sh
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get install python3.10
python -m pip install --upgrade pip
pip -m virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
flask --app app-flask.py run --port 80