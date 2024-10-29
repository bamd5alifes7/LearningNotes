/*
for in 迴圈

For Key , Value in Expression

1.第一個Key就是鍵，用在數列中等同index。可以任意命名
2.用逗號隔開的第二個就是Value，用在數列等同值。可以任意命名

*/



/*
;k就是指第幾個，等同index的概念

BeltPos := [1, 2, 3, 4, 5, 11, 12, 13, 14, 15]
    for k in BeltPos
		{
		MsgBox,% "k = " k "`rBeltPos[k] = "BeltPos[k]
		}
*/

/*
;改名成A也是一樣意思
BeltPos := [1, 2, 3, 4, 5, 11, 12, 13, 14, 15]
    for A in BeltPos
		{
		MsgBox,% "A = " A "`rBeltPos[A] = "BeltPos[A]
		}
*/

		
;背包欄最左上邊緣的尖角,改成用全域變數
BagFirstX = 1694
BagFirstY = 781
;背包欄最右下邊緣的尖角,改成用全域變數
BagLastX = 2539
BagLastY = 1137

;座標
BagPosX := []
BagPosY := []
		
;腰帶位置，目前是兩排
BeltPos := [1, 2, 3, 4, 5, 11, 12, 13, 14, 15]

	;由左上角和右下角座標，把背包60個位置算出來。
	loop , 60
		{

		;初始X座標 + 格子長度*無條件捨去((當前數字-1)/5) + 格子一半長度
		TempX =% BagFirstX+((BagLastX-BagFirstX)/12)*Floor((A_index-1)/5)+(BagLastX-BagFirstX)/12/2
		BagPosX.Push(TempX)
		;初始Y座標 + 格子高度*餘數((當前數字-1)/5) + 格子一半高度
		TempY =% BagFirstY+(BagLastY-BagFirstY)/5*Mod(A_index-1,5)+(BagLastY-BagFirstY)/5/2
		BagPosY.Push(TempY)
		}

    BlockInput On
    send {Ctrl down}
	MouseGetPos,tempX,tempY
	
    for k, v in BeltPos
		{
		MsgBox,% "k = " k "`rv = " v "`rBagPosX[v] = "BagPosX[v]
		}
	
	
		
