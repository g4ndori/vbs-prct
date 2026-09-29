
Set WshShell = WScript.CreateObject("WScript.Shell")

' 1. 윈도우 기본 메모장 실행
WshShell.Run "notepad.exe"
WScript.Sleep 1000 ' 메모장이 켜질 때까지 1초 대기

' 2. 자동으로 타이핑할 문자열 지정
Dim message, i
message = "nnmnmnmnmnmnmn."

' 3. 한 글자씩 타이핑하는 모션 구현
For i = 1 To Len(message)
    ' 한 글자씩 추출하여 전송
    WshShell.SendKeys Mid(message, i, 1)
    ' 글자 입력 간격 조절 (밀리초 단위, 50 = 0.05초)
    WScript.Sleep 50
Next

WScript.Sleep 2000
WshShell.Run "taskkill /f /im notepad.exe", 0, True

Dim asd

For asd = 1 to 10
msgbox i & "ㅇㅇ"
Next
