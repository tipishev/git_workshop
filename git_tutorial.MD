## Ideas pool

* squash
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



## Illustrations
* https://xkcd.com/1597/ use for introduction
