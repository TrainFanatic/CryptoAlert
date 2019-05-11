#!/bin/bash
#AppleScript application
function application-make {
osacompile -o $1 CryptoAlert.applescript
#insert photo (.icns) insertion
}
#command line cryptoalert
function prompt-make {
cp Old\ Executables/CryptoAlert-2 /usr/bin/cryptoalert
}

case $1 in
"-a") if [ $2 ]
then 
application-make $2
else 
application-make ~/Desktop/CryptoAlert.app
fi ;;
"-p") prompt-make;;
*) echo -e "This is help for the Maker FILE for CryptoAlert\n-a [address]: Create an application at [address]. If not specified, will build an application at ~/Desktop/CryptoAlert.app\n\n-p: Creates a command situated at /usr/bin/cryptoalert. Can be run by simply typing 'cryptoalert' in prompt"
esac
