- How does tracking and adding changes make developers' lives easier?
Tracking and adding changes creates accountability on the user side and traceability on the code side. It's as easy as keeping order. It keeps the peace! Actions are attributable to identifiable devs and cause/effect is visible at a step-by-step, better searchable level.

- What is a commit?
A commit is a list of changes you've made!

- What are the best practices for commit messages?
Speak in imperative tone. Treat the commit message just like you would a command (at least, the header part).

- What does the HEAD^ argument mean?
HEAD refers to which commit you're on. HEAD^ is the previous commit you made.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?
Referring back to the challenge instructions, the 3 stages are:
1. Changes not staged for commit
2. Changes to be committed
3. Untracked files (IF you have created a file)

You basically make a file "add command-ready" by creating it, at which point, if you're in a local git repo (git-recognized dir), it will be tracked. This tracked file is then added to the git index, then committed when you're satisfied with the changes.

- Write a handy cheatsheet of the commands you need to commit your changes?
*git checkout branch-name* - switches "view" to a new branch / navigate between branches
*git checkout -b branch name* - creates & navigates to new branch
*git status *- status of all files in local repo / current branch (IF you have modified anything, categories appear: untracked if you created a new file, tracked but not added / not staged for commit, added and staged in index for commit)
*git add filename* - stage file for commit
*git commit -m message* - commit changes made to stage quickly with short header message
*git commit -v message* - commit changes made to stage, opens text editor (can do title, new line, & pgph describing changes, resources used, etc)
*git pull origin masterbranchname* - after switching to [master], of course, this updates local master branch from remote master, making sure it hasn't missed other users' updates since you've been working on your own branch
*git checkout feature-branch-name* - same as other checkout's but you MUST switch back to feature branch before doing merge
*git merge master* - merge the changes from your master into your feature branch (ALWAYS merge changes from master into your feature branch, not the other way around)
*git log* - exit commit history

- What is a pull request and how do you create and merge one?
A pull request tells others about changes you pushed to a GitHub repo. "Once a pull request is sent, interested parties can review the set of changes, discuss potential mods, and even push follow-up comments if necessary."
To create a pull request:
1. first check your git status to make sure you're
  1. tracking all the changes you meant to,
  2. adding the file onto the index / staging for a commit, and
  3. committing all changes.
2. push to GitHub using *git push origin feature-branch-name* (DON'T PUSH MASTER, make sure you're viewing the feature branch you diverged onto using *git checkout branch-name*)
3. it should be pushed up to GitHub, and the "pull request" option is now on the GitHub page.
4. "base fork:" should = your own profile (NOT the original master creator) & "base:" = master. "Head fork:" should also = your own repository and "compare:" should = feature-branch-name.
	Note: if "base fork" doesn't include your name (ie. GitHub has too many possible users/repos available so it can't show yours), just change the Devbootcamp in https://github.com/Devbootcamp/phase-0... (lists the base fork source) to your own name: https://github.com/masopie/phase-0... (my username being masopie).
5. once 4 is all set up, you can do pull request as normal! Click "Create Pull Request", "Merge Pull Request", check **the master branch** (check selection in dropdown) in your own repo, and confirm the changes have been integrated!
6. Done!

- Why are pull requests preferred when working with teams?
A pull request proposes changes to a repository (it *must* have differences from the master) and requests collaboration from other devs. It can only be done in a **branch**, making sure to leave **master branch** preserved. It's that very master preservation and collaboration that makes pull requests valuable! You share your changes, opening your repository to fresh minds who could help provide solutions and not compromise the working original branch (master).