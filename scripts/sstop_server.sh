#!/bin/bash -ex
echo "antes de ativar sudo su"
sudo su
echo "tentando matar o gunicorn agora"
sudo pkill gunicorn
echo "stop-server gunicorn matado"