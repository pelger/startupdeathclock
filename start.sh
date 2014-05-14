#!/bin/sh
cd srv
nohup node doc-srv.js & > doc.log 2>&1
nohup node hist-srv.js & > hist.log 2>&1
nohup node real-srv.js & > real.log 2>&1
cd ../web
node index.js
