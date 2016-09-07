#! /usr/bin/env bash
echo -e "\nraksite anu-serve\n"
pwd
which -a jekyll
jekyll -v
echo -e "\n"

(sleep 6; open "http://127.0.0.1:4003/" ) &

# deploy on base url: ""
jekyll serve