#!/bin/bash

#install dorks_hunter
git clone https://github.com/six2dez/dorks_hunter ; cd dorks_hunter ; pip3 install -r requirements.txt ; cd .. ;

#install gitdorks_go
git clone https://github.com/damit5/gitdorks_go.git ; cd gitdorks_go ; bash build.sh ; cd .. ;

#install emailfinder
pip3 install emailfinder --upgrade;


#executing bash
chmod +x conan.sh ;
chmod +x gitdork.sh ;