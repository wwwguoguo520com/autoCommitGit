@echo off

cd D:\guoguo520 
start /b git pull
typora . TODO.md
git add .
git commit -m "Sync"
 git push  origin master