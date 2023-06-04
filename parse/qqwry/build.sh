#!/bin/sh
set -e

wget https://raw.githubusercontent.com/FW27623/qqwry/main/qqwry.dat

npm -i

node packer.js
