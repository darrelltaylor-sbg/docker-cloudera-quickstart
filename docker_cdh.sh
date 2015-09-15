#!/bin/bash
set -x

sudo docker rm cdh_oneclick_machine
#sudo docker rmi cdh_oneclick


set -e
sudo docker build --rm -t cdh_oneclick .
#sudo docker build --no-cache=true --rm -t cdh_oneclick .

ports="-p 8020:8020 \
-p 8888:8888 \
-p 1100:1100 \
-p 11443:11443 \
-p 9090:9090 \
-p 8088:8088 \
-p 19888:19888 \
-p 50070:50070 \
-p 50075:50075 \
-p 50090:50090"
       
echo "$ports"

sudo docker run --name cdh_oneclick_machine -i -t $ports cdh_oneclick


