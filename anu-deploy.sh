#! /usr/bin/env bash
echo -e "\nraksite anu-deploy"
pwd
which -a jekyll
jekyll -v
echo -e "\n"

# deploy on base url: http://users.cecs.anu.edu.au/~rod
jekyll build --config _config.yml,_config-anu.yml
cd _site
ls -l *.html

cp -rv * /Volumes/rod/public_html

open "http://users.cecs.anu.edu.au/~rod/"
