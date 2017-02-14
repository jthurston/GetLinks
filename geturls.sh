#!/bin/zsh

# Creates a list of links from website
# Requires an url like google.com or tester.com

##### Functions
function get_the_link()
{
	echo "Website is $1"
	echo "Filename is $2"
	wget -qO- $1 |
	tr \" \\n | grep https\*:// > $2
} #get the links and output them

	if [ -z $2 ]
		then
			echo "No file name so linkdump.txt"
			$2 = "linkdump.txt"
			get_the_link $1
		else
			echo "Info given"
			get_the_link $1 $2
		fi
