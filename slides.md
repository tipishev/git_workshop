name: title
class: center, middle
# Practical Git tips and tricks

.footnote[![Fastdev](images/fastdev.png)]

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

* selling version control to non-developers

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

* ~~.fastdev-red[`--emperror`] FOR THE EMPEROR!~~

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

demo `aliases.sh`, `autocorrect.sh`, `colors.sh`

???

---
# Other Configuration Tips

* Always rebase on pull

`git config --global pull.rebase true`

* See all configs values*

 `git config --list`

--

.footnote[\* you may be surprised]

---

# Bisect

![Binary-Search](images/binary-search.png)

???

`bisect.sh`

---

# Bisect Ideas

* (.fastdev-green[old], .fastdev-red[new]) == (.fastdev-green[good], .fastdev-red[bad])
* Mark >1 good commit
* Bisect broken test on CI

---

# Archeology

## `git-grep`

* faster than `grep`
* useful flags
  - `--count`
  - `--line-number`
  - `--show-function`

---

##  Blame

`git blame`

* the starting point
* blames refactorer
* ignore-flags
	- .fastdev-red[`-w`]  white space
	- .fastdev-red[`-M`]  moving within file
	- .fastdev-red[`-C`]  moving between files

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
  - what will people say?

---

# Tools
* separate branches
* separate commits (`-p`)
* interactive rebasing

???

show patching demo

---
![Drive-By Refactoring](images/drive-by.png)
---
# Refactoring Branch

* `feature/XXX-666-refactoring` -> `dev`
* `feature/XXX-666` -> `feature/XXX-666-refactoring`

![Trident](images/trident.png)
