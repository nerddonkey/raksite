#! /usr/bin/env bash
echo -e "\nraksite anu-deploy"
pwd
which -a jekyll
jekyll -v
echo -e "\n"

# deploy on baseurl: http://users.cecs.anu.edu.au/~rod
jekyll build --config _config.yml,_config-anu.yml
cd _site
ls -l *.html

cp -rv * /Volumes/public_html

open "http://users.cecs.anu.edu.au/~rod/"

## jekyll 2.2.0 | Error:  Address already in use - bind(2)
# ps aux | grep jekyll
# rodneykennedy    7160   0.0  0.9  2539992  73900   ??  S     8:57am   1:12.55 /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby /usr/bin/jekyll serve
#rodneykennedy    8292   0.0  0.0  2444036    680 s000  S+   12:53pm   0:00.01 grep jekyll
# kill -9 7160
