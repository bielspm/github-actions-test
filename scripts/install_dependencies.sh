#!/bin/sh
python -m pip install --upgrade pip
pip -m virtualenv venv
source venv/bin/activate
pip install -r requirements.txt