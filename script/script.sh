#!/bin/bash
echo "Hello user!"
echo "Enter your file name: "
read file_name
echo "Where you want to save your file(use /): "
read path
if [ -d "$path" ];
then
	ps aux --sort pid > "$path""$file_name".txt
	echo "File successfully created!"
else
        echo "No such directory found.Try again!"
fi
