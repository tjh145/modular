#!/bin/bash
location=$(source ./build/requires.sh )
#example npm run test -- production

configuration=$1
if [ -z "$configuration"] 
then
  configuration=development
fi

echo "Build Type: $configuration"
for dir in $location; 
do 
    npx ng build $(basename "$dir") --configuration=$configuration;
done

npx ng build --configuration=$1;