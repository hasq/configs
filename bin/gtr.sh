#!/bin/bash

if [ $# == 3 ]
then
echo "From: $1 To: $2"
lynx -dump "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$3&langpair=$1|$2"|awk -F'"' '{print $6}'

else
lynx -dump "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=ru|en"|awk -F'"' '{print "From: "$10" To: en \n"$6}';echo

lynx -dump "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=en|ru"|awk -F'"' '{print "From: "$10" To: ru \n"$6}';echo

fi

exit 0
