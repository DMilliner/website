upstream _uwsgi_{custom-app-name} {
    server unix:/run/uwsgi/app/{custom-app-name}/socket;
}
server {
    listen       80;
    server_name  {domain-name};

    root {/path/to/the/app/};
    index index.html index.htm;
    access_log /var/log/nginx/{custom-app-name}.access.log;
    error_log /var/log/nginx/{custom-app-name}.error.log;

    charset utf-8;

    location / {
        include uwsgi_params;
        uwsgi_pass _uwsgi_{custom-app-name};
    }
}
