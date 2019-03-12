# Introduction

Hello and welcome to this workshop on less-known useful features of Git. Git is one tool that we as developers use each and every day, therefore it makes sense to become more efficient at using it. What I discovered, however that as with most advanced technologies, as soon as one learns the basics, the motivation to learn fades. The goal of this workshop is to explore less known features that can make working with Git more productive and fun.

If you have ever talked version control to non-developers, you know how difficult it is to convince them to use version control instead of saving file copies with increasingly cryptic names.

![Naive Version Control](images/naive_version_control.png)

Even the basics of Git feel unnecessarily complicated, as if it were made by the creator of Linux or something. However after you learn the main commands, you are good to go.

![Basic Gearshift](images/basic_gearshift.png)

However if you want to see how deep the rabbit hole goes you can read the official Git bible, available for free at https://git-scm.com/book/

![Pro Git](images/pro-git.png)

This book covers almost all the useful features for both users and Git admins.

![Advanced](images/advanced.png)


However, if you want to be a happier person, you can instead look at project Legit, it wraps the common branch workflow into just 7 commands

![Legit](images/legit.png)

So let's get started!

## Configuration

The fastest and most rewarding trick is to configure your Git.

All of the configuration is done with `git config` command and one of 3 flags:

* `--system` for all users (`/etc/gitconfig`)
* `--global` just for you (`/home/%username%/.gitconfig`)
* `--local` just for project (`.../project/.git/config`)

In real life, however, only the `--global` and `--local` configurationes are useful.

### Aliases

One of the most time-saving configurations is aliases. If you find yourself typing or tab-completing the same command every day and it's longer than 3 keystrokes, aliases are there for you.

Here are 3 examples of such aliases:

```bash
sudo git config --system alias.co checkout
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --local alias.pod "pull origin dev"
```

* The first one allows any user on the host to type `git co` instead of `git checkout`

_demonstrate_

* The second command provides a colourful replacement for a rather verbose default output of `git log`

_demonstrate_

* The third command is specific to the Sportamore project where all the branches pull changes from `origin dev`

As expected, each alias is written to one of the three configuration files:

```bash
less /etc/gitconfig
less ~/.gitconfig
less ~/sportamore/sportamore/.git/config
```

### Aside: Sexy Bash Prompt

If you use `git status` too often, you may want to look at [Sexy Bash Prompt](https://github.com/twolfson/sexy-bash-prompt)

![Autocorrect](images/sexy-bash-prompt.png)

It shows the currently checked out branch and an icon for unpushed/unpulled/uncommited changes.


### Autocorrect

![Autocorrect](images/autocorrect.png)

```bash
# reset to no autocorrect
git config --global help.autocorrect 0
```

One thing that I like about Git is that it offers suggestions when it cannot understand a command.

```
git heckout
```

You can take it one step further and allow Git to automatically correct you if there is only one similar command

```bash
git config --global help.autocorrect 30
```

30 in this command means that you have 3 seconds to

* think why are your fingers so fat and clumsy
* cancel the autocorrected command

So let's see how it works

```bash
git heckout
```

Notice that `git sta` is not autocorrected because it is ambiguous.

### Colors

This configuration tip is usefule you work a lot in the command line mode. Any colored output in Git can be configured, for example:

```
git config --global color.diff.new "green normal reverse"
```


### Find bugs with git-bisect

While you were on vacation someone created a bug. Instead of "Hello World!" the main page shows "¡Hola, mundo!".

Like with many things in Git, you only need a few subcommands to work.  They are

* `start`
* `bad`
* `good`

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


### Binary files

Git is good at tracking changes in text files and for binary files it simply tells:

```
diff --git a/binary/notes.docx b/binary/notes.docx
index 638f1d4..9934c87 100644
Binary files a/binary/notes.docx and b/binary/notes.docx differ
```

So, for Git all files are either textual with nice diffs or binary blobs that cannot be diffed.

![Binary Deception](images/deception.png)

The real world, as usual, is not black and white. Some text files, are better to be treated as binary, for example auto-generated XML configuration. And some binaries are actually just text trapped inside a proprietory format, like Microsoft Word or Excel. Let's look at both scenarios.

### When text should be treated as binary
As one wiseman said "Some languages can be read by human, but not by machines, while others can be read by machines but not by humans. XML solves this problem by being readable to neither."
File `binary/ugly.xml` is a huge line of generated XML. When a single letter changes the diff shows the whole file. Good luck figuring out what has changed. Of course, we could prettify it and try to see the difference, but there is another way. We can tell Git to treat it as binary and not to bother showing the diff.

### When binary should be treated as text

```
sudo apt install pandoc
git config diff.word.textconv "pandoc -t markdown -s"
git diff
```

And voilà! The Word document diff shows as markdown. The same idea can be applied to many more binary formats if you have a way to turn it into meaningful text. A smart enoufh neural network could show the following diff:
```
--- A WW2 sailor is kissing a woman on Time Square
+++ 11 men are having lunch on a girder over 1930s Manhattan
```

### Interactive Git
Many git commands are presented as all-or-nothing: you either commit the whole file or don't commit at all. Git is not like this, many of its commands have interactive mode, where git and you take turns in doing something.

#### Patch-flag
Let's say that a file you were working has more than one logical change, for example refactoring and the actual feature.

```
git diff
```

What we would like to do is put refactoring chages in one commit and the feature in the other.


#### Interactive Rebasing Exercise


### Git Archaeology

https://jfire.io/blog/2012/03/07/code-archaeology-with-git/

Often when reading code one can wonder who wrote this and what were they ~~smoking~~ thinking. Luckily, Git records a lot of history and we can do some archaeology to figure out why is the code the way it is. Let's see what is in our archeology toolbox.

#### Git blame

The first tool is `git blame`. It shows the commit, author, and date for every line of code in a given file. As soon as we see the commit hash next to the line, we inspect this commit with

```
git show {commit hash}  # TODO use actual example
```

This way we see what was the intent of this commit and what else had changed at the same time.

- separate refactoring commits
- alibi

#### Git show

### Git Hooks
In almost any collaborative coding project there are rules. These rules can be about code style, commit message format, who can edit which files and so on. Many of these rules are so simple that a robot can do it. And it should. That's where Git hooks step in. There are 2 types of hooks:

TODO diagram

* Server Side
* Client Side

Can be bypassed with `--no-verify`

---

# Illustrations
* https://xkcd.com/1597/ use for introduction?

---

# Ideas pool

* squash
* time-based revision references  `git diff HEAD@{'2 months ago'}`
* ancestry path
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
* rebase
* reflog plumbing
* templates + template dir
* git show
* commits path shortcuts ..., ^, HEAD
* split refactoring and feature branches
  - drive-by refactoring
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


