sudo docker run --rm  -it \
 -v "$(pwd)/out":/acme.sh \
 --net=host \
 neilpang/acme.sh \
 --issue -d example.com -d www.example.com --standalone
