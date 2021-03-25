DIM objShell
set objShell=wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C D:\autoCommitGit\.sync.cmd", 0, TRUE)

