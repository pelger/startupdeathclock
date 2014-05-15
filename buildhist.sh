#!/bin/sh
mkdir -p build/srv/hist/lib
mkdir -p build/srv/hist/srv
cp lib/* build/srv/hist/lib
cp srv/hist-srv.js build/srv/hist/srv
cp package.json build/srv/hist
cp docker/doc.dockerfile build/srv/hist/Dockerfile
cd build/srv/hist
npm install
echo TARGET:build/srv/hist
