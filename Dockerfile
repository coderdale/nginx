FROM nginx:latest

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
