#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${GREEEN}bi${WHITE}|${RED}sect)${GREEN}➜ "
clear

cd ..
pe "cat bisect/index.html"
pe "git status"
pe "git show 41ff7"
pe "git log 41ff7..HEAD --oneline"
pe "git bisect bad"
pe "git bisect good 41ff7"
pe "cat bisect/index.html"
pe "git bisect bad"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect bad"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect bad"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect bad"
pe "git show 1ce2"
git bisect reset
