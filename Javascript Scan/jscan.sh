#!/bin/bash
YELLOW='\033[1;33m';
Orange='\033[0;33m';

printf "\n ${YELLOW} ############################## Getting JS Files ##############################  \n\n"
printf "ex : ./jscan.sh subdomains.txt \n";

mkdir JsFiles ;

#extract Js Files from subdomains text file
cat $1 | subjs > JsFiles/javascript_files.txt;


#discover passwords and api_keys
printf "\n ${Orange} ############################## Start extracting Secrets ##############################  \n\n"

for url in $(cat JsFiles/javascript_files.txt) ; do python3 secretfinder/SecretFinder.py -i $url -o cli >> JsFiles/results.txt ;done

cat JsFiles/results.txt| sort | uniq >> JsFiles/secrets.txt ;
rm -rf JsFiles/results.txt ;

printf "\n ${Orange} Js secrets are saved in JsFiles/secrets.txt \n";
