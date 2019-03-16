#!/usr/bin/env bash
. demo-magic.sh  # get your own at https://github.com/dzimine/demo-magic

DEMO_PROMPT="${PURPLE}(archeology${WHITE}🦖💩${GREEN}⛏️${PURPLE} )${GREEN}➜ "
clear

pe "cd ~/sportamore/sportamore"
pe "git blame sport/models/supplier.py"
pe "git blame sport/models/supplier.py | grep future_payment_days"
pe "git log -1 --stat 5aea5484eed"

pe "git blame -C sport/models/supplier.py | grep future_payment_days"
pe "git log -1 --stat 5d048c080e0"
pe "git show 5d048c080e0"

pe "git log -S 'future_payment_days = models.PositiveIntegerField('"
pe "git log -1 --stat 849854f009"
pe "git show 849854f009"
pe "git log -S 'future_payment_days  ='"
pe "git show 130235e38"
pe "git log -S future_payment_days"
