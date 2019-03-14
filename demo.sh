#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "
clear

pe "sudo git config --system alias.co checkout"
pe "sudo less /etc/gitconfig"
pe "git checkout"
pe "git co"
pe "git config --global alias.lg \"log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative\""
pe "less ~/.gitconfig"
pe "cd ~/sportamore/sportamore"
pe "git log"
pe "git lg"
pe "git config --local alias.pod \"pull origin dev\""
pe "less .git/config"
pe "git pod"
