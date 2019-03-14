#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(bisect)${GREEN}➜ "
clear

cd ..
pe "cat bisect/index.html"
pe "git status"
pe "git show 41ff7"
pe "git log 41ff7..HEAD --oneline"
pe "git bisect start"
pe "git bisect bad"
pe "git bisect good 41ff7"
