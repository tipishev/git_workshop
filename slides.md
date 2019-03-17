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

.image-70[![Advanced](images/advanced.png)]

???

* as if it were the same guy who made Linux 

---
# Maybe Not...

.image-50[![Basic Gearshift](images/basic_gearshift.png)]

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

![Pro Git](images/pro-git.png)

???

* available in all human languages
* that's where most of the tricks come from

---

# Configuration

* .fastdev-red[`--system`] for all users
* .fastdev-red[`--global`] just for you
* .fastdev-red[`--local`] for the project

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
* Mark more than one good commit
* Auto-Bisect broken test on CI-server 

