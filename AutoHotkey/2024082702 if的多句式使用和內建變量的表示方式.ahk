global clipboardold = 5000

global itemRarity = 3

/*
可運行但醜爛
					if % clipboardold != Clipboard 
					   if itemRarity != 0
						{
						MsgBox,成功`r`nclipboardold = %clipboardold%`r`n`r`nClipboard= %Clipboard%`r`n`r`nitemRarity = %itemRarity%
						}
					else
					{
					MsgBox,失敗
					}
*/					
			
/*
知識點：
1.%Clipboard%是錯誤的，Clipboard不該被%包圍
2.多條件式時需用()包括不同句式
3.單句時單個%可成立條件式，多句或括號內需%%包裹變數
*/			
if ( %clipboardold% != Clipboard) and ( itemRarity != 0)
	{
	MsgBox,成功`r`nclipboardold = %clipboardold%`r`n`r`nClipboard= %Clipboard%`r`n`r`nitemRarity = %itemRarity%
	}
	else
	{
	MsgBox,失敗
	}
					