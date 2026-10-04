#!/bin/sh
a=$(ls -A droppers)
echo "checking droppers..."
if [[ -z "$a" ]]
then
    echo "nothing found"
else
    echo found: "$a"
fi
echo
echo "well, hello"
while :; do
    echo "what do you want to choose?: "
    echo "mine"
    echo "balance"
    echo "exit"
    echo
    read -p "choose: "  b
    if [[ "$b" = "mine" ]]
    then
	source config.sh
	echo "kill all droppers?"
	read -p "yes/no?" c
	if [[ "$c" = "yes" ]]
	then
	    pkill -f "modular_tycoon/droppers/" 2>/dev/null
	else
	    echo "ok"
	fi
    elif [[ "$b" = "balance" ]]
    then
	cat balance.txt
    elif [[ "$b" = "exit" ]]
    then
	break
    else
	echo idk
    fi
done
