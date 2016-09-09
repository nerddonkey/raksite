#! /usr/bin/env bash
echo -e "\nRunning $0\n"
pwd
which -a jekyll
jekyll -v
echo -e "\n"

echo -e "Check you have mounted 'rod@otho.cecs.anu.edu.au'\n"

jekyll build --config _config.yml,_config-anu.yml
cd _site
ls -l *.html

cp -rv * /Volumes/rod/public_html
cd ..

open "http://users.cecs.anu.edu.au/~rod/"
