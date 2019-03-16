#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(#filters)${GREEN}➜ "
clear

cd ../filters
rm -f .gitattributes  # will be re-created as the result

pe "ls -a"
pe "vim bad.py"
pe "echo '*.py filter=pep8'"
pe "git config --global filter.pep8.clean autopep8 -"
pe "git config --global filter.pep8.smudge cat"
pe "less ~/.gitconfig"
pe "git add bad.py"
pe "gid diff --staged"

rm -f .gitattributes  # will be re-created as the result
