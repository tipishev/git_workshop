#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(hooks)${GREEN}↪ "
clear


OKAY=$(cat <<-END

░░░░▄▄██▀▀▀▀▀▀▀█▄░░░░░░░
░░▄▀▀░░░░░░░░░░░░▀█▄░░░░
░█▀░░░░░░░░░░░░░░░░█▄░░░
▄█░░░▄▄▄█▄▄░░▄░░░░░░█░░░
█░░░▀██▀▀▀░██▄█░░░░░▀█░░
█░░░░░▄░░▀▄▄░░░░▄░░░░▀█░
█▀░████░░░░████░▀░░░░░█░
█░░▀███░░░░███▀░░░░░░░█▄
█░░▄░▀▀░░░░▀▀░░▄░░░░░░██
▀█░░█▀░▄▄░░█░▀▀░░░░░░░█▀
░▀█░░░░█▀▀▀▀▀▀▄░░░░░░░█░
░░█░░░█░░▄▄▄▄░▄█░░░░░▄█░
░░▀█░░██▀▀██▀▀▀█▀░░░▄█░░
░░░▀█▄░░░░░░░░▄░░░░▄█░░░
░░░░░▀▄▄▀██████░░▄█▀░░░░
░░░░░░░▀█▄▄▄▄▄▄▄█▀░░Okay
░░░░░░░░░▄▄████▄░░░░░░░░


END
)

cd ..  # to repository root
rm -f .git/hooks/pre-commit
mkdir -p .git/hooks  # could be missing
cd hooks
pe "ls"
pe "vim code.py  # don't forget to change it!"
pe "git commit -p"
pe "vim no_python_FIXME.py"
pe "ln no_python_FIXME.py ../.git/hooks/pre-commit"
pe "git commit -p"

TYPE_SPEED=5000
p "$OKAY"
TYPE_SPEED=50

pe "vim code.py"
pe "git commit -p"
p "git commit -p --no-verify  # to ignore hooks"

# cleanup
git checkout -- code.py
