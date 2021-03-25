DIM objShell
set objShell=wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C D:\guoguo520\.sync.cmd", 0, TRUE)

