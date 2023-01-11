Option Base 1



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

GoTo Skip_Last:
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
'Debug.Print Sheets(i).Name
i = i + 1
Next


wkbk.Sheets("TOPLAM GELİR").Tab.Color = RGB(195, 215, 155)
wkbk.Sheets("TOPLAM GİDER").Tab.Color = RGB(150, 54, 52)
wkbk.Sheets("GENEL TOPLAM").Tab.Color = RGB(149, 179, 215)
        
'Debug.Print wkbk.Sheets.Count

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
    Dim cell, start_cell As Range
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
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(2, 2).Value = Format(Date, "dd" & " " & "mmmm" & " " & "yyyy")
    
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
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(3, 2).Value = Format(Time, "h:mm")
    
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
    


'--------------------------------------------FORMAT EXPENSE QTY----------------------------------------------------------
 
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("E:E").ColumnWidth = 1

    For k = 1 To 2
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

    Dim datedifferencemon%

    datedifferencemon = DateDiff("m", Expense_Start_Date, Expense_End_Date) + 1
    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
  
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:" & ColumnLetter(datedifferencemon + 5, wks)).Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
  
    For i = 1 To datedifferencemon
    
        If i = 1 Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value = Expense_Start_Date
        Else
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Formula = "=+EDATE(" & ColumnLetter(i + 5 - 1, wks) & "5,1)"
        End If
        
    Next i
    Next k
      
'--------------------------------------------------------BRING EXPENSE QUANTITY--------------------------------------------------------
    
    If wkbk.Sheets("GİDER MİKTAR").Cells(1, 3).Value = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value Then
    
        Start_column% = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Column
     
    ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value < wkbk.Sheets("GİDER MİKTAR").Cells(1, 3).Value Then
    
        Start_column% = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Column + DateDiff("m", wkbk.Sheets("GİDER MİKTAR").Cells(1, 3).Value, wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value)
     
    End If
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("A12").End(xlDown).Row
    
