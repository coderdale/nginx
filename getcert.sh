sudo docker run --rm  -it \
 -v "$(pwd)/out":/acme.sh \
 --net=host \
 neilpang/a \
 cme.sh  --issue -d coderdale.com -d www.coderdale.com --standalone
