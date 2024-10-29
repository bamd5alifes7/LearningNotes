

				;FoundPos := % RegExMatch(clipboard ,"被你擊殺的敵人會爆炸")
				; FoundPos := 135
				
				
				;FoundPos := RegExMatch(clipboard ,"被你擊殺的敵人會爆炸")
				; FoundPos := 135
				
				FoundPos := InStr(clipboard ,"被你擊殺的敵人會爆炸")
				; FoundPos := 135				
				
				
				MsgBox, % FoundPos
				
				