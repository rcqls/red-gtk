#!/bin/bash

file=$1

master="master"

if [ "$file" = "--source" ]; then
	master="../source/red"
	shift
	file=$1
fi

diff gtk3/$file $master/$file