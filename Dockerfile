FROM nginx:latest



RUN useradd -ms /bin/bash www
USER www
WORKDIR /etc/nginx

USER root
RUN chown www:www /etc/nginx

USER www
RUN mkdir /etc/nginx/logs

COPY ./conf /etc/nginx

USER root
EXPOSE 80 443
