#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
python3 manage.py createsuperuser --user_name admin21 --email neha.snavarkar@gmail.com --noinput