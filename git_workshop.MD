## Ideas pool

* squash
* time-based revision references  `git diff HEAD@{'2 months ago'}`
* ancestry path
* git lg
* git log --stat
* git grep
* git replace
* git log -S
* git blame + keys
* git hooks
* github tricks, e.g. #FIX %issue #% in PR name
* git checkout/merge -
* git commit/checkout -p
* git short diff
* git shortcuts
* rebase
* reflog plumbing
* templates + template dir
* git show
* commits path shortcuts ..., ^, HEAD
* split refactoring and feature branches
* nuke big files
* git tags
* ignore whitespace
* git stash
* delete branch locally and remotely
* delete all merged branches
* git log --pretty=oneline master
* https://devhints.io/git-log-format git log --pretty=format:"%ad - %an: %s %H" --after="2019-02-25" --until="2019-02-27"
* garbage collect, GIT_TRACE_PERFORMANCE
* nuke accidental password

* https://opensource.com/article/18/4/git-tips
  - 6. A nicer force-push: `git push --force-with-lease`


* stash
  - git config --global alias.stash-rename '!_() { rev=$(git rev-parse $1) && git stash drop $1 || exit 1 ; git stash store -m "$2" $rev; }; _'

## Definitely goes

### Find bugs with git-bisect

While you were on vacation someone created a bug. Instead of "Hello World!" the main page shows "¡Hola, mundo!".

Like with many things in Git, you only need a few subcommands to work. Here they are `start`, `bad`, and `good`.

```bash
git-bisect start
cat bisect/index.html  # has mundo
git bisect bad
git checkout 41ff7
cat bisect/index.html  # has World
git bisect good
```

Let's automate the search. Enter `git bisect run my_script arguments`
The script should return:

* 0 for good
* 1 for bad
* 125 for cannot test

```
git bisect bad
git bisect good 41ff7
git bisect run ./bisect_test_.sh
```

Notes from documentation:
* As an alternative, you can use `new` instead of `bad` and `old` instead of good
* In real world not every commit can be tested, e.g. build fails. You have Options
  - `git reset --hard HEAD~3`  # try 3 commits ago
  - `git bisect skip`  # current commit
  - `git bisect skip v2.5..v2.6`  # skip a range of commits
* Narrow down to directories
* Give more than one good commit
* Automatically bisect a broken test


### Git archaeology
Often when reading code one can wonder who wrote this and what were they smoking. Luckily for us, Git records all the history and we can do some Git archaeology to figure out why is the code the way it is. The first tool you would use is `git blame`. It shows the commit, author, and date for every line of code. However, sometimes it's not enough. We may inspect a commit with `git show {commit hash}` to see that the poor person we were cursing for the last 10 minutes just refactored the code.

### Git Hooks
In almost any collaborative coding project there are rules. These rules can be about code style, commit message format, who can edit which files and so on. Many of these rules are so simple that a robot can do it. And it should. That's where Git hooks step in. There are 2 types of hooks:

* Server Side
* Client Side


Can be bypassed with `--no-verify`






## Illustrations
* https://xkcd.com/1597/ use for introduction
