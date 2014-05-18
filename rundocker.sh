#!/bin/sh
sudo docker stop $(sudo docker ps -q)
sudo docker run -p 9002:9002 -d sudc/doc-srv node /srv/doc-srv
sudo docker run -p 9000:9000 -d sudc/hist-srv node /srv/hist-srv
sudo docker run -p 9001:9001 -d sudc/real-srv node /srv/real-srv
sudo docker run -p 8000:8000 -d sudc/web sh /web/run.sh

