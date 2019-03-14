#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(autocorrect)${GREEN}➜ ${CYAN}\W "
clear

git config --global help.autocorrect 0
pe "git heckout"
pe "git config --global help.autocorrect 30"
pe "git heckout"
