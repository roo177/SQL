Function modify()
Dim wkbk As Workbook
Dim wks As Worksheet
Dim i, Rowcount As Integer
Set wkbk = ThisWorkbook
Dim projectname, rep_month As String
Application.DisplayAlerts = False

Dim formatCur$, formatDate$, intColor&, colsCurrency$, colsDate$, fnExportToWorkbook, formatPers$, months$

projectname = "MAHMUTBEY - ESENYURT METRO HATTI PROJESİ"
rep_month = "2203"

On Error Resume Next
wkbk.Sheets("BÜTÇE TOPLAM").Delete
wkbk.Sheets("L6 KODLAR").Delete
wkbk.Sheets("L3 KODLAR").Delete
wkbk.Sheets("L4 KODLAR").Delete
wkbk.Sheets("L5 KODLAR").Delete

wkbk.Sheets("TOPLAM GELİR").Move After:=wkbk.Sheets("GELİR ESK. PROJE")
wkbk.Sheets("AYLIK ENDEKSLER").Move After:=wkbk.Sheets("TOPLAM GELİR")
wkbk.Sheets("ENDEKS ARTIŞ").Move After:=wkbk.Sheets("AYLIK ENDEKSLER")

i = 1
For Each one In wkbk.Sheets
Debug.Print Sheets(i).Name
i = i + 1
Next


wkbk.Sheets("TOPLAM GELİR").Tab.Color = RGB(195, 215, 155)
wkbk.Sheets("TOPLAM GİDER").Tab.Color = RGB(150, 54, 52)
wkbk.Sheets("GENEL TOPLAM").Tab.Color = RGB(149, 179, 215)
        
