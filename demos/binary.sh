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
p "${GREEN}change notes.docx"
pe "git diff"
pe "git --word-diff diff"
pe "echo '*.xml binary' > .gitattributes"
pe "echo '*.docx diff=word' >> .gitattributes"
pe "git config diff.word.textconv 'pandoc -t markdown -s'"
pe "less .gitattributes"
pe "git diff"

rm .gitattributes
git checkout -- ugly.xml
git checkout -- notes.docx
