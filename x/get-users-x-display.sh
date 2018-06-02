#!/bin/bash
#
# get users x display

declare -A disps usrs
usrs=()
disps=()

for i in $(users);do
    [[ $i = root ]] && continue # skip root
    usrs[$i]=1
done # unique names

for u in "${!usrs[@]}"; do
    for i in $(sudo ps e -u "$u" | sed -rn 's/.* DISPLAY=(:[0-9]*).*/\1/p');do
        disps[$i]=$u
    done
done

for d in "${!disps[@]}";do
    echo "User: ${disps[$d]}, Display: $d"
done
