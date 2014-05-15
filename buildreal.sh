#!/bin/sh
mkdir -p build/srv/real/lib
mkdir -p build/srv/real/srv
cp lib/* build/srv/real/lib
cp srv/real-srv.js build/srv/real/srv
cp package.json build/srv/real
cp docker/doc.dockerfile build/srv/real/Dockerfile
cd build/srv/real
npm install
echo TARGET:build/srv/real
