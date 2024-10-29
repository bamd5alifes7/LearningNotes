global randomMin = 5000
global randomMax = 5005


/*
嘗試進行數學運算
知識點：
1.MsgBox可使用全域變量
2.單%空格的意思是，後面語句中有符合變數字樣的直接當作變數處理，所以字串額外用""框出。		

*/
;第一段 錯誤範例 會是字串呈現
		Random, rand, %randomMin%, %randomMax%
					
		MsgBox,randomMin= %randomMin%,randomMax= %randomMax%,  %rand% + 20

;第二段 第一種呈現方式，直接加減
		MsgBox % "randomMin= " randomMin ", randomMax= " randomMax ", " (rand + 20)


;第三段 第二種呈現方式，先算好再用變數呈現
		ran = % rand + 20
		
		MsgBox,randomMin= %randomMin%,randomMax= %randomMax%,ran = %ran%
		