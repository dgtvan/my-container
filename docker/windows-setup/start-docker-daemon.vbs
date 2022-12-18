Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /C wsl -d docker-engine -u root service docker start"
Set WshShell = Nothing