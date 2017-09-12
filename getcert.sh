sudo docker run --rm  -it \
 -v "$(pwd)/certs":/acme.sh \
 --net=host \
 neilpang/acme.sh \
 --issue -d example.com -d www.example.com --standalone