Debug.Print wkbk.Sheets.Count

    wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
    wkbk.Sheets(wkbk.Sheets.Count).Name = "L6 KODLAR"
    
    wkbk.Sheets("TOPLAM GELİR").Select
    wkbk.Sheets("TOPLAM GELİR").Range("A2").Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("A2"), wkbk.Sheets("TOPLAM GELİR").Range("A2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("A2"), wkbk.Sheets("TOPLAM GELİR").Range("A2").End(xlDown)).Copy
    
    wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Range("A1").Select
    wkbk.Sheets("L6 KODLAR").Range("A1").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    wkbk.Sheets("TOPLAM GELİR").Select
    wkbk.Sheets("TOPLAM GELİR").Range("E2").Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("E2"), wkbk.Sheets("TOPLAM GELİR").Range("E2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("E2"), wkbk.Sheets("TOPLAM GELİR").Range("E2").End(xlDown)).Copy
    
    wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Range("B1").Select
    wkbk.Sheets("L6 KODLAR").Range("B1").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    wkbk.Sheets("TOPLAM GİDER").Select
    wkbk.Sheets("TOPLAM GİDER").Range("A2").Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("A2"), wkbk.Sheets("TOPLAM GİDER").Range("A2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("A2"), wkbk.Sheets("TOPLAM GİDER").Range("A2").End(xlDown)).Copy
    
    wkbk.Sheets("L6 KODLAR").Select
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 1).Select
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    wkbk.Sheets("TOPLAM GİDER").Select
    wkbk.Sheets("TOPLAM GİDER").Range("C2").Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("C2"), wkbk.Sheets("TOPLAM GİDER").Range("C2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("C2"), wkbk.Sheets("TOPLAM GİDER").Range("C2").End(xlDown)).Copy
    
    wkbk.Sheets("L6 KODLAR").Select
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("B1").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 2).Select
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 2).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Cells(1, 3).Formula = "= +A1 & ""."" & B1 "
    wkbk.Sheets("L6 KODLAR").Cells(1, 3).AutoFill Destination:=Range("C1:C" & Rowcount)
    
    Calculate
    
    wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Select
    wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Copy
    
    wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Select
    wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    
    wkbk.Sheets("L6 KODLAR").Columns("C:C").Select
    wkbk.Sheets("L6 KODLAR").Columns("C:C").RemoveDuplicates Columns:=1, Header:=xlNo

    wkbk.Sheets("L6 KODLAR").Columns("A:B").Delete

'-------------------------------------L3 CLEAN CODES------------------------------------------

    wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
    wkbk.Sheets(wkbk.Sheets.Count).Name = "L3 KODLAR"

    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L3 KODLAR").Cells(1, 1).Formula = "=+left('L6 KODLAR'!A1,7) & ""."" & +right('L6 KODLAR'!A1,3)"
    wkbk.Sheets("L3 KODLAR").Cells(1, 1).AutoFill Destination:=Range("A1:A" & Rowcount)
    
    Calculate
    
    wkbk.Sheets("L3 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L3 KODLAR").Columns("A:A").Copy
    wkbk.Sheets("L3 KODLAR").Cells(1, 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    wkbk.Sheets("L3 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L3 KODLAR").Columns("A:A").RemoveDuplicates Columns:=1, Header:=xlNo

'-------------------------------------L4 CLEAN CODES------------------------------------------

    wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
    wkbk.Sheets(wkbk.Sheets.Count).Name = "L4 KODLAR"

    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L4 KODLAR").Cells(1, 1).Formula = "=+left('L6 KODLAR'!A1,10) & ""."" & +right('L6 KODLAR'!A1,3)"
    wkbk.Sheets("L4 KODLAR").Cells(1, 1).AutoFill Destination:=Range("A1:A" & Rowcount)
    
    Calculate
    
    wkbk.Sheets("L4 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L4 KODLAR").Columns("A:A").Copy
    wkbk.Sheets("L4 KODLAR").Cells(1, 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    wkbk.Sheets("L4 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L4 KODLAR").Columns("A:A").RemoveDuplicates Columns:=1, Header:=xlNo

'-------------------------------------L5 CLEAN CODES------------------------------------------

    wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
    wkbk.Sheets(wkbk.Sheets.Count).Name = "L5 KODLAR"

    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L5 KODLAR").Cells(1, 1).Formula = "=+left('L6 KODLAR'!A1,13) & ""."" & +right('L6 KODLAR'!A1,3)"
    wkbk.Sheets("L5 KODLAR").Cells(1, 1).AutoFill Destination:=Range("A1:A" & Rowcount)
    
    Calculate
    
    wkbk.Sheets("L5 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L5 KODLAR").Columns("A:A").Copy
    wkbk.Sheets("L5 KODLAR").Cells(1, 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    wkbk.Sheets("L5 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L5 KODLAR").Columns("A:A").RemoveDuplicates Columns:=1, Header:=xlNo


'-------------------------------------L3 CLEAN CODES------------------------------------------
    
    wkbk.Sheets("L3 KODLAR").Select
    wkbk.Sheets("L3 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L3 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rowcount = wkbk.Sheets("L3 KODLAR").Range("A1").End(xlDown).Row

    wkbk.Sheets("L3 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],7)"
    wkbk.Sheets("L3 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L3 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L3 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L3 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L3 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    Calculate
    
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
       
    wkbk.Sheets("L3 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L3 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L3 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L3 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L3 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L3 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L3 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With

    wkbk.Sheets("L3 KODLAR").Columns("A").Delete
     
    For i = 2 To wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L3 KODLAR").Cells(i, 3).Value = 1
    Next
'-------------------------------------L4 CLEAN CODES------------------------------------------
    
    wkbk.Sheets("L4 KODLAR").Select
    wkbk.Sheets("L4 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L4 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rowcount = wkbk.Sheets("L4 KODLAR").Range("A1").End(xlDown).Row
       
    wkbk.Sheets("L4 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],10)"
    wkbk.Sheets("L4 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L4 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L4 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L4 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L4 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    Calculate
    
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
       
    wkbk.Sheets("L4 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L4 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L4 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L4 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L4 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L4 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L4 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L4 KODLAR").Columns("A").Delete


'-------------------------------------L5 CLEAN CODES------------------------------------------
    
    wkbk.Sheets("L5 KODLAR").Select
    wkbk.Sheets("L5 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L5 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rowcount = wkbk.Sheets("L5 KODLAR").Range("A1").End(xlDown).Row
   
    wkbk.Sheets("L5 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],13)"
    wkbk.Sheets("L5 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L5 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L5 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L5 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L5 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    Calculate
    
    wkbk.Sheets("L5 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    
    wkbk.Sheets("L5 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L5 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L5 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L5 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L5 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L5 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L5 KODLAR").Columns("A").Delete

'----------------------------------------COMBINE CODES------------------------------------------------

    
    For i = wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row To 2 Step -1
    
    
        For j = 2 To wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        
        If Left(wkbk.Sheets("L4 KODLAR").Cells(i, 1).Value, 7) = Left(wkbk.Sheets("L3 KODLAR").Cells(j, 1).Value, 7) And wkbk.Sheets("L4 KODLAR").Cells(i, 2) = wkbk.Sheets("L3 KODLAR").Cells(j, 2) Then
        
            wkbk.Sheets("L3 KODLAR").Rows(j + 1).EntireRow.Insert
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 1).Value = wkbk.Sheets("L4 KODLAR").Cells(i, 1).Value
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 2).Value = wkbk.Sheets("L4 KODLAR").Cells(i, 2)
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 3).Value = 2
        GoTo next_i
        End If

        Next j
next_i:

    Next i


    For i = wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row To 2 Step -1
    
    
        For j = 2 To wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        
        If Left(wkbk.Sheets("L5 KODLAR").Cells(i, 1).Value, 10) = wkbk.Sheets("L3 KODLAR").Cells(j, 1).Value And wkbk.Sheets("L5 KODLAR").Cells(i, 2) = wkbk.Sheets("L3 KODLAR").Cells(j, 2) Then
        
            wkbk.Sheets("L3 KODLAR").Rows(j + 1).EntireRow.Insert
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 1).Value = wkbk.Sheets("L5 KODLAR").Cells(i, 1).Value
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 2).Value = wkbk.Sheets("L5 KODLAR").Cells(i, 2)
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 3).Value = 3
        GoTo next_iy
        End If

        Next j
next_iy:

    Next i

    For i = 1 To wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Cells(i, 2).Value = Right(wkbk.Sheets("L6 KODLAR").Cells(i, 1).Value, 3)
    wkbk.Sheets("L6 KODLAR").Cells(i, 1).Value = Left(wkbk.Sheets("L6 KODLAR").Cells(i, 1).Value, 17)
    Next i
    
    wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L6 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Columns("A:B").AutoFilter
    
    wkbk.Sheets("L6 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L6 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("A1:A" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L6 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L6 KODLAR").AutoFilter.SORT.SortFields.Clear
    wkbk.Sheets("L6 KODLAR").AutoFilter.SORT.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L6 KODLAR").AutoFilter.SORT
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With

    For i = wkbk.Sheets("L6 KODLAR").Range("A2").End(xlDown).Row To 1 Step -1
    
        For j = 2 To wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        
        If Left(wkbk.Sheets("L6 KODLAR").Cells(i, 1).Value, 13) = wkbk.Sheets("L3 KODLAR").Cells(j, 1).Value And wkbk.Sheets("L6 KODLAR").Cells(i, 2).Value = wkbk.Sheets("L3 KODLAR").Cells(j, 2) Then
        
            wkbk.Sheets("L3 KODLAR").Rows(j + 1).EntireRow.Insert
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 1).Value = wkbk.Sheets("L6 KODLAR").Cells(i, 1).Value
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 2).Formula = wkbk.Sheets("L6 KODLAR").Cells(i, 2).Value
            wkbk.Sheets("L3 KODLAR").Cells(j + 1, 3).Value = 4
        GoTo next_iyk
        End If

        Next j
next_iyk:

    Next i
  
wkbk.Sheets("L3 KODLAR").Name = "BÜTÇE TOPLAM"
wkbk.Sheets("BÜTÇE TOPLAM").Select

wkbk.Sheets("L6 KODLAR").Delete
wkbk.Sheets("L4 KODLAR").Delete
wkbk.Sheets("L5 KODLAR").Delete
wkbk.Sheets("L3 KODLAR").Delete
'-----------------------------------GROUPING---------------------------------------

    Dim k, m, n, t, l, c As Long
    Dim lRow As Long
    Dim rng As Range
    Dim cell As Range
    Dim WS As Worksheet
    Dim myValue As Variant
    Set WS = ActiveSheet

    RemoveGrouping

    'A Kolonunda Gruplama bilgisi var
    
    myValue = 3
    
    c = Columns(myValue).Column

    With WS
        lRow = .Cells(.Rows.Count, c).End(xlUp).Row + 1
    End With
    

    l = 4

For j = l To 1 Step -1

For i = 2 To lRow
        Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, c)
        If cell.Value = j Then
            If rng Is Nothing Then
                Set rng = cell
            Else
                Set rng = Union(rng, cell)
            End If
        Else
            If rng Is Nothing Then
                
            Else
                For k = 1 To j - 1 Step 1
                rng.Rows.Group
                Next k
                
                Set rng = Nothing
            End If
        End If
    Next i
Next j

    With Outline
        .AutomaticStyles = False
        .SummaryRow = xlAbove
        .SummaryColumn = xlLeft
    End With

    wkbk.Sheets("BÜTÇE TOPLAM").Cells(1, 1).Select
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(1, 1).AutoFilter
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("1:10").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    ActiveWindow.DisplayGridlines = False
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("A:A").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("A:A").Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("A:A").ColumnWidth = 1.57
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("A:A").VerticalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("B:B").InsertIndent 1
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("B:B").ColumnWidth = 23
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("B:B").VerticalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").InsertIndent 1
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").ColumnWidth = 61
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").VerticalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("C:C").HorizontalAlignment = xlLeft
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("D:D").ColumnWidth = 8
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("D:D").HorizontalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("D:D").VerticalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").ColumnWidth = 8
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").HorizontalAlignment = xlCenter
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").VerticalAlignment = xlCenter
    
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("11:11").RowHeight = 8
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("8:10").RowHeight = 24
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("7:7").RowHeight = 8
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("6:6").RowHeight = 5
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("4:4").RowHeight = 5
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").RowHeight = 20
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("3:3").RowHeight = 28
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("2:2").RowHeight = 30
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("1:1").RowHeight = 10
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B2:E6").Select
    
    With Selection.Interior
        .Pattern = xlSolid
        .Color = RGB(64, 64, 64)
    End With
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B2:E6").Borders(xlDiagonalDown).LineStyle = xlNone
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B2:E6").Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With

    wkbk.Sheets("BÜTÇE TOPLAM").Range("B4:E6").Select
    With Selection.Interior
        .Pattern = xlSolid
        .Color = RGB(79, 79, 79)
    End With
    
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlHairline
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B8:E10").Select
    With Selection.Interior
        .Pattern = xlSolid
        .Color = RGB(64, 64, 64)
    End With
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B2:E6").Borders(xlDiagonalDown).LineStyle = xlNone
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B2:E6").Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B8:E10").Select

    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .ColorIndex = xlAut0omatic
        .TintAndShade = 0
        .Weight = xlHairline
    End With
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B8:C10").Select
    
    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .ColorIndex = 0
        .TintAndShade = 0
        .Weight = xlHairline
    End With
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(2, 2).Select
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(2, 2).Value = FORMAT(Date, "dd" & " " & "mmmm" & " " & "yyyy")
    
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With

    With Selection.Font
        .Name = "Calibri"
        .FontStyle = "Bold"
        .Size = 14
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontMinor
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(3, 2).Select
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(3, 2).Value = FORMAT(Time, "h:mm")
    
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlTop
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With

    With Selection.Font
        .Name = "Calibri"
        .FontStyle = "Bold"
        .Size = 12
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontMinor
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("C2:E2").Select

    Selection.Merge
  
    With Selection.Font
        .Name = "Calibri"
        .Size = 13
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontNone
    End With
    
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = True
    End With

    Selection.Font.Bold = True
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("C3:E3").Select
    
    Selection.Merge
    Selection.Font.Bold = True
    
    With Selection.Font
        .Name = "Calibri"
        .Size = 14
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorLight1
        .TintAndShade = 0
        .ThemeColor = xlThemeColorDark1
    End With
    
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlTop
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = True
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(2, 3).Value = projectname
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(3, 3).Value = rep_month & " GÜNCEL BÜTÇESİ"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 4).Value = "P.BRM"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 5).Value = "SEVİYE"
    
    With wkbk.Sheets("BÜTÇE TOPLAM").Outline
        .AutomaticStyles = False
        .SummaryRow = xlAbove
        .SummaryColumn = xlLeft
    End With
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("B12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("12:" & Rowcount).Select
    Selection.RowHeight = 22
            
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 2).Value = "KOD"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 3).Value = "POZ AÇIKLAMASI"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, 4).Value = "EUR"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, 4).Value = "TRY"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, 4).Value = "USD"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, 3).Value = "GENEL TOPLAM"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, 3).Value = "GENEL TOPLAM"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, 3).Value = "GENEL TOPLAM"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B4:E10").Select
    With Selection.Font
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = 0
    End With
    wkbk.Sheets("BÜTÇE TOPLAM").Range("B5:E10").Font.Bold = True
    wkbk.Sheets("BÜTÇE TOPLAM").Range("C8:C10").HorizontalAlignment = xlRight
    

    wkbk.Sheets("BÜTÇE TOPLAM").Range("B12:E" & Rowcount).Select
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    With Selection.Borders(xlInsideVertical)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlHairline
    End With
    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlHairline
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").Copy
   
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("G:G").Select
    Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks:= _
        False, Transpose:=False
        
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").Delete Shift:=xlToLeft
   
   
    wkbk.Sheets("BÜTÇE TOPLAM").Range("C2:D6").Select
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    wkbk.Sheets("BÜTÇE TOPLAM").Range("D8:D10").Select
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(Range("D12"), Range("D12").End(xlDown)).Select
    
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With

    Range("B" & Rowcount & ":" & Rowcount).Select
    
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .ColorIndex = xlAutomatic
        .TintAndShade = 0
        .Weight = xlMedium
    End With
    
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").ColumnWidth = 1
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    
    Dim Expense_Start_Date, Income_Start_Date, Expense_End_Date, Income_End_Date As Date
    
    Expense_Start_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value
    
    Dim lastcolumn_excel As Integer
    
    lastcolumn_excel = wkbk.Sheets("TOPLAM GİDER").Cells(1, wkbk.Sheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    
    Expense_End_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, lastcolumn_excel).Value
     
    Income_Start_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value
    
    lastcolumn_excel = wkbk.Sheets("TOPLAM GELİR").Cells(1, wks.Columns.Count).End(xlToLeft).Column
    
    Income_End_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, lastcolumn_excel).Value
     
    
    Dim datedifferencemon As Integer
    
    
    datedifferencemon = DateDiff("m", Expense_Start_Date, Expense_End_Date) + 1
    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
  
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:" & ColumnLetter(datedifferencemon + 5, wks)).Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
  
    For i = 1 To datedifferencemon
    
        If i = 1 Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value = Year(Expense_Start_Date)
        Else
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Formula = "=+EDATE(" & ColumnLetter(i + 5 - 1, wks) & "5,1)"
        End If
        
    Next i
    
   Dim ColumnNames_Array_Excel() As String
   Dim u As Integer
   u = 1
   ReDim ColumnNames_Array_Excel(u + 1)
   
   For i = 1 To datedifferencemon
    
        If i = 1 Then ColumnNames_Array_Excel(1) = "F:F"
        
        If i > 1 Then
        
            If (Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value) + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value)) Mod 12 = 0 Then
                ColumnNames_Array_Excel(1 + u) = ColumnLetter(i + 5, wks) & ":" & ColumnLetter(i + 5, wks)
                u = u + 1
                ReDim ColumnNames_Array_Excel(u + 1)
            
            End If
            
        End If
        
    Next i
    
    For i = 1 To UBound(ColumnNames_Array_Excel) - 1
    
    wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    
    Next i
    
    
    
End Function

Sub RemoveGrouping()
    Dim b As Long
    For b = 1 To 8
    On Error Resume Next
    wkbk.Sheets("BÜTÇE TOPLAM").Rows.Ungroup
    Next b
End Sub

Function ColumnLetter(ColumnNumber, sheetstring As Object) As String

Dim wks As Worksheet

Set wks = sheetstring

With wks
'.Select
End With


'Convert To Column Letter
  ColumnLetter = Split(wks.Cells(1, ColumnNumber).Address, "$")(1)
  
End Function

