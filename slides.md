name: title
class: center, middle
# Practical Git tips and tricks

.fastdev-gray[tipishev/git_workshop]

.right.footnote[![Fastdev](images/fastdev.png)]

---

# Motivation
* refresh memory
* rekindle interest in Git
* simplify workflow

???

* use it every day
* new city metaphor
* hidden corners
* productive and fun

--

.footnote[\* myself included]

---
# Who I am and what I do
* Python/Django backender
* .sportamore-pink[Sportamore]
  - 20 devs in 3 teams
  - Github + Teamcity
  - feature ➔ dev ➔ master

---
# Naïve Version Control
![Naïve Version Control](images/naive_version_control.png)

???

* explain version control to non-developers

---
# Do we need this complexity?

.center.image-50[![Advanced](images/advanced.png)]

???

* as if it were the same guy who made Linux

---
# Maybe Not...

.center.image-50[![Basic Gearshift](images/basic_gearshift.png)]

--

```bash
git help everyday
```


???

* after all only a handful of commands is used

---

# Le·git ([git-legit.org](http://www.git-legit.org/))

![Legit](images/legit.png)



???

* Kenneth Reitz, creator of the main Python web-lib
* Just 7 commands

---
# Pro-git

.center.middle.image-50[![Pro Git](images/pro-git.png)]

???

* available in all human languages
* that's where most of the tricks come from

---

# Configuration

* .fastdev-red[`--system`] for all users
* .fastdev-red[`--global`] just for you
* .fastdev-red[`--local`] for the project
--

* ~~.fastdev-red[`--emperor`] FOR THE EMPRAH!~~


???

* Easy and rewarding

---

# Examples
* Aliases

---

# Aside: Sexy Bash Prompt

![Sexy Bash Prompt](images/sexy-bash-prompt.png)

---
# Examples
* Aliases

--

* Autocorrect

--

* Colors

???

* aliases.sh
* autocorrect.sh
* colors.sh

---
# Other Configuration Tips

* Always rebase on pull

`git config --global pull.rebase true`

* See all configs values*

 `git config --list`

--

.footnote[\* you may be surprised]


---
# Git Hooks

* Enforce rules

* Trigger actions

--

----

* Remote - enforced

* Local - optional*

--

.footnote[\* Can be bypassed with `--no-verify`]

---
# Git Hooks

![Git Hooks](images/git-hooks.png)

???

* hooks.sh

---

# Archeology

## `git-grep`

* faster than `grep`
* useful flags
  - `--count`
  - `--line-number`
  - `--show-function`

???

* refactoring
* what were they ~~smoking~~ thinking
* happens all the time with running projects

---

##  Blame

`git blame`

* the starting point
* likely to blame refactorer
* ignore-flags
  - .fastdev-red[`-w`]  white space
  - .fastdev-red[`-M`]  moving within file
  - .fastdev-red[`-C`]  moving between files

???

* JetBrains IDE as "Annotate"
* Shows the author, commit hash, timestamp

---

## Pickaxe

`git log -S {string}`

.fastdev-red[The ultimate code-digging tool  across the whole history]

---

# Realism vs Perfection
* aka Sausage Making

--

* Realism
  - better for historians

* Perfection
  - easier to read

???

* google it
* commit often
* perfect later
* publish once

---

# Tools
* separate commits (`-p`)
* separate branches
* interactive rebasing

--

.fastdev-green[\> asuming not pushed yet]

???

* Git is forgiving until push
* patch.sh

---
![Drive-By Refactoring](images/drive-by.png)
---
# Refactoring Branch

* `feature/XXX-666-refactoring` -> `dev`
* `feature/XXX-666` -> `feature/XXX-666-refactoring`

![Trident](images/trident.png)
---
# Interactive Rebasing

* `git commit --amend` on steroids
* a range of unpushed commits
* pretend to be perfect

???

* amend: rewrite the latest commit
* rebasing.sh

---

# Bisect

![Binary-Search](images/binary-search.png)

???

bisect.sh

---

# Bisect Ideas

* (.fastdev-green[old], .fastdev-red[new]) == (.fastdev-green[good], .fastdev-red[bad])
* Mark >1 good commit
* Bisect broken test on CI

---

# Git Attributes

* tell Git how to treat files
* Like `gitconfig`:
  - `system`
  - `global`
  - `local`

---

# Git Worldview
* Text Files
* Binary Files

.small[
```
diff --git a/binary/notes.docx b/binary/notes.docx
index 638f1d4..9934c87 100644
Binary files a/binary/notes.docx and b/binary/notes.docx differ
```
]

---
# Binary Deception

.center.image-50[![Binary Deception](images/deception.png)]

* some .fastdev-red[XML] is as good as binary
* some .fastdev-green[binaries] are just text

???

* real world not white and black
* .gitattributes tells Git how to treat files
* binary.sh

---
# Filters

## Smudge (on `checkout`)
![Smudge](images/smudge.png)

---
# Filters

## Clean (on `add`)
![Clean](images/clean.png)

???

* filters.sh

---

# Filters: Diff Images

```bash
*.png diff=exif
git config diff.exif.textconv exiftool
diff --git a/image.png b/image.png
```

.small[```
index 88839c4..4afcb7c 100644
--- a/image.png
+++ b/image.png
@@ -1,12 +1,12 @@
 ExifTool Version Number         : 7.74
-File Size                       : 70 kB
-File Modification Date/Time     : 2009:04:21 07:02:45-07:00
+File Size                       : 94 kB
+File Modification Date/Time     : 2009:04:21 07:02:43-07:00
 File Type                       : PNG
 MIME Type                       : image/png
-Image Width                     : 1058
-Image Height                    : 889
+Image Width                     : 1056
+Image Height                    : 827
 Bit Depth                       : 8
 Color Type                      : RGB with Alpha
```]

---
# Filters: Mask Markdown As Word

![Word](images/word.png)

* smudge: markdown to Word
* clean: Word to markdown

---
# Filters: Transparent Encryption

![Tinfoil](images/tinfoil.png)

* smudge: decrypt
* clean: encrypt

.small.fastdev-light-gray[https://gist.github.com/shadowhand/873637]

---
# Miscellaneous Tips
* The power of `-`
  - `git checkout -`
  - `git merge -`

* Git Stash
  - `git stash save "Jim asked to fix FOO while I was doing BAR"`
  - `git stash list`
  - `git stash pop`

* See what's shaking with

`git for-each-ref --sort=-committerdate --format='%(refname:short) %(committerdate:short)'`

---
# Miscellaneous Tips (continued)

* insta-checkout file from another branch with

`git checkout <branch> -- filename`

* git replace

`git grep -l $1 | xargs sed -i 's/$1/$2/g'`

---
# ~~Conclusion~~ Call to Action

* create a couple of aliases

--

* write a `pre-push` hook

--

* download Pro Git (it's free!)

.center.middle.image-30[![Pro Git](images/pro-git.png)]

---
class: center, middle

# ¿Questions?
