' warning.vbs (umístěný ve složce 'sources')

' Nastaví titulok okna, text správy a typ tlačítok (4 = Áno/Nie)
intResponse = MsgBox("Opravdu chcete spustit další skript v podsložce?", 4 + 32, "POZOR - Varování")

' 6 = Áno (Yes)
' 7 = Nie (No)

' Zpracování odpovědi:
If intResponse = 6 Then
    ' Stisknuto 'Ano'. Spustí druhý BAT skript.
    
    ' Vytvoří Shell objekt
    Set WshShell = CreateObject("WScript.Shell")
    
    ' Spustí second_script.bat.
    ' ""cmd /c start second_script.bat"" zajistí, že se spustí v novém okně a neblokuje VBScript.
    ' Důležité: VBScript se spouští z adresáře 'sources', proto stačí jen jméno souboru.
    WshShell.Run "cmd /c start second_script.bat", 1, false
    
Else
    ' Stisknuto 'Ne' nebo křížek. VBScript se ukončí.
    ' Nic nedělá, takže se skript prostě zavře.
End If
