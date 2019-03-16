#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(hooks)${GREEN}↪ "
clear

cd ..
rm -f .git/hooks/pre-commit
cd hooks
pe "ls"
pe "vim code.py"
pe "git commit -p"
pe "vim pre-commit"
pe "ln pre-commit ../.git/hooks/pre-commit"
pe "git commit -p"
pe "vim code.py"
pe "git commit -p"

# cleanup
git checkout -- code.py
