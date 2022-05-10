#!/bin/bash

cd ..
make clean && make html 2> log.txt
if [ -s log.txt ]
then
	echo -e "\n$(tput setaf 1)Gefundene Fehler:$(tput setaf 7)\n"
        cat log.txt
else
	echo -e "\n$(tput setaf 2)Gefundene Fehler: 0\n$(tput setaf 7)"
	git status
fi
rm log.txt
cd -
