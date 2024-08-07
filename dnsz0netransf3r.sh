#!/bin/bash

for ns in $(host -t ns $1 | cut -d " " -f 4); do
    host -a $1 $ns
    echo "###########################################"
done
