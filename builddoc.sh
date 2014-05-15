#!/bin/sh
mkdir -p build/srv/doc/lib
mkdir -p build/srv/doc/srv
cp lib/* build/srv/doc/lib
cp srv/doc-srv.js build/srv/doc/srv
cp package.json build/srv/doc
cp docker/doc.dockerfile build/srv/doc/Dockerfile
cd build/srv/doc
npm install
echo TARGET:build/srv/doc
