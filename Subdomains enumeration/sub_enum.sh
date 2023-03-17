#!/bin/bash

GREEN='\033[0;32m';
printf "\n ${GREEN} ############################## Getting Subdomains ##############################  \n\n"
printf "ex : ./sub_enum.sh example.com";
mkdir Subdomains
subfinder -d $1 > Subdomains/subs.txt ;
assetfinder --subs-only $1 >> Subdomains/subs.txt ;
cat Subdomains/subs.txt | sort|uniq | httpx >> Subdomains/filtered_subdomains.txt ;

printf "\n${GREEN} subdomains saved in Subdomains/filtered_subdomains.txt! :) \n";
