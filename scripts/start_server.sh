#!/bin/bash -ex
sudo su
cd /home/github-actions-test && source venv/bin/activate
echo "start-server venv ativado"
/home/github-actions-test/venv/bin/gunicorn --workers=2 app-flask:app -b 0.0.0.0:80
echo "start-server gunicorn ativado"