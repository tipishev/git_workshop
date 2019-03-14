#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${BLUE}c${GREEN}o${RED}l${CYAN}o${BROWN}r${WHITE}s${PURPLE})${GREEN}➜ "
clear

git config --global color.diff.new 'green normal'

pe "git diff HEAD^"
pe "git config --global color.diff.new 'green normal reverse'"
pe "git diff HEAD^"

git config --global color.diff.new 'green normal'
