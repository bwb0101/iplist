#!/bin/sh
set -e

wget https://raw.githubusercontent.com/FW27623/qqwry/main/qqwry.dat

npm install

node packer.js
node packer_xdb.js
ls -l
chmod +x ./xdb_maker
./xdb_maker gen --src=../data/data/ip.txt --dst=../data/data/ip.xdb
