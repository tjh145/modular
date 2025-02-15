alias jq=$(source ./build/requires.sh )
shopt -s expand_aliases

#example npm run test-all -- false true ChromeHeadless
echo "Watch: $1"
echo "Coverage: $2"
echo "Browser: $3"

for PROJ in $(cat angular.json | jq -r '.projects | keys[]'); 
do 
    npm run test $PROJ --watch=$1 --code-coverage=$2 --browsers=$3; 
done