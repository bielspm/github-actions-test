#!/bin/bash
#sudo su
cd /home/github-actions-test
source venv/bin/activate
/home/github-actions-test/venv/bin/gunicorn --workers=2 app-flask:app -b 0.0.0.0:80