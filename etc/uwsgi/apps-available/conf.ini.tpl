[uwsgi]
chdir = {/path/to/the/app}
file = run.py
plugin = python3
socket = /run/uwsgi/app/{custom-app-name}/socket
virtualenv = {/path/to/virtualenv}
workers = {number-of-workers}
callable = app
uid = {uid-linux-user-write-access-to-app-dir}
