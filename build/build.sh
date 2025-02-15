#!/bin/bash
alias jq=$(source ./build/requires.sh )
shopt -s expand_aliases

#exmaple npm run build-all -- --configuration=production
echo "Build Type: $1"
for PROJ in $(cat angular.json | jq -r '.projects | keys[]');
do 
    npm run build $PROJ --configuration=$1;
done