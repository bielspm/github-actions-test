#!/bin/bash
sudo su
cd /home/github-actions-test
source venv/bin/activate
python3.10 -m gunicorn --workers=2 app-flask:app -b 0.0.0.0:80