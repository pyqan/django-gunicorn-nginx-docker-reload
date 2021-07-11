#! /bin/sh
watchmedo shell-command --patterns='*.py;*.html;*.css;*.js' --recursive --command='echo "${watch_src_path}" && kill -HUP `cat gunicorn.pid` & gunicorn --reload --workers=2 --bind=0.0.0.0:8000 mysite.wsgi:application'
