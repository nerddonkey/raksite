#!/bin/tcsh
echo "...executing script"
jemdoc-rak -o html/ -c mysite.conf index book errata links masters phd pubs students trivia
sleep 1
open "html/index.html"
