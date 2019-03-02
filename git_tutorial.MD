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

```bash
git-bisect start
cat bisect/index.html  # has mundo
git checkout 41ff7
cat bisect/index.html  # has World
git bisect good
```


### Git archaeology



## Illustrations
* https://xkcd.com/1597/ use for introduction
