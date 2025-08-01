#!/bin/sh
set -e

wget https://github.com/metowolf/qqwry.dat/releases/latest/download/qqwry.dat

npm install

node packer.js
node packer_gibo_xdb.js
ls -l
chmod +x ./xdb_maker
./xdb_maker gen --src=../data/data/ip_gibo.txt --dst=../data/data/ip_gibo.xdb
