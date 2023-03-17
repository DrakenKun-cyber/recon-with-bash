#!/bin/bash
go install -v github.com/projectdiscovery/katana/cmd/katana@latest;
go install -v github.com/lc/subjs@latest;

#install LinkFinder
git clone https://github.com/GerbenJavado/LinkFinder.git; cd LinkFinder; python3 setup.py install ; pip3 install -r requirements.txt; cd ..;

#install SecretFinder
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder ; cd secretfinder ; pip install -r requirements.txt ; cd .. ;
