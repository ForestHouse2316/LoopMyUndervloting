command = "powershell.exe -nologo -ExecutionPolicy Bypass C:\UnderVolt\UnderVolt.ps1"
set shell = CreateObject("WScript.Shell")
shell.Run command, 0