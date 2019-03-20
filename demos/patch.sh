#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(aliases)${GREEN}➜ "
clear

pe "cd ~/sportamore/sportamore"
pe "git pod"
pe "git checkout playground"
pe "vim sport/models/supplier.py"
pe "git commit -p"
pe "git commit -p"
pe "git log --stat"

git reset --hard HEAD^^
