sudo docker run --rm  -it \
 -v "$(pwd)/out":/acme.sh \
 --net=host \
 neilpang/acme.sh \
 cme.sh  --issue -d example.com -d www.example.com --standalone
