#!/bin/bash

location=$(source ./build/requires.sh )
#example npm run test -- false true ChromeHeadless
watch=$1
if [ -z "$watch"] 
then
  watch=false
fi

coverage=$2
if [ -z "$coverage"] 
then
  coverage=false
fi

browser=$3
if [ -z "$browser"] 
then
  browser="ChromeHeadless"
fi

echo "Watch: $watch"
echo "Coverage: $coverage"
echo "Browser: $browser"

for dir in $location; 
do 
    npx ng test $(basename "$dir") --watch=$watch --code-coverage=$coverage --browsers=$browser;
done

npx ng test --watch=$watch --code-coverage=$coverage --browsers=$browser;