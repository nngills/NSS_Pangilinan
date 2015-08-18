#!/bin/bash
rand=$RANDOM
secret=${rand:0:1}

function start {
	read -p "Guess a random one-digit number! " guess
	while [[ $guess != $secret ]]; do
		read -p "Nope, try again! " guess
	done
	echo "Good job! $secret is the answer!"
}

function generate {
	echo "Random number: $rand"
	echo -e "Hint: type start"
}

if [[ $1 =~ start|Start|START ]]; then
	start
else
	generate
fi
