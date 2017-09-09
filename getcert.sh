#!/bin/sh
docker run -it --rm \
      -v `pwd`/certs:/etc/letsencrypt \
      -v `pwd`/certs-data:/data/letsencrypt \
      deliverous/certbot \
      certonly \
      --webroot --webroot-path=/data/letsencrypt \
      -d example.com
