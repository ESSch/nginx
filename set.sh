#!/bin/bash

sed -i 's!proxy_pass .*!proxy_pass http://'"$1"';!g' nginx.conf
docker-compose down
docker-compose up -d
#docker-compose exec nginx bash -c '/usr/sbin/nginx -s reload' #dont work
#docker-compose restart # dont work