#!/bin/bash
light_Purple='\033[1;35m';

printf "\n ${light_Purple} ############################## Getting endpoints from jsfile ##############################  \n\n"
printf "\n ex : ./jsdir.sh https://example.com/main.js \n\n";

printf "\n${light_Purple}Endpoints";
printf "\n${light_Purple}-------------------\n";
python3 LinkFinder/linkfinder.py -i $1 2>/dev/null -o cli ;

printf "\n${light_Purple}Done ! \n";