'-----------------------------------------------------LEVEL 4 EXP QTY---------------------------------------------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column% = ActiveCell.Column

    For i = 12 To Rowcount
    
        If wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = "4" Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+IFERROR(SUMIFS('GİDER MİKTAR'!C:C,'GİDER MİKTAR'!$A:$A,'BÜTÇE TOPLAM'!$B" & i & "),"""")"
        start_row% = i
        GoTo end_loop_start_date
        End If
        
    Next i
    
end_loop_start_date:
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F5").Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(Range(ColumnLetter(Selection.Column, wks) & "5"), ColumnLetter(Selection.Column, wks) & Rowcount).AutoFilter
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Range("$" & ColumnLetter(Selection.Column, wks) & "$5:$" & ColumnLetter(Selection.Column, wks) & "$" & Rowcount).AutoFilter Field:=1, Criteria1:="4"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F" & Rowcount).Select
    Selection.End(xlUp).Select
    rowactive% = Selection.Row
    Selection.Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F" & Selection.Row & ":F" & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:F" & Rowcount).Select
    Selection.Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F5").Select
    Selection.End(xlToRight).Select
    lastcolumn = Selection.Column
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:" & ColumnLetter(columnactive%, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    'Call Expense_Add_Years
    
    colstr = "F12:F" & Rowcount
    fillrange = "F12:" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
'------------------------------------------EXPENSE-------------------------------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Range("F5").Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Start_column = Selection.Column
    
    If Selection.Value = wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value Then
    
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Formula = "=+SUMIFS('TOPLAM GİDER'!E:E,'TOPLAM GİDER'!$A:$A,'BÜTÇE TOPLAM'!$B" & start_row & ",'TOPLAM GİDER'!$C:$C,'BÜTÇE TOPLAM'!$D" & start_row & ")"
        
        ElseIf wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value < Selection.Value Then
        
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Formula = "=+SUMIFS('TOPLAM GİDER'!" & ColumnLetter(5 + DateDiff("m", wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value, wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Value), wks) & ":" & ColumnLetter(5 + columnactive%, wks) & ",'TOPLAM GİDER'!$A:$A,'BÜTÇE TOPLAM'!$B" & start_row & ",'TOPLAM GİDER'!$C:$C,'BÜTÇE TOPLAM'!$D" & start_row & ")"
         
    End If
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Row & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
    colstr = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & start_row & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_column).Select
    wkbk.Sheets("BÜTÇE TOPLAM").ShowAllData

    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column

'---------------------------------------------------SUBTOTALS----------------------------------------------------

    Dim first_formula As Boolean
    
    For j = 1 To 3
    
        first_formula = True
        Set cell = Nothing
        
        For i = Rowcount To 12 Step -1
            
                If first_formula Then
                    

                    If wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = j Then
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+SUBTOTAL(9," & ColumnLetter(Start_column, wks) & i + 1 & ":" & ColumnLetter(Start_column, wks) & Rowcount & ")"
                    Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    first_formula = False
                    End If

                ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = j And Not first_formula Then
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+SUBTOTAL(9," & ColumnLetter(Start_column, wks) & i + 1 & ":" & ColumnLetter(Start_column, wks) & cell.Row - 1 & ")"
                    Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    
                ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value < j Then
                Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    
                End If

        Next i
        
    Next j

    
 '--------------------------------------AUTOFILL COLUMNS----------------------------------------------------------
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_column).Select
    Selection.End(xlToRight).Select
    lastcolumn = Selection.Column
    
    colstr = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & "12" & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount
    fillrange = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & "12" & ":" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    
 '--------------------------------------------FORMAT INCOME QTY COLUMNS----------------------------------------------------------
    
    For k = 1 To 2
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove

    lastcolumn_excel = wkbk.Sheets("TOPLAM GELİR").Cells(1, wkbk.Sheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    
    Income_Start_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value
    Income_End_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, lastcolumn_excel).Value
    
    datedifferencemon = DateDiff("m", Income_Start_Date, Income_End_Date) + 1
    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
  
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:" & ColumnLetter(datedifferencemon + 5, wks)).Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    
    For i = 1 To datedifferencemon
    
        If i = 1 Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value = Income_Start_Date
        Else
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Formula = "=+EDATE(" & ColumnLetter(i + 5 - 1, wks) & "5,1)"
        End If
        
    Next i
    Next k
    
'--------------------------------------------------------BRING INCOME QUANTITY--------------------------------------------------------
    
    If wkbk.Sheets("GELİR MİKTAR").Cells(1, 3).Value = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value Then
    
        Start_column% = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Column
     
    ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value < wkbk.Sheets("GELİR MİKTAR").Cells(1, 3).Value Then
    
        Start_column% = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Column + DateDiff("m", wkbk.Sheets("GELİR MİKTAR").Cells(1, 3).Value, wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value)
     
    End If
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("A12").End(xlDown).Row
        
'-----------------------------------------------------LEVEL 4 INC QTY---------------------------------------------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column
    
    For i = 12 To Rowcount
    
        If wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = "4" Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+IFERROR(SUMIFS('GELİR MİKTAR'!C:C,'GELİR MİKTAR'!$A:$A,'BÜTÇE TOPLAM'!$B" & i & "),"""")"
        start_row = i
        GoTo end_loop_start_date_inc
        End If
        
    Next i
    
end_loop_start_date_inc:

    wkbk.Sheets("BÜTÇE TOPLAM").Range(Range(ColumnLetter(filter_column, wks) & "5"), ColumnLetter(filter_column, wks) & Rowcount).AutoFilter
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Range("$" & ColumnLetter(filter_column, wks) & "$5:$" & ColumnLetter(filter_column, wks) & "$" & Rowcount).AutoFilter Field:=1, Criteria1:="4"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F" & Rowcount).Select
    Selection.End(xlUp).Select
    rowactive% = Selection.Row
    Selection.Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F" & Selection.Row & ":F" & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:F" & Rowcount).Select
    Selection.Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F5").Select
    Selection.End(xlToRight).Select
    lastcolumn = Selection.Column
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:" & ColumnLetter(columnactive%, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    'Call Expense_Add_Years
    
    colstr = "F12:F" & Rowcount
    fillrange = "F12:" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
'------------------------------------------INCOME-------------------------------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Range("F5").Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Start_column = Selection.Column
    
    If Selection.Value = wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value Then
    
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Formula = "=+SUMIFS('TOPLAM GELİR'!G:G,'TOPLAM GELİR'!$A:$A,'BÜTÇE TOPLAM'!$B" & start_row & ",'TOPLAM GELİR'!$E:$E,'BÜTÇE TOPLAM'!$D" & start_row & ")"
        
        ElseIf wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value < Selection.Value Then
        
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Formula = "=+SUMIFS('TOPLAM GELİR'!" & ColumnLetter(7 + DateDiff("m", wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value, wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Value), wks) & ":" & ColumnLetter(5 + columnactive%, wks) & ",'TOPLAM GELİR'!$A:$A,'BÜTÇE TOPLAM'!$B" & start_row & ",'TOPLAM GELİR'!$C:$C,'BÜTÇE TOPLAM'!$D" & start_row & ")"
         
    End If
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Row & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
    colstr = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & start_row & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_column).Select
    wkbk.Sheets("BÜTÇE TOPLAM").ShowAllData

    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column
    
