#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(#filters)${GREEN}➜ "
clear

cd ../filters
rm -f .gitattributes  # will be re-created as the result
pe "ls"
