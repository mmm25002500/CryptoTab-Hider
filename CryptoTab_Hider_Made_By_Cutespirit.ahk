/*             (C)Cutespirit Team
	You should save it as "UTF-8 BOM" while there
	is any Chinese words in the code.If you don't
	do this, it will send gibberish to users.
	Made By Cutespirit Team , TershiXia.
	
	你需要將此文件存成「UTF-8 BOM」格式當這個檔案有中
	文字的時候。如果你不這麼做，會有亂碼傳送給使用者。
	靈萌團隊 夏特稀製作
*/
#SingleInstance force
#Persistent
TrayTip, Cutespirit App Hider, 歡迎來到Cutespirit App Hider, 0	;傳送通知
Run browser						;跑Cryptotab.exe C:\Program Files\CryptoTab Browser\Application\browser.exe
WinWait ahk_exe browser.exe				;等待視窗跑出來
TrayTip, Cutespirit App Hider, 已經開啟Cryptotab惹!, 0	;傳送通知
Return								;回傳

F12::									;當按下F12
If (IsWindowVisible("browser.exe")){			;如果browser.exe視窗存在
	WinHide ahk_exe browser.exe			;隱藏他
	TrayTip, Cutespirit App Hider, 已經關閉Cryptotab惹!, 0
}Else{								;如果不在
	WinShow ahk_exe browser.exe			;顯示他
	TrayTip, Cutespirit App Hider, 已經開啟Cryptotab惹!, 0
    }
Return								;回傳

IsWindowVisible(pProcessName){
DetectHiddenWindows, On
static WS_VISIBLE := 0x10000000
WinGet, Style, Style, % "ahk_exe " pProcessName
return (Style & WS_VISIBLE)
}
