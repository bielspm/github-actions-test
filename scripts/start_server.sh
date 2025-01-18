#!/bin/sh
gunicorn app-flask:app -b :80