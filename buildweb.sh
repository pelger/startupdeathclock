#!/bin/sh
mkdir -p build/web/web
mkdir -p build/web/lib
cp lib/* build/web/lib
cp -R web/* build/web/web
cp docker/web.dockerfile build/web/Dockerfile
cp package.json build/web/
cd build/web
npm install
cd web
npm install
bower --allow-root install
echo TARGET:build/web