'---------------------------------------------------SUBTOTALS----------------------------------------------------

    For j = 1 To 3
    
        first_formula = True
        Set cell = Nothing
        
        For i = Rowcount To 12 Step -1
            
                If first_formula Then

                    If wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = j Then
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+SUBTOTAL(9," & ColumnLetter(Start_column, wks) & i + 1 & ":" & ColumnLetter(Start_column, wks) & Rowcount & ")"
                    Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    first_formula = False
                    End If

                ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value = j And Not first_formula Then
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column).Formula = "=+SUBTOTAL(9," & ColumnLetter(Start_column, wks) & i + 1 & ":" & ColumnLetter(Start_column, wks) & cell.Row - 1 & ")"
                    Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    
                ElseIf wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, filter_column).Value < j Then
                Set cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, Start_column)
                    
                End If

        Next i
        
    Next j
  
'--------------------------------------AUTOFILL COLUMNS------------------------------------------------------------
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_column).Select
    Selection.End(xlToRight).Select
    lastcolumn = Selection.Column
    
    colstr = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & "12" & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & Rowcount
    fillrange = ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, Start_column).Column, wks) & "12" & ":" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
       
    
'--------------------------------------------FORMAT PROFIT----------------------------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:F").Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove

    Expense_Start_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value
    lastcolumn_excel = wkbk.Sheets("TOPLAM GİDER").Cells(1, wkbk.Sheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    Expense_End_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, lastcolumn_excel).Value
    
    Income_Start_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value
    lastcolumn_excel = wkbk.Sheets("TOPLAM GELİR").Cells(1, wks.Columns.Count).End(xlToLeft).Column
    Income_End_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, lastcolumn_excel).Value

    If Expense_Start_Date < Income_Start_Date Then Income_Start_Date = Expense_Start_Date Else Income_Start_Date = Income_Start_Date
    If Expense_End_Date < Income_End_Date Then Income_End_Date = Expense_End_Date Else Income_End_Date = Income_End_Date
    
    datedifferencemon = DateDiff("m", Income_Start_Date, Income_End_Date) + 1
    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
  
    wkbk.Sheets("BÜTÇE TOPLAM").Columns("F:" & ColumnLetter(datedifferencemon + 5, wks)).Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
  
    For i = 1 To datedifferencemon
    
        If i = 1 Then
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Value = Income_Start_Date
        Else
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, i + 5).Formula = "=+EDATE(" & ColumnLetter(i + 5 - 1, wks) & "5,1)"
        End If
        
    Next i

'--------------------------------------------------------------PROFIT-----------------------------------------------------------------

    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
    Dim Profit_Start_Cell, Profit_End_Cell, Income_Start_Cell, Income_End_Cell, Expense_Start_Cell, Expense_End_Cell, Second_Start_Cell, Second_End_Cell As Range
    Dim Profit_Start_Date, Profit_End_Date, Second_Start_Date, Second_End_Date As Date
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Select
    Profit_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value
    Set Profit_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6)
    Selection.End(xlToRight).Select
    Profit_End_Date = Selection.Value
    Set Profit_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Income_Start_Date = Selection.Value
    Set Income_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_End_Date = Selection.Value
    Set Income_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Expense_Start_Date = Selection.Value
    Set Expense_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Expense_End_Date = Selection.Value
    Set Expense_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    

    start_row = 12

