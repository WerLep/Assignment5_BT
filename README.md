# Assignment5_BT

 **Name:** Weronika Lepiarz  
 **Date:** 08.04.2025  
 **Description:** Course: Basic Toolkit for Bioinformatics Research
 
## Git Commands

### Initialization and configuration

- `git init` – Create an empty Git repository or reinitialize an existing one.
- `git config --global user.name "Your Name"` – Sets Git username.
- `git config --global user.email "you@example.com"` – Sets Git email.

---

### Creating and cloning repositories

- `git clone <url>` – Clones a remote GitHub repository to your local machine.
- `git remote add origin <url>` – Links your local repo to a remote one (e.g., on GitHub).

---

### Tracking changes

- `git status` – Shows the working tree status.
- `git add <file>` – Adds a specific file to the staging area.
- `git add .` – Adds all files in the current directory to the staging area.
- `git add -u` – Adds all modified and deleted files that are being tracked.

---

### Committing changes

- `git commit -m "message"` – Saves staged changes with a message.
- `git commit --amend -m "new message"` – Changes the last commit message.

---

### Working with remote repositories

- `git push` – Sends commits to the remote repository.
- `git push origin main` – Pushes to the `main` branch on GitHub.
- `git pull` – Fetches and merges changes from the remote repo.
- `git fetch` – Fetches changes from GitHub without merging them.
- `git merge origin/main` – Merges the remote `main` branch into your local one.

---

### Branching

- `git branch` – Lists all branches.
- `git branch <name>` – Creates a new branch.
- `git checkout <name>` – Switches to the specified branch.
- `git checkout -b <name>` – Creates and switches to a new branch.
- `git merge <branch>` – Merges the given branch into your current branch.
- `git diff main..branch` – Shows the difference between two branches.

---

### Differences and history

- `git diff` – Shows changes between the working directory and the last commit.
- `git log` – Shows the history of commits.

---

### Restoring earlier versions

- `git checkout <commitID>` – Checks out a previous commit.
- `git checkout <commitID> <file>` – Restores a specific file from a past commit.
- `git branch back_to_the_future` – Creates a new branch from a past commit.
- `git merge back_to_the_future` – Merges the restored version back into main.

---

## Resolving merge conflicts

Conflicts occur when changes from two branches overlap and Git can't decide which to keep.

Git will add conflict markers in the file:
```plaintext
  <<<<<<< HEAD
  Your version
  =======
  Other version
  >>>>>>> branch_name
```
### What to do?
1) Delete the "unwanted" lines and conflict markers from the file.
2) Commit the changes:
```bash
   git add -u <file>
   git commit -m "Fix merge"
   git push
```
3) Now you can update the main branch with the content from the branch you were working on:
```bash
   git checkout main
   git merge <branch>
   git push
```
