#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${BROWN}b${PURPLE}'${CYAN}1${PURPLE}n${CYAN}a${PURPLE}ry')${GREEN}➜ "
clear

cd ../binary
rm .gitattributes  # will be re-created as the result
pe "ls"
pe "less ugly.xml"
pe "less notes.docx"

