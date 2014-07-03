#!/bin/bash
for x in $(ls -d */)
do 
    printf "Remove  %s\n" $x
	git rm $x
	printf "Adding submodule %s\n" $x
    git submodule add -b master -f https://github.com/SuperDomX/$x $x
done