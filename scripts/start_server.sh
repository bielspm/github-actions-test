#!/bin/sh
sudo su
cd /home/github-actions-test
source venv/bin/activate
gunicorn --workers=2 app-flask:app -b 0.0.0.0:80