#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(rebase)${GREEN}➜ "
clear

cd ~/Desktop
rm -rf rebasing-exercise

pe "mkdir rebasing-exercise"
pe "cd rebasing-exercise"
pe "git init"
pe "echo 'hello' > hello.txt"
pe "git add hello.txt"
pe "git commit -am 'initial commit'"
pe "echo '#TODO add world' >> hello.txt"
pe "git commit -am 'add implementation notes'"
pe "echo 'hello wrold' > hello.txt"
pe "git commit -am 'implement hello world'"
pe "echo 'hello world' > hello.txt"
pe "git commit -am 'typo'"
pe "echo 'Hello World!' > hello.txt"
pe "git commit -am 'formatting'"
pe "echo '¡Hola, mundo!' > hello.txt"
pe "git commit -am 'translate to Spanish'"
pe "git log"
pe "git rebase -i HEAD~5  # psst! reword, fixup, fixup, fixup, pick"
pe "git log"
