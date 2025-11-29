
intResponse = MsgBox("This malware is not a joke. Do you want to continue", 4 + 32, "Warning")

If intResponse = 6 Then

    Set WshShell = CreateObject("WScript.Shell")
    

    WshShell.Run "cmd /c start second_script.bat", 1, false
    
Else

End If
