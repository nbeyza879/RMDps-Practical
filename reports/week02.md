# Week 2: Automation & Code Quality

## 1. What I Built
- Created a **Makefile** to automate repetitive tasks (data preparation, cleaning, running help menu).
- Learned how to use `make` commands to run shell scripts instead of typing long commands.
- Installed and configured **Ruff**, a Python linter, to check and fix coding style issues automatically.
- Practiced resolving **Git conflicts** when my local changes diverged from the remote branch.

---

## 2. My Exploration
- I reviewed my Git commit history to better understand the sequence of changes.
- After resolving a merge conflict, I successfully completed and committed my Week 1 report.
- I also created a pull request as practice in handling remote collaboration.
- Screenshots of Git errors and Ruff results were saved locally as additional evidence.
---

## 3. Use of GenAI
### What I Asked It To Do
This week I relied on AI assistance for several tricky steps:
1. **Git conflict resolution:**  
   I faced a non–fast-forward error when trying to `git push`. I asked how to safely merge remote changes into my branch.  

2. **Ignore unwanted files:**  
   `.DS_Store` kept showing up in Git. I asked how to add it to `.gitignore` and remove it from the repo history.   
---

### What I Got and Did With It
- Learned the exact commands:
  ```bash
  git restore --staged <file>
  git rm --cached .DS_Store