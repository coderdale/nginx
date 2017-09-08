FROM nginx:latest

LABEL version="1.0"
LABEL description="NGINX in proxy mode. Prepared to accept Let's Encrypt SSL certificate"

LABEL maintainer="tj@coderdale.com"

RUN useradd -ms /bin/bash www

USER www
WORKDIR /etc/nginx

USER root
RUN mkdir -p /etc/letsencrypt
RUN mkdir -p /data/letsencrypt
COPY ./data /data
RUN chown www:www /etc/nginx
RUN chown -R www:www /data

USER www
RUN mkdir /etc/nginx/logs
COPY ./conf /etc/nginx

USER root

EXPOSE 80 443
