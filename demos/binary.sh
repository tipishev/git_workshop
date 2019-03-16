#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(${BROWN}b${PURPLE}'${CYAN}1${PURPLE}n${CYAN}a${PURPLE}ry')${GREEN}➜ "
clear

cd ../binary
rm -f .gitattributes  # will be re-created as the result
pe "ls"
pe "less ugly.xml"
pe "less notes.docx"
pe "sed -i 's/5.45/7.62/g' ugly.xml"
p "${GREEN}change ${WHITE}notes.docx"
pe "git diff"

# restore just in case
sed -i 's/7.62/5.45/g' ugly.xml
# echo "*.xml binary" > .gitattributes
# echo "*.docx diff=word" >> .gitattributes
