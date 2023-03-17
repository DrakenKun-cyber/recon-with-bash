#!/bin/bash

LIGHT_BLUE='\033[1;34m';
LIGHT_RED='\033[1;31m';

printf "\n${LIGHT_BLUE} ############################## Start Google Dorks ##############################  \n\n"
printf "\n${LIGHT_BLUE} ex: ./conan.sh example.com \n"

mkdir Osint ; 

#google dorks
python3 dorks_hunter/dorks_hunter.py -d $1 -o Osint/google_dorks.txt ;
printf "\n${LIGHT_BLUE}File saved in Osint/google_dorks.txt \n\n";

#collect emails
printf "\n\n${LIGHT_RED}############################## Start Collecting emails ##############################  \n\n"

emailfinder -d $1 | grep "@" | grep -v "Author" >> Osint/emails.txt ;

printf "\n${LIGHT_RED}emails saved in Osint/emails.txt \n";