'------------------------------------------PROFIT CALCULATION----------------------------------------------------------------

    If Profit_Start_Date = Income_Start_Date And Profit_Start_Date = Expense_Start_Date Then
 
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, 6).Formula = "=" & ColumnLetter(Income_Start_Cell.Column, wks) & start_row & "-" & ColumnLetter(Expense_Start_Cell.Column, wks) & start_row & ""

    Else
    
        wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, 6).Formula = "=" & ColumnLetter(Income_Start_Cell.Column + DateDiff("m", Income_Start_Date, Profit_Start_Date), wks) & start_row & "-" & ColumnLetter(Expense_Start_Cell.Column + DateDiff("m", Expense_Start_Date, Profit_Start_Date), wks) & start_row & ""
    
    End If
   
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, 6).Copy
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:F" & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
'----------------------------------------------PROFIT FILL COLUMNS--------------------------------------------------------------


    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:F" & Rowcount).Copy
    
    If Profit_End_Date = Income_End_Date And Profit_End_Date = Expense_End_Date Then
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:" & ColumnLetter(Profit_End_Cell.Column, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
    ElseIf Profit_End_Date = Income_End_Date And Profit_End_Date <> Expense_End_Date Then
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:" & ColumnLetter(Profit_End_Cell.Column, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    Second_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Profit_End_Cell.Column - DateDiff("m", Expense_End_Date, Profit_End_Date))
    
    Set Second_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, Profit_End_Cell.Column - DateDiff("m", Expense_End_Date, Profit_End_Date))
    
    Second_Start_Cell.Formula = "=+" & ColumnLetter(Income_Start_Cell.Column + DateDiff("m", Second_Start_Date, Profit_Start_Date), wks) & "12"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, ColumnLetter(Second_Start_Cell.Column, wks)).Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Second_Start_Cell.Column, wks) & "12:" & ColumnLetter(Second_Start_Cell.Column, wks) & Rowcount).Select
    
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False

    ElseIf Profit_End_Date <> Income_End_Date And Profit_End_Date = Expense_End_Date Then
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F12:" & ColumnLetter(Profit_End_Cell.Column, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    Second_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Profit_End_Cell.Column - DateDiff("m", Income_End_Date, Profit_End_Date))
    
    Set Second_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, Profit_End_Cell.Column - DateDiff("m", Income_End_Date, Profit_End_Date))
    
    Second_Start_Cell.Formula = "=-" & ColumnLetter(Expense_Start_Cell.Column + DateDiff("m", Second_Start_Date, Profit_Start_Date), wks) & "12"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("$" & ColumnLetter(filter_column, wks) & "$5:$" & ColumnLetter(filter_column, wks) & "$" & Rowcount).AutoFilter Field:=1, Criteria1:="4"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, ColumnLetter(Second_Start_Cell.Column, wks)).Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Second_Start_Cell.Column, wks) & "12:" & ColumnLetter(Second_Start_Cell.Column, wks) & Rowcount).Select
    
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
            
    End If
    
Skip_Last:

'-------------------------------------------DELETE LATER---------------------------------------------------------------------------------
    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Select
    Profit_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value
    Set Profit_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6)
    Selection.End(xlToRight).Select
    Profit_End_Date = Selection.Value
    Set Profit_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Income_Start_Date = Selection.Value
    Set Income_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_End_Date = Selection.Value
    Set Income_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Selection.End(xlToRight).Select
    Expense_Start_Date = Selection.Value
    Set Expense_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    formatDate$ = "dd.mm.yyyy"
    
    Selection.NumberFormat = formatDate$
    Expense_End_Date = Selection.Value
    
    Set Expense_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    
'--------------------------------------------------------------------------------------------------------------------------------------------------

    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate

    filter_column = ActiveCell.Column
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, Profit_Start_Cell.Column).Formula = "=+SUMIFS(F$12:F$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D8, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, Profit_Start_Cell.Column).Formula = "=+SUMIFS(F$12:F$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D9, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, Profit_Start_Cell.Column).Formula = "=+SUMIFS(F$12:F$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D10, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F8:F10").Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range("F8:" & ColumnLetter(Profit_End_Cell.Column, wks) & "10").Select
    
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False

    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, Income_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Income_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Income_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D8, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, Income_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Income_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Income_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D9, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, Income_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Income_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Income_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D10, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Income_Start_Cell.Column, wks) & "8:" & ColumnLetter(Income_Start_Cell.Column, wks) & "10").Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Income_Start_Cell.Column, wks) & "8:" & ColumnLetter(Income_End_Cell.Column, wks) & "10").Select
    
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
        
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, Expense_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D8, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, Expense_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D9, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, Expense_Start_Cell.Column).Formula = "=+SUMIFS(" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$12:" & ColumnLetter(Expense_Start_Cell.Column, wks) & "$" & Rowcount & ",$D$12:$D$" & Rowcount & ",$D10, $" & ColumnLetter(filter_column, wks) & "12:$" & ColumnLetter(filter_column, wks) & Rowcount & ",""4"")"
    
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Expense_Start_Cell.Column, wks) & "8:" & ColumnLetter(Expense_Start_Cell.Column, wks) & "10").Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(Expense_Start_Cell.Column, wks) & "8:" & ColumnLetter(Expense_End_Cell.Column, wks) & "10").Select
    
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    
    Call Add_Years(Expense_Start_Cell.Column, DateDiff("m", Expense_Start_Date, Expense_End_Date), True)
    
        
        
        
        
        
        
        
        
        
        
        
 End Function
   
