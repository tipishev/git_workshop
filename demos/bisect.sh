#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${GREEEN}bi${WHITE}|${RED}sect)${GREEN}➜ "
clear

cd ..
pe "git checkout e0246d5"
pe "cat bisect/index.html"
pe "git show 180b09c -- bisect/index.html"
pe "git log 180b09c^..e0246d5 --oneline"
pe "git bisect start"
pe "git bisect bad e0246d5"
pe "git bisect good 180b09c"
pe "cat bisect/index.html"
pe "git bisect good"
pe "cat bisect/index.html"
pe "git bisect bad"
pe "cat bisect/index.html"
pe "git bisect bad"

git bisect reset

pe "git show 1ce2"
p "${RED}git bisect reset"
pe "git checkout master"
pe "cat bisect/index.html"

pe "ls"
pe "cp bisect/bisect_test.sh ~/Desktop/"

pe "git bisect start"
pe "git bisect bad"
pe "git bisect good 41ff7"
pe "git log 41ff7..master --oneline"
pe "vim ~/Desktop/bisect_test.sh"
pe "git bisect run ~/Desktop/bisect_test.sh"

git bisect reset
git checkout master
