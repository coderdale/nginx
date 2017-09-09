#!/bin/sh
docker run -p 80:80 -p 443:443 \
  -v `pwd`/certs:/etc/letsencrypt \
  -v `pwd`/certs-data:/data/letsencrypt \
  coderdale/nginx:latest