Private Function Add_Years(Start_Range_column As Integer, total_months As Integer, sum_total As Boolean)
'--------------------------------------------FORMAT EXPENSE ADD YEAR COLUMNS ----------------------------------------------------------
   Dim wkbk As Workbook 'Deletethis
   Dim wks As Worksheet 'deletethis
   Set wkbk = ThisWorkbook 'deletethis
   
   Dim ColumnNames_Array_Excel() As String
   Dim ColumnYearData() As String
   u% = 1

   ReDim ColumnNames_Array_Excel(u + 1) As String
   ReDim ColumnYearData(u + 1) As String
   
   Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
   For i = 1 To total_months
    
        If i = 1 Then
        
        ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column, wks) & ":" & ColumnLetter(Start_Range_column, wks)
        ColumnYearData(u) = Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column).Value)
        
        ElseIf i > 1 Then
            
            If (Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value)) Mod 12 = 0 Then
                u = u + 1
                ReDim Preserve ColumnYearData(u) As String
                ReDim Preserve ColumnNames_Array_Excel(u) As String
                ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column + i + u, wkbk.Sheets("BÜTÇE TOPLAM")) & ":" & ColumnLetter(Start_Range_column + i + u, wkbk.Sheets("BÜTÇE TOPLAM"))
                ColumnYearData(u) = Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i + 1).Value)
                
            ElseIf i = total_months - 1 And (Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value)) Mod 12 <> 0 Then
                u = u + 1
                ReDim Preserve ColumnYearData(u) As String
                ReDim Preserve ColumnNames_Array_Excel(u) As String
                ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column + i + u - 1 - ((Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value)) Mod 12), wks) & ":" & ColumnLetter(Start_Range_column + i + u - 1 - ((Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value)) Mod 12), wkbk.Sheets("BÜTÇE TOPLAM"))
                ColumnYearData(u) = Year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1))
                
            End If
            
        End If
        
    Next i
    
    
    For i = 1 To (UBound(ColumnNames_Array_Excel))
    
    wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Select
    Selection.Insert Shift:=xlToLeft, CopyOrigin:=xlFormatFromLeftOrAbove
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Value = ColumnYearData(i)
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).NumberFormat = "General"

    Next i
    
    If sum_total Then
    
            For i = 1 To (UBound(ColumnNames_Array_Excel))
            
                    If i < UBound(ColumnNames_Array_Excel) Then
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "8:" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & "8)"
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "9:" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & "9)"
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "10:" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & "10)"
                    
                    
                    Else
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i - 1)).Column).Select
                    Selection.End(xlToRight).Select
                    Selection.End(xlToRight).Select
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(8, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "8:" & ColumnLetter(Selection.Column, wks) & "8)"
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(9, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "9:" & ColumnLetter(Selection.Column, wks) & "9)"
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(10, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "10:" & ColumnLetter(Selection.Column, wks) & "10)"
                    End If
                    
                
            Next i
    
    
    End If
    


    For i = 1 To (UBound(ColumnNames_Array_Excel))
        
        
        If i < UBound(ColumnNames_Array_Excel) Then
        
                    wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks)).Group

        Else
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Select
                    Selection.End(xlToRight).Select
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & ":" & ColumnLetter(Selection.Column, wks)).Group
        End If
    
    Next i
    
    For i = 1 To (UBound(ColumnNames_Array_Excel))
    
        If i < UBound(ColumnNames_Array_Excel) Then
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "12:" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & "12)"
                    
        Else
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i - 1)).Column).Select
                    Selection.End(xlToRight).Select
                    Selection.End(xlToRight).Select
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "12:" & ColumnLetter(Selection.Column, wks) & "12)"
        End If
        
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    colstr = ColumnLetter((wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column), wks) & "12" & ":" & ColumnLetter((wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column), wks) & "12"
    fillrange = ColumnLetter((wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column), wks) & "12" & ":" & ColumnLetter((wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column), wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
        

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

