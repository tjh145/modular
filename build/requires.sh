#!/bin/bash

jqLocation=./build/jq.exe
if [ ! -f $jqLocation ]; then
    sudo curl -L -o $jqLocation https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe
fi
echo $jqLocation
