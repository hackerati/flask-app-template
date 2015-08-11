FROM nginx

COPY uwsgi_params /etc/nginx/uwsgi_params
COPY app_nginx.conf /etc/nginx/conf.d/app_nginx.conf

RUN rm /etc/nginx/conf.d/default.conf

