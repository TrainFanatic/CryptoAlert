#!/bin/bash
#AppleScript application
function application-make {
osacompile -o $1 CryptoAlert.applescript
#insert photo (.icns) insertion
}
#Find current shell (certain shells like fish do not return any info with echo $0)
#This is for the rc.
function get-shell {
shellname=$(ps | head -2 | tail -1 | cut -d " " -f 8 | tr '-' '\0')
}
function get_name {
curdir=$(dirname $0)
filt5="$curdir""/filtered5"
cat $filt5 | grep -w $1 | head -1 | cut -d: -f1
}
#command line cryptoalert
function prompt-make {
cp Old\ Executables/CryptoAlert-2 ~/bin/cryptoalert
cp Dependencies/filtered ~/bin/filtered
cp cryptoname-fetcher ~/bin/cryptoname
if [ "$shellname" == "fish" ]
then
echo '"set -x PATH $PATH /Users/"(whoami)"/bin"' >> ~/.config/fish/config.fish
#Appends to file. Does not replace content
else
echo "export PATH=$PATH:/Users/\$\(whoami\)/bin" >> ~/.profile
#Again, appends to file. Does not replace content
fi
}

case $1 in
"-a") if [ $2 ]
then 
application-make $2
sleep 1
apparea=$2
else 
application-make ~/Desktop/CryptoAlert.app
sleep 1
apparea="default"
fi;;
"-p") prompt-make; chmod +x ~/bin/cryptoalert; echo "Please restart your shell";;
*) echo -e "This is help for the Maker FILE for CryptoAlert\n-a [address]: Create an application at [address]. If not specified, will build an application at ~/Desktop/CryptoAlert.app\n\n-p: Creates a command situated at /usr/bin/cryptoalert. Can be run by simply typing 'cryptoalert' in prompt";;
esac
if [ "$apparea" != "default" -a "$apparea" ]
then
cp cryptoname-fetcher "$2""/Contents/Resources/"
cp Dependencies/filtered "$2""/Contents/Resources/"
elif [ "$apparea" ]
then
cp cryptoname-fetcher "/Users/$(whoami)/Desktop/CryptoAlert.app/Contents/Resources/"
cp Dependencies/filtered "/Users/$(whoami)/Desktop/CryptoAlert.app/Contents/Resources/"
fi
