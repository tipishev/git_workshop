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

cd ..
rm -f .git/hooks/pre-commit
cd hooks
pe "ls"
pe "vim code.py"
pe "git commit -p"
pe "vim no_python_FIXME.py"
pe "ln no_python_FIXME.py ../.git/hooks/pre-commit"
pe "git commit -p"
p "$OKAY"
pe "vim code.py"
pe "git commit -p"
pe "git commit -p --no-verify"  # to ignore hooks

# cleanup
git checkout -- code.py
