
/*
知識點：
Array的MaxIndex與Length測試
1.MaxIndex()表示最大Index。[1].Length()表示第一個元素的字串長度。
2.沒有Push時兩者皆為空值。而!=0會包含空值。
3.Push空數組時仍有Index。

*/



global AssociateAffix := Array()
;AssociateAffix.Push(["堅定邪靈","黑暗觀念"])
AssociateAffix.Push([])

MsgBox,% "AssociateAffix.MaxIndex() = " AssociateAffix.MaxIndex() " `nAssociateAffix[1].Length() = " AssociateAffix[1].Length()


; 檢查Index是否有Index或Index第一個元素的長度0
if (AssociateAffix.MaxIndex() = 0 || !AssociateAffix[1].Length()) 
{
    MsgBox, AssociateAffix 沒有Index，Index第一個元素的長度0。
}

; 檢查Index第一個元素是否為0。
if (AssociateAffix.MaxIndex() != 0) 
{
    MsgBox,% "AssociateAffix.MaxIndex() = " AssociateAffix.MaxIndex()
}

; 檢查Index第一個元素是否為0，花俏一下，因為Length()是0用!改為1值就成立ture的條件。
if (!AssociateAffix[1].Length()) 
{
    MsgBox,% "AssociateAffix[1].Length() = " AssociateAffix[1].Length()
}

; 還是很怕!=不可用，測一下
if (AssociateAffix.MaxIndex() > 0 ) {
    MsgBox, AssociateAffix 有Index。
}

; 檢查Index第一個元素是否為0。
if (AssociateAffix.MaxIndex() = "") 
{
    MsgBox,% "AssociateAffix.MaxIndex() 是空值 = " AssociateAffix.MaxIndex()
}

; 最終用法 有Index且長度>0。		
if (AssociateAffix.MaxIndex() > 0 && AssociateAffix[1].Length() > 0) {
    MsgBox, AssociateAffix 有Index且長度>0。
}