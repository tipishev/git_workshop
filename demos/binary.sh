#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${BROWN}b${PURPLE}'${CYAN}1${PURPLE}n${CYAN}a${PURPLE}ry')${GREEN}➜ "
clear

cd ../binary
pe "ls -a"
pe "less "
