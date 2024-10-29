


/*
知識點：

1.IniRead從設定檔抓出來的變數，會被認為是字串。所以%A_ScriptDir%\log_clipboard.txt寫法僅限檔案中運行。

2.若從ini檔案中抓取變數，又想使用A_ScriptDir來抓取資料夾位置，就得在取出資料後，另外加工使用。


*/


;1.可運行，但僅限檔案中運行
logFile = %A_ScriptDir%\log_clipboard.txt

FileDelete, %logFile%
MsgBox, 已刪除logFile。`n logFile = %logFile% `n A_LastError = %A_LastError%


;2.若從ini檔案中抓取變數，又想使用A_ScriptDir來抓取資料夾位置，就得在取出資料後，另外加工使用。
logFile = log_clipboard.txt
logFilePath = %A_ScriptDir%\%logFile%