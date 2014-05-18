#!/bin/sh
killall node
cd srv
nohup node doc-srv &
nohup node hist-srv &
nohup node real-srv &
cd ../web
node index


