FROM nginx
# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
COPY uwsgi_params /etc/nginx/uwsgi_params
COPY app_nginx.conf /etc/nginx/conf.d/app_nginx.conf

RUN rm /etc/nginx/conf.d/default.conf
