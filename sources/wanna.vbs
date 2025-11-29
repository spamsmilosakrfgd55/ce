
intResponse = MsgBox("Hello. Do you want a cookie?", 4 + 32, "cookie.exe")

If intResponse = 6 Then

    Set WshShell = CreateObject("WScript.Shell")
    

    WshShell.Run "cmd /c start sources\run.bat", 1, false
    
Else

End If
