#! /usr/bin/env bash
echo -e "\nRunning $0\n"
pwd
which -a jekyll
jekyll -v
echo -e "\n"

(sleep 6; open "http://127.0.0.1:4003/" ) &

jekyll serve
