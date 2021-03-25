@echo off

cd D:\autoCommitGit 
start /b git pull
typora . TODO.md
git add .
git commit -m "Sync"
 git push  origin master