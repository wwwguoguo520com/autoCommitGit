@echo off

::本地git初始化
git init  .

git add README.md

git add .

git commit  -m "firest commit"
::绑定远程仓库，需要修改仓库名称
git remote add origin    git@wwwguoguo520com.github.com:wwwguoguo520com/autoCommitGit.git

::添加定时任务修改定时任务名称  
::需要修改脚本目录
schtasks /create /sc minute /mo 5 /tn "更新目录autoCommitGit" /tr "D:\autoCommitGit\.sync.vbs"