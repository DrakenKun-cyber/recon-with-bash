#!/bin/bash

LIGHT_BLUE='\033[1;34m';
#github dorks
# You should save your github token in txt file named token_file.txt 
# to generate github token visit : https://github.com/settings/tokens/new

printf "\n${LIGHT_BLUE} ex: ./gitdork.sh example.com \n"
printf "\n\n\n${LIGHT_BLUE}#########################    Start Github Dorks     ##############################\n"
printf "\n${LIGHT_BLUE}############################### Please wait a few minutes ##############################\n\n"

gitdorks_go -gd gitdorks_go/Dorks/alldorksv3 -target $1 -tf token_file.txt -ew 3 | grep -v "(0)\|error" ;


printf "\n\n${LIGHT_BLUE}Done !";

