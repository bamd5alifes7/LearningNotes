
/*
練習一下array與Loop中A_Index的關係。

1.array和loop都是從1開始而非0開始

*/

array := ["a", "b", "c", "d", "e"]


MsgBox, % "MaxIndex = " array.MaxIndex()

Loop, % array.MaxIndex()  ; MaxIndex() 返回數列的最大索引，這裡是 5
{
    MsgBox,% "A_Index = " A_Index "`r`n array[A_Index]: "  array[A_Index]  
}
