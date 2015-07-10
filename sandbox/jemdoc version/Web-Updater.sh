#!/bin/bash
echo "web script started"
cd ../../..
pwd
jemdoc-rak -o html/ -c mysite.conf index book errata links masters phd pubs rakdoc students trivia
sleep 2
open "html/index.html"
