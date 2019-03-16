#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(grep)${GREEN}➜ "
clear

pe "cd ~/sportamore/sportamore"
pe "grep -r udarocc *"
pe "git grep udarocc"
pe "git grep --count udarocc"  # or -c
pe "git grep --line-number udarocc"  # or -n
pe "git grep --show-function udarocc"  # or -p
pe "git grep -pn udarocc"
