#!/bin/zsh

# Creates a list of links from website
# Requires an url like google.com or tester.com

##### Functions
function get_the_link()
{
	echo "Parameter #1 is $1"
	wget -qO- $1 |
	tr \" \\n | grep https\*://
} #get the links and output them

echo "Listing of all the URLS on the page: " + $1
get_the_link $1
