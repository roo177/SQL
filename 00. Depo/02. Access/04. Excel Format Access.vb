Option Explicit

Option Base 1



Private Sub cmb_up_budget_month_AfterUpdate()

Me.cmb_budget_curr.Value = ""
Me.cmb_budget_curr.Enabled = True


End Sub

Private Sub cmb_up_budget_type_AfterUpdate()

Me.cmb_budget_curr.Value = ""
Me.cmb_up_budget_month.Value = ""

Me.cmb_up_budget_month.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
"FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.cmb_up_pc & "'" & " AND q_Budget_Project_Months.Budget_Type = " & "'" & Me.cmb_up_budget_type & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month;"

Me.cmb_up_budget_month.Enabled = True


End Sub

Private Sub cmb_up_pc_AfterUpdate()

Me.cmb_up_budget_type.Value = ""
Me.cmb_up_budget_month.Value = ""
Me.cmb_budget_curr.Value = ""
Me.cmb_up_budget_type.RowSource = "SELECT q_Budget_Project_Months.Budget_Type FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.cmb_up_pc.Value & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type;"

Me.cmb_up_budget_type.Enabled = True

End Sub

Private Sub cmd_uprice_Click()

    Dim db As dao.Database
    Dim objRPT As Report
    Set db = CurrentDb
    Dim Project_Name As String
    Dim pcode, rep_Month, Budget_Type_Selected As String
    Dim Active_Month As Date
    Dim bln_Lock As Boolean
    
    If IsNull([Forms]![Tech_Office]![cmb_up_pc]) Or Me.cmb_up_pc.Value = "" Then
    
        MsgBox "Lütfen proje seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
        End
   
    ElseIf IsNull(cmb_up_budget_type) Or Me.cmb_up_budget_type.Value = "" Then
                   MsgBox "Lütfen bütçe tipini seçiniz. " & vbLf & _
                   "Proje orjinal kurları için " & """" & "ORJ" & _
                   """" & " seçeneğini seçiniz.", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
    ElseIf IsNull(cmb_up_budget_month) Or Me.cmb_up_budget_month.Value = "" Then
                   MsgBox "Lütfen bütçe tarihi seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
    ElseIf IsNull(cmb_budget_curr) Or Me.cmb_budget_curr.Value = "" Then
                   MsgBox "Lütfen para birimi seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
                   
    End If
    
    pcode = Me.cmb_up_pc
    rep_Month = Me.cmb_up_budget_month
    Active_Month = DLookup("[rep_Month_Date]", "[t_Rep_Month]", "[rep_Month] = " & """" & Me.cmb_up_budget_month & """")
    
    Budget_Type_Selected = Me.cmb_up_budget_type
    
    Select Case Budget_Type_Selected
    
        Case "GÜNCEL"
        budget_type_str = "CB"
        budget_type_str_qty_Mon = "CB"
        Budget_Type = "GÜNCEL"
        
        Case "BAZ"
        budget_type_str = "BB"
        budget_type_str_qty_Mon = "Base"
        Budget_Type = "BAZ"
        
    End Select

    Select Case Me.cmb_budget_curr
        
        Case "ORJ"
        budget_curr = "t_" & budget_type_str & "_Profit_Total_ST"

        Case "USD"
        budget_curr = "t_" & budget_type_str & "_Profit_USD_ST"
        
        Case "EUR"
        budget_curr = "t_" & budget_type_str & "_Profit_EUR_ST"
        
        Case "TRY"
        budget_curr = "t_" & budget_type_str & "_Profit_TRY_ST"
        
    End Select
    
    Report_Type_Tech_Office = True
    
        Call CB_AllProjects_Report_UP_Data(pcode, rep_Month, Active_Month, budget_curr, budget_type_str, budget_type_str_qty_Mon)
        DoCmd.Minimize
        
        DoCmd.OpenReport "r_Project_UP_List", acViewReport
    
        Set objRPT = Reports("r_Project_UP_List")
        objRPT.Caption = Me.cmb_up_pc & " KALAN GİDER KALEMLERİ - " & Me.cmb_up_budget_month & " - " & cmb_up_budget_type
        Caption_Str = Me.cmb_up_pc & " KALAN GİDER KALEMLERİ - " & Me.cmb_up_budget_month & " - " & cmb_up_budget_type
        
        DoCmd.SelectObject acReport, "r_Project_UP_List"
        DoCmd.Maximize
                
                
End Sub

Private Sub cmdExit_Click()

            DoCmd.Close
            DoCmd.OpenForm "Main_Menu"

End Sub

Private Sub Combo1017_AfterUpdate()


Me.Combo1018.Value = ""
Me.Combo1019.Value = ""

Me.Combo1018.RowSource = "SELECT q_Budget_Project_Months.Budget_Type FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo1017.Value & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type;"

Me.Combo1018.Enabled = True

End Sub

Private Sub Combo1018_AfterUpdate()


Me.Combo1019.Value = ""

Me.Combo1019.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
"FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo1017 & "'" & " AND q_Budget_Project_Months.Budget_Type = " & "'" & Me.Combo1018 & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month;"

Me.Combo1019.Enabled = True



End Sub

Private Sub Combo628_AfterUpdate()

If Me.Combo628.Value = "GÜNCEL" Then

    Me.Combo631.Value = ""
    Me.Combo631.Enabled = False
    
Else

    
    Me.Combo631.RowSource = "SELECT q_Budget_Project_Months.PC " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo628 & "'" & ")) " & _
         ""
    Me.Combo631.Enabled = True
    
End If


End Sub

Private Sub Combo633_AfterUpdate()

If Me.Combo633.Value = "GÜNCEL" Then

    Me.Combo634.Value = ""
    Me.Combo634.Enabled = False
    
Else

    
    Me.Combo634.RowSource = "SELECT q_Budget_Project_Months.PC " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo633 & "'" & ")) " & _
         ""
    Me.Combo634.Enabled = True
    
End If





End Sub

Private Sub Combo635_AfterUpdate()

If Me.Combo635.Value = "GÜNCEL" Then

    Me.Combo636.Value = ""
    Me.Combo636.Enabled = False
    
Else

    
    Me.Combo636.RowSource = "SELECT q_Budget_Project_Months.PC " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo635 & "'" & ")) " & _
         ""
    Me.Combo636.Enabled = True
    
End If





End Sub

Private Sub Combo643_AfterUpdate()


If Me.Combo643.Value = "GÜNCEL" Then

    Me.Combo645.Value = ""
    Me.Combo645.Enabled = False
    Me.Combo649.Value = ""
    
    Me.Combo649.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE ((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo643 & "'" & ") " & _
         " GROUP BY q_Budget_Project_Months.rep_Month "
    
    Me.Combo649.Enabled = True
    
    
Else

    Me.Combo649.Value = ""
    Me.Combo645.RowSource = "SELECT q_Budget_Project_Months.PC " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo643 & "'" & ")) " & _
         ""
    Me.Combo645.Enabled = True
    
End If



End Sub

Private Sub Combo645_AfterUpdate()

Me.Combo649.Value = ""
Me.Combo649.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.PC)=" & "'" & Me.Combo645 & "'" & ") " & _
         "AND ((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo643 & "'" & ")) " & _
         ""

Me.Combo649.Enabled = True

End Sub

Private Sub Combo653_AfterUpdate()


Me.Combo654.Value = ""
Me.Combo655.Value = ""
Me.Combo656.Value = ""
Me.Combo654.RowSource = "SELECT q_Budget_Project_Months.Budget_Type FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo653.Value & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type;"

Me.Combo654.Enabled = True



End Sub

Private Sub Combo654_AfterUpdate()

Me.Combo655.Value = ""
Me.Combo656.Value = ""

Me.Combo655.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
"FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo653 & "'" & " AND q_Budget_Project_Months.Budget_Type = " & "'" & Me.Combo654 & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month;"

Me.Combo655.Enabled = True

End Sub

Private Sub Combo655_AfterUpdate()

Me.Combo656.Value = ""
Me.Combo656.Enabled = True


End Sub

Private Sub Combo658_AfterUpdate()

Me.Combo659.Value = ""
Me.Combo660.Value = ""
Me.Combo661.Value = ""
Me.Combo659.RowSource = "SELECT q_Budget_Project_Months.Budget_Type FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo658.Value & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type;"

Me.Combo659.Enabled = True

End Sub

Private Sub Combo659_AfterUpdate()

Me.Combo660.Value = ""
Me.Combo661.Value = ""

Me.Combo660.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
"FROM q_Budget_Project_Months where q_Budget_Project_Months.PC =" & "'" & Me.Combo658 & "'" & " AND q_Budget_Project_Months.Budget_Type = " & "'" & Me.Combo659 & "'" & _
"GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month;"

Me.Combo660.Enabled = True

End Sub

Private Sub Combo660_AfterUpdate()

Me.Combo661.Value = ""
Me.Combo661.Enabled = True

End Sub

Private Sub Combo663_AfterUpdate()

Me.Combo662.Value = ""
Me.Combo662.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.PC)=" & "'" & Me.Combo663 & "'" & ") " & _
         "AND ((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo664 & "'" & ")) " & _
         ""

Me.Combo662.Enabled = True


End Sub

Private Sub Combo664_AfterUpdate()

If Me.Combo664.Value = "GÜNCEL" Then

    Me.Combo663.Value = ""
    Me.Combo663.Enabled = False
    Me.Combo662.Value = ""
    Me.Combo662.Enabled = False
    
Else

    
    Me.Combo663.RowSource = "SELECT q_Budget_Project_Months.PC " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.Budget_Type)=" & "'" & Me.Combo664 & "'" & ")) " & _
         ""
    Me.Combo663.Enabled = True
    
End If

End Sub

Private Sub Combo667_AfterUpdate()

Me.Combo666.Value = ""
Me.Combo666.RowSource = "SELECT q_Budget_Project_Months.rep_Month " & _
         "FROM q_Budget_Project_Months " & _
         "WHERE (((q_Budget_Project_Months.PC)=" & "'" & Me.Combo667 & "'" & ") " & _
         "AND ((q_Budget_Project_Months.Budget_Type)=" & "'GÜNCEL'" & ")) " & _
         ""
Me.Combo666.Enabled = True


End Sub

Private Sub Command1006_Click()

DoCmd.Minimize
DoCmd.OpenForm "f_Budget_Months"


End Sub

Private Sub Command1010_Click()

DoCmd.Minimize
DoCmd.OpenForm "f_Coeff"


End Sub

Private Sub Command1011_Click()

    On Error Resume Next
    DoCmd.SetWarnings False
    DoCmd.DeleteObject acQuery, "q_Export_Index_Rates"
    DoCmd.DeleteObject acQuery, "q_Export_Inc_WBS"
    DoCmd.DeleteObject acQuery, "q_Export_Inc_Qty"
    DoCmd.DeleteObject acQuery, "q_Export_Inc_Esc_Rates_Pcode"
    DoCmd.DeleteObject acQuery, "q_Export_Inc_Esc_Rates_L6code"
    DoCmd.DeleteObject acQuery, "q_Export_R4"
    DoCmd.DeleteObject acQuery, "q_Export_Exp_Analysis"
    DoCmd.DeleteObject acQuery, "q_Export_Exp_RES_UP"
    DoCmd.DeleteObject acQuery, "q_Export_Exp_Qty"
    DoCmd.DeleteObject acQuery, "q_Export_Exp_L6_Esc_Rates"
    DoCmd.DeleteObject acQuery, "q_Export_Exp_Act_Exp"
    DoCmd.SetWarnings True
    On Error GoTo Trap
    
    Dim xlapp As Object, wkbk As Object
    Dim file$
    Dim formatCur$, formatDate$, intColor&, colsCurrency$, colsDate$, fnExportToWorkbook, formatPers$, months$
    Dim arrayCols() As String, col$, n%, i%, w!
    Dim cell As Range
    Dim msg$
    Dim RowRange As Integer
    Dim Curr_Month As Date
    Dim Result
    Dim ColumnNames_Array() As String
    Dim collsColumnNames$
    Dim j, k, t As Integer
    Dim lastcolumn, Rowcount As Long
    Dim colstr, fillrange As String
    Dim fillranged, SourceRange As Range
    Dim wks As Worksheet
    Dim Record_Number As Integer
    
    Dim strPath, strProject, DirFile, newSQL, strSql, report_name, Report_Date, Report_Type, prjname As String
    Dim curr_date As Date
    Dim qdf_Budget_Export As dao.QueryDef
    Dim db As dao.Database
    Set db = CurrentDb
    report_name = Me.Combo1017 & " - " & Me.Combo1018 & " - " & Me.Combo1019

    strPath = CreateObject("WScript.Shell").SpecialFolders("MyDocuments")
    curr_date = Format(Date, "yyyy-mm-dd")
    strProject = report_name & " - " & curr_date
    DirFile = strPath & "/" & strProject & ".xls"
    
    formatDate$ = "yyyy-mmmm"
    
    Curr_Month = DLookup("[rep_month_date]", "t_rep_month", "[rep_month] =" & "'" & Forms!Tech_Office!Combo1019 & "'")
    prjname = DLookup("[r03_S_Name]", "t_001_Projects", "[p_Code] =" & "'" & Forms!Tech_Office!Combo1017 & "'")

'GoTo skip_

    If Len(Dir(DirFile)) <> 0 Then
    
        SetAttr DirFile, vbNormal
        Kill DirFile
        
    End If
        
        
'-------------------------------------- INDEXES AND CURR RATES -----------------------------------------------
       
        strSql = "SELECT t_CB_Indexes_Imported.cb_month " & _
                 ",t_CB_Indexes_Imported.cb_ufe " & _
                 ",t_CB_Indexes_Imported.cb_tufe " & _
                 ",t_CB_Indexes_Imported.cb_Inf_usd " & _
                 ",t_CB_Indexes_Imported.cb_Inf_eur " & _
                 ",t_CB_Indexes_Imported.cb_metal " & _
                 ",t_CB_Indexes_Imported.cb_electricity " & _
                 ",t_CB_Indexes_Imported.cb_cement " & _
                 ",t_CB_Indexes_Imported.cb_petrol " & _
                 ",t_CB_Indexes_Imported.cb_usdtry " & _
                 ",t_CB_Indexes_Imported.cb_eurtry " & _
                 "FROM t_CB_Indexes_Imported " & _
                 "WHERE (((t_CB_Indexes_Imported.rep_month)=Forms!Tech_Office!Combo1019)) " & _
                 ""
   
        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Index_Rates", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Index_Rates", strPath & "/" & strProject & ".xls", True
        
'------------------------------------------------------- INC WBS -----------------------------------------------
        strSql = "SELECT C6_Code.Code_L6 " & _
                 ",C6_Code.Desc_TR_L6 " & _
                 ",t_CB_Inc_WBS.Unit " & _
                 ",t_CB_Inc_WBS.UP " & _
                 ",t_CB_Inc_WBS.Currency " & _
                 "FROM t_CB_Inc_WBS " & _
                 "LEFT JOIN C6_Code ON (t_CB_Inc_WBS.c_L1 = C6_Code.c_L1) " & _
                 "AND (t_CB_Inc_WBS.c_L2 = C6_Code.c_L2) " & _
                 "AND (t_CB_Inc_WBS.c_L3 = C6_Code.c_L3) " & _
                 "AND (t_CB_Inc_WBS.c_L4 = C6_Code.c_L4) " & _
                 "AND (t_CB_Inc_WBS.c_L5 = C6_Code.c_L5) " & _
                 "AND (t_CB_Inc_WBS.c_L6 = C6_Code.c_L6) " & _
                "WHERE (((t_CB_Inc_WBS.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
                "AND ((t_CB_Inc_WBS.P01_Code)=" & "'" & Me.Combo1017 & "'" & ")) " & _
                 "ORDER BY C6_Code.Code_L6"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Inc_WBS", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Inc_WBS", strPath & "/" & strProject & ".xls", True
        
'------------------------------------------------------- INC QTY -----------------------------------------------

strSql = "TRANSFORM Sum(t_CB_Inc_Qty.Inc_Base_Qty) AS Inc_Base_Qty " & _
         "SELECT [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6] AS L_Comb " & _
         ",C6_Code.Desc_TR_L6 " & _
         "FROM t_CB_Inc_Qty " & _
         "LEFT JOIN C6_Code ON (t_CB_Inc_Qty.L_1 = C6_Code.c_L1) " & _
         "AND (t_CB_Inc_Qty.L_2 = C6_Code.c_L2) " & _
         "AND (t_CB_Inc_Qty.L_3 = C6_Code.c_L3) " & _
         "AND (t_CB_Inc_Qty.L_4 = C6_Code.c_L4) " & _
         "AND (t_CB_Inc_Qty.L_5 = C6_Code.c_L5) " & _
         "AND (t_CB_Inc_Qty.L_6 = C6_Code.c_L6) " & _
         "WHERE t_CB_Inc_Qty.rep_Month=" & "'" & Me.Combo1019 & "'" & " " & _
         "AND t_CB_Inc_Qty.PC=" & "'" & Me.Combo1017 & "'" & " " & _
         "GROUP BY [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6] " & _
         ",C6_Code.Desc_TR_L6 " & _
         ",t_CB_Inc_Qty.rep_Month " & _
         ",t_CB_Inc_Qty.PC PIVOT t_CB_Inc_Qty.Inc_Base_Mon"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Inc_Qty", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Inc_Qty", strPath & "/" & strProject & ".xls", True
        
'------------------------------------------------------- INC ESC RATES PCODE -----------------------------------------------

Record_Number = DCount("[rep_Month]", "t_CB_Inc_Esc_Rates_Pcode", "[rep_Month] =" & "'" & Me.Combo1019 & "'" & "")

If Record_Number > 0 Then

strSql = "TRANSFORM Sum(t_CB_Inc_Esc_Rates_Pcode.Inc_Rate_Pcode)+1 AS Inc_Rate_Pcode " & _
         "SELECT t_CB_Inc_Esc_Rates_Pcode.P01_Code " & _
         "FROM t_CB_Inc_Esc_Rates_Pcode " & _
         "WHERE t_CB_Inc_Esc_Rates_Pcode.rep_Month=" & "'" & Me.Combo1019 & "'" & " " & _
         "AND t_CB_Inc_Esc_Rates_Pcode.P01_Code=" & "'" & Me.Combo1017 & "'" & " " & _
         "GROUP BY t_CB_Inc_Esc_Rates_Pcode.rep_Month " & _
         ",t_CB_Inc_Esc_Rates_Pcode.P01_Code PIVOT t_CB_Inc_Esc_Rates_Pcode.Month"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Inc_Esc_Rates_Pcode", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Inc_Esc_Rates_Pcode", strPath & "/" & strProject & ".xls", True

Else

'------------------------------------------------------- INC ESC RATES L6 Code -----------------------------------------------

strSql = "TRANSFORM Sum(t_CB_Inc_Esc_Rates_L6.Inc_Rate) AS Inc_Rate_L6 " & _
         "SELECT [c_L1] + '.' + [c_L2] + '.' + [c_L3] + '.' + [c_L4] + '.' + [c_L5] + '.' + [c_L6] AS L_Comb " & _
         "FROM t_CB_Inc_Esc_Rates_L6 " & _
         "GROUP BY [c_L1] + '.' + [c_L2] + '.' + [c_L3] + '.' + [c_L4] + '.' + [c_L5] + '.' + [c_L6] PIVOT t_CB_Inc_Esc_Rates_L6.Month"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Inc_Esc_Rates_L6code", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Inc_Esc_Rates_L6code", strPath & "/" & strProject & ".xls", True
       
End If

'------------------------------------------------------- R4 Codes --------------------------------------------------------------

strSql = "SELECT t_CB_Analysis.Key_R4_Simple " & _
         ",R_4_Desc_TR " & _
         ",R4_Code.Unit " & _
         ",R4_Code.Currency " & _
         ",R4_Code.w_UFE " & _
         ",R4_Code.w_TUFE " & _
         ",R4_Code.w_INF_USD " & _
         ",R4_Code.w_INF_EUR " & _
         ",R4_Code.w_Metal " & _
         ",R4_Code.w_Petrol " & _
         ",R4_Code.w_Cement " & _
         ",R4_Code.w_Electricity "
strSql = strSql & "FROM t_CB_Analysis " & _
         "LEFT JOIN R4_Code ON t_CB_Analysis.Key_R4_Simple = R4_Code.Key_R4_Simple " & _
         "GROUP BY t_CB_Analysis.Key_R4_Simple " & _
         ",R_4_Desc_TR " & _
         ",R4_Code.Unit " & _
         ",R4_Code.Currency " & _
         ",R4_Code.w_UFE " & _
         ",R4_Code.w_TUFE " & _
         ",R4_Code.w_INF_USD " & _
         ",R4_Code.w_INF_EUR " & _
         ",R4_Code.w_Metal " & _
         ",R4_Code.w_Petrol " & _
         ",R4_Code.w_Cement " & _
         ",R4_Code.w_Electricity " & _
         ",t_CB_Analysis.P01_Code"
strSql = strSql & ",t_CB_Analysis.rep_Month " & _
         "HAVING (((t_CB_Analysis.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_CB_Analysis.P01_Code)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         ""
        
        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_R4", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_R4", strPath & "/" & strProject & ".xls", True
        
'------------------------------------------------------- Exp RES UP --------------------------------------------------------------

strSql = "SELECT t_CB_Res_UP.Key_R4_Simple " & _
         ",t_CB_Res_UP.up_Cost " & _
         ",t_CB_Res_UP.Price_Month " & _
         "FROM t_CB_Res_UP " & _
         "GROUP BY t_CB_Res_UP.Key_R4_Simple " & _
         ",t_CB_Res_UP.up_Cost " & _
         ",t_CB_Res_UP.Price_Month " & _
         ",t_CB_Res_UP.rep_Month " & _
         ",t_CB_Res_UP.up_pr_Code " & _
         "HAVING (((t_CB_Res_UP.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_CB_Res_UP.up_pr_Code)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         ""

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Exp_RES_UP", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Exp_RES_UP", strPath & "/" & strProject & ".xls", True
        
'------------------------------------------------------- Exp Analysis --------------------------------------------------------------

strSql = "SELECT t_CB_Analysis.L_Comb " & _
         ",C6_Code.Desc_TR_L6 " & _
         ",t_CB_Analysis.Key_R4_Simple " & _
         ",R4_Code.R_4_Desc_EN " & _
         ",t_CB_Analysis.r_loss " & _
         ",t_CB_Analysis.An_rs_quantity " & _
         "FROM (t_CB_Analysis " & _
         "LEFT JOIN C6_Code ON (t_CB_Analysis.L_1 = C6_Code.c_L1) " & _
         "AND (t_CB_Analysis.L_2 = C6_Code.c_L2) " & _
         "AND (t_CB_Analysis.L_3 = C6_Code.c_L3) " & _
         "AND (t_CB_Analysis.L_4 = C6_Code.c_L4) " & _
         "AND (t_CB_Analysis.L_5 = C6_Code.c_L5) " & _
         "AND (t_CB_Analysis.L_6 = C6_Code.c_L6)) " & _
         "LEFT JOIN R4_Code ON t_CB_Analysis.Key_R4_Simple = R4_Code.Key_R4_Simple " & _
         "WHERE (((t_CB_Analysis.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_CB_Analysis.P01_Code)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         ""
        
        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Exp_Analysis", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Exp_Analysis", strPath & "/" & strProject & ".xls", True

'------------------------------------------------------- Exp Esc Rates --------------------------------------------------------------

strSql = "TRANSFORM Sum(t_CB_Exp_Esc_Rates_L6.Exp_Rate) AS Exp_Rate " & _
         "SELECT Right([Key_R_PC_L6],17) AS L_Comb " & _
         "FROM t_CB_Exp_Esc_Rates_L6 " & _
         "WHERE (((t_CB_Exp_Esc_Rates_L6.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_CB_Exp_Esc_Rates_L6.P01_Code)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         "GROUP BY Right([Key_R_PC_L6],17) " & _
         ",t_CB_Exp_Esc_Rates_L6.rep_Month " & _
         ",t_CB_Exp_Esc_Rates_L6.P01_Code " & _
         "ORDER BY Right([Key_R_PC_L6],17) PIVOT t_CB_Exp_Esc_Rates_L6.Month"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Exp_L6_Esc_Rates", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Exp_L6_Esc_Rates", strPath & "/" & strProject & ".xls", True

'------------------------------------------------------- Exp Qty --------------------------------------------------------------

strSql = "TRANSFORM Sum(t_CB_Qty.Exp_CB_Qty) AS SumOfExp_CB_Qty " & _
         "SELECT Right([Key_R_PC_L6],17) AS L_Comb " & _
         ",C6_Code.Desc_TR_L6 " & _
         "FROM t_CB_Qty " & _
         "LEFT JOIN C6_Code ON (t_CB_Qty.L_6 = C6_Code.c_L6) " & _
         "AND (t_CB_Qty.L_5 = C6_Code.c_L5) " & _
         "AND (t_CB_Qty.L_4 = C6_Code.c_L4) " & _
         "AND (t_CB_Qty.L_3 = C6_Code.c_L3) " & _
         "AND (t_CB_Qty.L_2 = C6_Code.c_L2) " & _
         "AND (t_CB_Qty.L_1 = C6_Code.c_L1) " & _
         "WHERE (((t_CB_Qty.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_CB_Qty.PC)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         "GROUP BY Right([Key_R_PC_L6],17) " & _
         ",C6_Code.Desc_TR_L6 " & _
         "ORDER BY Right([Key_R_PC_L6],17) PIVOT t_CB_Qty.Exp_CB_Mon"


        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Exp_Qty", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Exp_Qty", strPath & "/" & strProject & ".xls", True


'------------------------------------------------------- Exp Actual Expense --------------------------------------------------------------

strSql = "TRANSFORM Sum(t_AC_Exp.Exp_AC_Exp) AS Exp_AC_Exp " & _
         "SELECT Right([Key_R_PC_L6],17) AS L_Comb " & _
         ",C6_Code.Desc_TR_L6 " & _
         ",t_AC_Exp.up_Curr " & _
         "FROM t_AC_Exp " & _
         "LEFT JOIN C6_Code ON (t_AC_Exp.L_1 = C6_Code.c_L1) " & _
         "AND (t_AC_Exp.L_2 = C6_Code.c_L2) " & _
         "AND (t_AC_Exp.L_3 = C6_Code.c_L3) " & _
         "AND (t_AC_Exp.L_4 = C6_Code.c_L4) " & _
         "AND (t_AC_Exp.L_5 = C6_Code.c_L5) " & _
         "AND (t_AC_Exp.L_6 = C6_Code.c_L6) " & _
         "WHERE (((t_AC_Exp.rep_Month)=" & "'" & Me.Combo1019 & "'" & ") " & _
         "AND ((t_AC_Exp.PC)=" & "'" & Me.Combo1017 & "'" & ")) " & _
         "GROUP BY Right([Key_R_PC_L6],17) " & _
         ",t_AC_Exp.up_Curr " & _
         ",t_AC_Exp.rep_Month " & _
         ",t_AC_Exp.PC " & _
         ",C6_Code.Desc_TR_L6 " & _
         "ORDER BY Right([Key_R_PC_L6],17) PIVOT t_AC_Exp.Exp_AC_Mon"

        Set qdf_Budget_Export = db.CreateQueryDef("q_Export_Exp_Act_Exp", strSql)
        DoCmd.TransferSpreadsheet acExport, 10, "q_Export_Exp_Act_Exp", strPath & "/" & strProject & ".xls", True



'---------------------------------------------OPEN EXCEL--------------------------------------------------------------------------
        
        
        DoCmd.Minimize
        DoCmd.OpenForm "f_Loading_Screen_Excel_Export"
        MsgBox ("Excel bütçe kurarken lütfen müdahalede bulunmayınız")

        Set xlapp = CreateObject("Excel.Application")
        'xlApp.Workbooks.Open (strPath & "/" & strProject & ".xls")
        Set wkbk = xlapp.Workbooks.Open(strPath & "/" & strProject & ".xls")
        'Call WaitFor_Func(2)
        
        xlapp.Visible = True
        xlapp.WindowState = xlMaximized
        xlapp.DisplayAlerts = False


'--------------------------------------------- INC WBS FORMAT -----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(2)
        With wks
            .Select
            .Name = "GELİR B.FİYAT"
        End With

        Set wks = wkbk.Worksheets("GELİR B.FİYAT")
        wks.Select
        
        ' Currency columns
            formatCur$ = "#,##0.00"
            colsCurrency$ = "D:D"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Currency columns
            colsCurrency$ = "A:A,C:C,E:E"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter

                End With
            Next i
            
        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            intColor& = RGB(5, 79, 125)
            n% = wks.Cells(1, 1).End(xlToRight).Column
            collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI,BİRİM,BİRİM FİYAT,PARA BİRİMİ"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            For i% = 1 To n%
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = ColumnNames_Array(i - 1)
                    
                End With
            Next i%
                        
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        
        End With
        msg$ = vbNullString
        
'--------------------------------------------- INC QTY FORMAT-----------------------------------------------
 
        ' Format worksheet
        Set wks = wkbk.Worksheets(3)
        With wks
            .Select
            .Name = "GELİR MİKTAR"
        End With

        Set wks = wkbk.Worksheets("GELİR MİKTAR")
        wks.Select
        
        lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
       
        ' Currency columns
            formatCur$ = "#,##0.00"
            'For i = 3 To lastcolumn
                'With wks.Columns(i)
                '.HorizontalAlignment = xlRight
                '.NumberFormat = formatCur$
                'End With
            'Next i
          Rowcount = wks.Range("A1").End(xlDown).Row
          wks.Rows("2:" & Rowcount).NumberFormat = formatCur$
            
        ' Currency columns
            colsCurrency$ = "A:A"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter

                End With
            Next i
            
        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            intColor& = RGB(5, 79, 125)
            collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI"
            
            For i% = 1 To 2
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = ColumnNames_Array(i - 1)
                    
                End With
            Next i%

            For i% = 3 To lastcolumn
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    .NumberFormat = formatDate$
                End With
            Next
         
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
        

'--------------------------------------------- INC ESC RATES PCODE-----------------------------------------------


If Record_Number > 0 Then
        ' Format worksheet
        Set wks = wkbk.Worksheets(4)
        With wks
            .Select
            .Name = "GELİR ESK. PROJE"

        End With
        

        Set wks = wkbk.Worksheets("GELİR ESK. PROJE")
        wks.Select
        wks.Columns(1).Delete
        lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
        
        ' Currency columns
            formatCur$ = "#,##0.000000"
            For i = 1 To lastcolumn
                With wks.Columns(i)
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
   

            
            intColor& = RGB(5, 79, 125)
                      
            For i% = 1 To lastcolumn
            
                With wks.Cells(1, i%)
                
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    
                End With
            
            Next
            
        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
        
        With xlapp.ActiveWindow
        
        wks.Range("A2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
        
 '--------------------------------------------- INC ESC RATES L6CODE -----------------------------------------------
Else

        ' Format worksheet
        Set wks = wkbk.Worksheets(4)
        With wks
            .Select
            .Name = "GELİR ESK. POZ"
        End With
        

        Set wks = wkbk.Worksheets("GELİR ESK. POZ")
        wks.Select

        
        lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
        
        ' Currency columns
            formatCur$ = "#,##0.000000"
            For i = 2 To lastcolumn
                With wks.Columns(i)
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
            
                collsColumnNames$ = "L6 KOD"
                With wks.Cells(1, 1)
                .Value = collsColumnNames$
                .Interior.Color = intColor&
                .Font.Bold = True
                .Font.Color = RGB(255, 255, 255)
                End With
                
                With wks.Columns(1)
                .HorizontalAlignment = xlCenter
                End With

            intColor& = RGB(5, 79, 125)
                      
            For i% = 2 To lastcolumn
                With wks.Cells(1, i%)
                
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    
                End With
                
            Next

                
        ' Column width adjustments
        
            With wks.Cells
            
            .Select
            .EntireColumn.AutoFit
            
            End With
                                    
                        
        
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
              
End If


'-------------------------------------- INCOME UNIT PRICE FORMAT ------------------------------------------------------
If Record_Number > 0 Then


        ' Format worksheet
        Set wks = wkbk.Worksheets("GELİR B.FİYAT")
        With wks
            .Select
        End With
        

        Set wks = wkbk.Worksheets("GELİR B.FİYAT")
        wks.Select
        
        lastcolumn = wkbk.Worksheets("GELİR MİKTAR").Cells(1, wkbk.Worksheets("GELİR MİKTAR").Columns.Count).End(xlToLeft).Column
        
            formatCur$ = "#,##0.00"
            For i = 6 To lastcolumn + 3
                With wks.Columns(i)
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
            
            intColor& = RGB(5, 79, 125)
            
                i = 6
                With wks.Cells(1, 6)
                    .Formula = "=" & "'" & "GELİR MİKTAR" & "'" & "!" & ColumnLetter(i - 3, wks) & 1 & ""
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                End With
                
            lastcolumn = wkbk.Worksheets("GELİR MİKTAR").Cells(1, wkbk.Worksheets("GELİR MİKTAR").Columns.Count).End(xlToLeft).Column - 2 + 5
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = ColumnLetter(i, wks) & "1:" & ColumnLetter(i, wks) & "1"
            fillrange = ColumnLetter(i, wks) & "1:" & ColumnLetter(lastcolumn, wks) & "1"
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
    
                
        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With

                With wks.Cells(2, 6)
                i = 6
                    .Formula = "=IF(XLOOKUP($A2,'GELİR MİKTAR'!$A:$A,'GELİR MİKTAR'!" & ColumnLetter(i - 3, wks) & ":" & ColumnLetter(i - 3, wks) & ","""",0)<>"""" , $D2*HLOOKUP('GELİR B.FİYAT'!" & ColumnLetter(i, wks) & "$1,'GELİR ESK. PROJE'!$1:$2,2,1),"""") "
                     'w! = .EntireColumn.ColumnWidth
                    '.EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlRight
                    .NumberFormat = formatCur$
                    
                End With
                
            lastcolumn = wkbk.Worksheets("GELİR B.FİYAT").Cells(1, wkbk.Worksheets("GELİR B.FİYAT").Columns.Count).End(xlToLeft).Column
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(lastcolumn, wks) & "2"
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            
            For i = 6 To lastcolumn
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            Next i
            
            
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
       
Else


        ' Format worksheet
        Set wks = wkbk.Worksheets("GELİR B.FİYAT")
        With wks
            .Select
        End With
        

        Set wks = wkbk.Worksheets("GELİR B.FİYAT")
        wks.Select
        
        lastcolumn = wkbk.Worksheets("GELİR MİKTAR").Cells(1, wkbk.Worksheets("GELİR MİKTAR").Columns.Count).End(xlToLeft).Column
        
            formatCur$ = "#,##0.00"
            For i = 6 To lastcolumn + 3
                With wks.Columns(i)
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
            
            intColor& = RGB(5, 79, 125)
            For i = 6 To lastcolumn + 3
                With wks.Cells(1, i)
                    .Formula = "=" & "'" & "GELİR MİKTAR" & "'" & "!" & ColumnLetter(i - 3, wks) & 1 & ""
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                End With
                
        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            Next i
            
                lastcolumn = wkbk.Worksheets("GELİR ESK. POZ").Cells(1, wkbk.Worksheets("GELİR ESK. POZ").Columns.Count).End(xlToLeft).Column + 1
                
                Rowcount = wkbk.Worksheets("GELİR ESK. POZ").Range("A1").End(xlDown).Row + 1
                 
                With wks.Cells(2, 6)
                i = 6
                    .Formula = "=IF(XLOOKUP($A2,'GELİR MİKTAR'!$A:$A,'GELİR MİKTAR'!" & ColumnLetter(i - 3, wks) & ":" & ColumnLetter(i - 3, wks) & ","""",0)<>"""" , $D2*INDEX('GELİR ESK. POZ'!$B$2:$" & ColumnLetter(lastcolumn, wks) & "$" & Rowcount & ", MATCH('GELİR B.FİYAT'!$A2,'GELİR ESK. POZ'!$A:$A,0), MATCH('GELİR B.FİYAT'!F$1,'GELİR ESK. POZ'!$1:$1,0)),"""") "
                     'w! = .EntireColumn.ColumnWidth
                    '.EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlRight
                    .NumberFormat = formatCur$
                    
                End With
                
            lastcolumn = wkbk.Worksheets("GELİR B.FİYAT").Cells(1, wkbk.Worksheets("GELİR B.FİYAT").Columns.Count).End(xlToLeft).Column
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(lastcolumn, wks) & "2"
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            
            For i = 6 To lastcolumn
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            Next i

            
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
    
End If


'-------------------------------------- TOTAL INCOME -----------------------------------------------

        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "TOPLAM GELİR"
        End With
        
        Set wks = wkbk.Worksheets("TOPLAM GELİR")
        wks.Select
        
        Rowcount = wkbk.Worksheets("GELİR B.FİYAT").Range("A1").End(xlDown).Row
        
        For i = 1 To 5
            For j = 1 To 2
            With wks.Cells(j, i)
            
            
            .Formula = "=" & "'" & "GELİR B.FİYAT" & "'" & "!" & ColumnLetter(i, wks) & j & ""
            If j = 1 Then
            
            .HorizontalAlignment = xlCenter
            .Interior.Color = intColor&
            .Font.Bold = True
            .Font.Color = RGB(255, 255, 255)
            End If
            
            End With
            Next j
        Next i
         
            colstr = "A2:E2"
            fillrange = "A2:E" & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged, Type:=xlFillDefault
  
         With wks.Cells(1, 6)
        
            .Formula = "TOPLAM TUTAR"
            .HorizontalAlignment = xlCenter
            .Interior.Color = intColor&
            .Font.Bold = True
            .Font.Color = RGB(255, 255, 255)
             w! = .EntireColumn.ColumnWidth
            .EntireColumn.ColumnWidth = w! + 1
      
         End With
      
      
      lastcolumn = wkbk.Worksheets("GELİR B.FİYAT").Cells(1, wkbk.Worksheets("GELİR B.FİYAT").Columns.Count).End(xlToLeft).Column
      
        i = 7
            With wks.Cells(1, i)
                .Formula = "=" & "'" & "GELİR B.FİYAT" & "'" & "!" & ColumnLetter(i - 1, wks) & 1 & ""
                .EntireColumn.ColumnWidth = w! + 4
                .HorizontalAlignment = xlCenter
                .Interior.Color = intColor&
                .Font.Bold = True
                .Font.Color = RGB(255, 255, 255)
                .NumberFormat = formatDate$
            End With

            colstr = ColumnLetter(i, wks) & "1:" & ColumnLetter(i, wks) & "1"
            fillrange = ColumnLetter(i, wks) & "1:" & ColumnLetter(lastcolumn + 1, wks) & "1"
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            wks.Range(fillrange).EntireColumn.AutoFit


            With wks.Cells(2, 7)
             i = 7
            .Formula = "=IF('GELİR B.FİYAT'!F2<>"""",'GELİR B.FİYAT'!F2*XLOOKUP($A2,'GELİR MİKTAR'!$A:$A,'GELİR MİKTAR'!C:C,"""",0),"""") "
            .HorizontalAlignment = xlRight
            .NumberFormat = formatCur$
           End With

            lastcolumn = wkbk.Worksheets("TOPLAM GELİR").Cells(1, wkbk.Worksheets("TOPLAM GELİR").Columns.Count).End(xlToLeft).Column
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(lastcolumn, wks) & "2"
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            
            For i = 7 To lastcolumn
                colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
                fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & Rowcount
                Set SourceRange = wks.Range(colstr)
                Set fillranged = wks.Range(fillrange)
                SourceRange.AutoFill Destination:=fillranged
            Next i
            
            
          With wks.Cells(2, 6)
             i = 7
            .Formula = "=+SUM(G2:" & ColumnLetter(lastcolumn, wks) & "2" & ")"
            .HorizontalAlignment = xlRight
            .NumberFormat = formatCur$
           End With
            
            i = 6
            colstr = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & "2"
            fillrange = ColumnLetter(i, wks) & "2:" & ColumnLetter(i, wks) & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged

                     
            For i = 1 To 5

                With wks.Cells(1, i)
                    .EntireColumn.AutoFit
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                    
                End With
                
            Next
            
            
        For i = 1 To 6
        
        With wks.Cells(1, i)
        
        .EntireColumn.AutoFit
        
        If i = 1 Or i = 3 Or i = 5 Then
        .EntireColumn.HorizontalAlignment = xlCenter
        End If
        
        End With
        
        Next i
            
            
          With wks.Cells
            
            .Select
            .EntireColumn.AutoFit
            
            End With
            
         With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        
        msg$ = vbNullString
        

'-------------------------------------- INDEXES AND CURR RATES FORMAT -----------------------------------------------

        Set wkbk = xlapp.Workbooks(strProject & ".xls")
        ' Format worksheet
        Set wks = wkbk.Worksheets(1)
        With wks
            .Select
            .Name = "AYLIK ENDEKSLER"
        End With
        
        Rowcount = wks.Range("A1").End(xlDown).Row
        
        ' Currency columns
            formatCur$ = "#,##0.0000"
            colsCurrency$ = "B:B,C:C,D:D,E:E,F:F,G:G,H:H,I:I"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Currency columns
            formatCur$ = "#,##0.000000"
            colsCurrency$ = "J:J,K:K,L:L,M:M"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Date columns
            formatDate$ = "yyyy-mmmm"
            colsDate$ = "A:A"
            arrayCols = Split(colsDate$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatDate$
                .HorizontalAlignment = xlLeft
                End With
            Next i

        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            intColor& = RGB(5, 79, 125)
            n% = 13
            collsColumnNames$ = "AY,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,ELEKTRİK,ÇİMENTO,PETROL,USD/TRY,EUR/TRY,USD/EUR,EUR/USD"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            For i% = 1 To n%

                
                With wks.Cells(1, i%)
                
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = 15
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = ColumnNames_Array(i - 1)
                    
                End With
            Next i%
            
                wks.Cells(2, 12).Formula = "=Round(J2/K2,6)"
                wks.Cells(2, 13).Formula = "=Round(K2/J2,6)"
                wks.Range("L2:L" & Rowcount).FillDown
                wks.Range("M2:L" & Rowcount).FillDown

        
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        msg$ = vbNullString
                        
'-------------------------------------- INDEX AND CURR RATE INC RATES -----------------------------------------------
        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        With wks
            .Select
            .Name = "ENDEKS ARTIŞ"
        End With

        Set wks = wkbk.Worksheets("ENDEKS ARTIŞ")
        wks.Select
        ' Currency columns
            formatCur$ = "#,##0.0000"
            colsCurrency$ = "B:B,C:C,D:D,E:E,F:F,G:G,H:H,I:I"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Currency columns
            formatCur$ = "#,##0.000000"
            colsCurrency$ = "J:J,K:K,L:L,M:M"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Date columns
            formatDate$ = "yyyy-mmmm"
            colsDate$ = "A:A"
            arrayCols = Split(colsDate$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatDate$
                .HorizontalAlignment = xlLeft
                End With
            Next i

        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            intColor& = RGB(5, 79, 125)
            n% = wkbk.Worksheets(1).Cells(1, 1).End(xlToRight).Column
            collsColumnNames$ = "AY,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,ELEKTRİK,ÇİMENTO,PETROL,USD/TRY,EUR/TRY,USD/EUR,EUR/USD"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            For i% = 1 To n%
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = 15
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = ColumnNames_Array(i - 1)
                    
                End With
            Next i%

            t = 2
            
            For i = 2 To wkbk.Worksheets(1).Range("A1").End(xlDown).Row
                
                
                If wkbk.Worksheets(1).Range("A" & i).Value >= Curr_Month Then
                
                    If wkbk.Worksheets(1).Range("A" & i).Value = Curr_Month Then
                        k = i
                    End If
                
                With wks
                .Range("A" & t).Formula = "='AYLIK ENDEKSLER'!A" & i & ""
                .Range("B" & t).Formula = "=Round(('AYLIK ENDEKSLER'!B" & i & "/'AYLIK ENDEKSLER'!B" & k & ")-1,10)"
                .Range("C" & t).Formula = "=Round(('AYLIK ENDEKSLER'!C" & i & "/'AYLIK ENDEKSLER'!C" & k & ")-1,10)"
                .Range("D" & t).Formula = "=Round(('AYLIK ENDEKSLER'!D" & i & "/'AYLIK ENDEKSLER'!D" & k & ")-1,10)"
                .Range("E" & t).Formula = "=Round(('AYLIK ENDEKSLER'!E" & i & "/'AYLIK ENDEKSLER'!E" & k & ")-1,10)"
                .Range("F" & t).Formula = "=Round(('AYLIK ENDEKSLER'!F" & i & "/'AYLIK ENDEKSLER'!F" & k & ")-1,10)"
                .Range("G" & t).Formula = "=Round(('AYLIK ENDEKSLER'!G" & i & "/'AYLIK ENDEKSLER'!G" & k & ")-1,10)"
                .Range("H" & t).Formula = "=Round(('AYLIK ENDEKSLER'!H" & i & "/'AYLIK ENDEKSLER'!H" & k & ")-1,10)"
                .Range("I" & t).Formula = "=Round(('AYLIK ENDEKSLER'!I" & i & "/'AYLIK ENDEKSLER'!I" & k & ")-1,10)"
                .Range("J" & t).Formula = "=Round(('AYLIK ENDEKSLER'!J" & i & "/'AYLIK ENDEKSLER'!J" & k & ")-1,15)"
                .Range("K" & t).Formula = "=Round(('AYLIK ENDEKSLER'!K" & i & "/'AYLIK ENDEKSLER'!K" & k & ")-1,15)"
                .Range("L" & t).Formula = "=Round(('AYLIK ENDEKSLER'!L" & i & "/'AYLIK ENDEKSLER'!L" & k & ")-1,15)"
                .Range("M" & t).Formula = "=Round(('AYLIK ENDEKSLER'!M" & i & "/'AYLIK ENDEKSLER'!M" & k & ")-1,15)"
                
                t = t + 1
                End With
                '.Range("B" & i).Formula = "=XLOOKUP(1,A:A,B:B,0)"
                '.Range("L" & i).Formula = "=Round(J" & i & "/K" & i & ",6)"
                '.Range("M" & i).Formula = "=Round(K" & i & "/J" & i & ",6)"
                End If
                
            Next
            
        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

        
        With xlapp.ActiveWindow
            
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
'--------------------------------------------- EXP QTY FORMAT-----------------------------------------------
        
        ' Format worksheet
        Set wks = wkbk.Worksheets(9)
        With wks
            .Select
            .Name = "GİDER MİKTAR"
        End With

        Set wks = wkbk.Worksheets("GİDER MİKTAR")
        wks.Select
        
        lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
        
        ' Currency columns
            formatCur$ = "#,##0.00"
            For i = 3 To lastcolumn
                With wks.Columns(i)
                .HorizontalAlignment = xlRight
                .NumberFormat = formatCur$
                End With
            Next i
            
        ' Currency columns
            colsCurrency$ = "A:A"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter

                End With
            Next i
            
        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

        ' Column width adjustments
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            intColor& = RGB(5, 79, 125)
            collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            For i% = 1 To 2
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = ColumnNames_Array(i - 1)
                    
                End With
            Next i%
            
            
            For i% = 3 To lastcolumn
                With wks.Cells(1, i%)
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    .NumberFormat = formatDate$
                End With
            Next
            
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
        
'--------------------------------------------- R4 FORMAT-----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(5)
        With wks
            .Select
            .Name = "R4 KOD"
        End With
    
        ' Currency columns
            formatPers$ = "%0.00"
            colsCurrency$ = "D:D,E:E,F:F,G:G,H:H,I:I,J:J,K:K,L:L"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatPers$
                .EntireColumn.ColumnWidth = 12
                .HorizontalAlignment = xlCenter
                End With
            Next i
            
            colsDate$ = "A:A,C:C,D:D"
            arrayCols = Split(colsDate$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter
                End With
            Next i

        ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With

            intColor& = RGB(5, 79, 125)
            collsColumnNames$ = "R4 KOD,RAYİÇ AÇIKLAMASI,BİRİM,PARA BİRİMİ,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,PETROL,ÇİMENTO,ELEKTRİK"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            
            For i% = 1 To 12
                With wks.Cells(1, i%)
                    
                    .Value = ColumnNames_Array(i - 1)
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)

                 End With
            Next i%
            
            For i% = 1 To 4
                With wks.Cells(1, i%)
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    
                 End With
            Next i%
            
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

            
        End With
        msg$ = vbNullString
        
'--------------------------------------------- RES UP FORMAT-----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(6)
        With wks
            .Select
            .Name = "RAYİÇ B.FİYAT"
        End With
    
        ' Currency columns
            formatCur$ = "#,##0.00"
            colsCurrency$ = "B:B"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                .EntireColumn.AutoFit
                w! = .EntireColumn.ColumnWidth
                .EntireColumn.ColumnWidth = w! + 1
                .HorizontalAlignment = xlRight
                End With
            Next i
            
            formatDate$ = "yyyy-mmmm"
            colsDate$ = "C:C"
            arrayCols = Split(colsDate$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatDate$
                .HorizontalAlignment = xlLeft
                End With
            Next i


            colsDate$ = "A:A,D:D"
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter
                End With
            Next i
            
            intColor& = RGB(5, 79, 125)
            collsColumnNames$ = "R4 KOD,RAYİÇ B.FİYAT,GÜNCEL AY,PARA BİRİMİ"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            
            For i% = 1 To 4
                With wks.Cells(1, i%)
                    
                    .Value = ColumnNames_Array(i - 1)
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)

                 End With
            Next i%
            
            For i% = 1 To 4
                With wks.Cells(1, i%)
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    
                 End With
            Next i%
            
            
          With wks.Cells(2, 4)

            .Formula = "=XLOOKUP($A2,'R4 KOD'!$A:$A,'R4 KOD'!$D:$D)"
            .HorizontalAlignment = xlCenter
            
           End With
           
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = "D2:D2"
            fillrange = "D2:D" & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
   
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With


        msg$ = vbNullString
        
'--------------------------------------------- ANALYSIS FORMAT-----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(7)
        With wks
            .Select
            .Name = "ANALİZLER"
        End With
    
        ' Currency columns
            formatCur$ = "#,##0.00"
            colsCurrency$ = "C:C,D:D,E:E"
            arrayCols = Split(colsCurrency$, ",")
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .NumberFormat = formatCur$
                If i = 2 Then .NumberFormat = formatPers$
                .EntireColumn.AutoFit
                w! = .EntireColumn.ColumnWidth
                .EntireColumn.ColumnWidth = w! + 1
                .HorizontalAlignment = xlRight
                End With
            Next i
            
            colsDate$ = "A:A,B:B"
            For i = LBound(arrayCols) To UBound(arrayCols)
                With wks.Columns(arrayCols(i))
                .HorizontalAlignment = xlCenter
                End With
            Next i
            
            intColor& = RGB(5, 79, 125)
            collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI,R4 KOD,RAYİÇ AÇIKLAMASI,ZAİYAT ORANI,MİKTAR,TOPLAM MİKTAR"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            
            For i% = 1 To 7
                With wks.Cells(1, i%)
                If i% = 1 Then .EntireColumn.HorizontalAlignment = xlCenter
                    .Value = ColumnNames_Array(i - 1)
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)

                 End With
            Next i%
            
            For i% = 1 To 7
                With wks.Cells(1, i%)
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 1
                    
                 End With
            Next i%
    
          With wks.Cells(2, 4)

            .Formula = "=XLOOKUP($C2,'R4 KOD'!$A:$A,'R4 KOD'!$B:$B)"
            .HorizontalAlignment = xlLeft
            
           End With
           
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = "D2:D2"
            fillrange = "D2:D" & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            wks.Cells(2, 4).EntireColumn.AutoFit
            
    
          With wks.Cells(2, 7)

            .Formula = "=$F2*(1+$E2)"
            .HorizontalAlignment = xlRight
            
           End With
           
            Rowcount = wks.Range("A1").End(xlDown).Row
            colstr = "G2:G2"
            fillrange = "G2:G" & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
            wks.Cells(2, 4).EntireColumn.AutoFit
      
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
'--------------------------------------------- BY PASS L6 FORMAT-----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(8)
        With wks
            .Select
            .Name = "BY-PASS POZLAR"
        End With
        
        lastcolumn = wkbk.Worksheets("BY-PASS POZLAR").Cells(1, wkbk.Worksheets("BY-PASS POZLAR").Columns.Count).End(xlToLeft).Column
        
        ' Currency columns
        
        For i = 1 To lastcolumn
            
            With wks.Columns(i)
            If i <> 1 Then
                .NumberFormat = formatCur$
                .EntireColumn.AutoFit
                w! = .EntireColumn.ColumnWidth
                .EntireColumn.ColumnWidth = w! + 1
                .HorizontalAlignment = xlRight
                
            Else
            
            .EntireColumn.AutoFit
            .HorizontalAlignment = xlCenter
            
            End If
            End With
            
            
        Next i
        
        With wks.Cells(1, 1)
            
                    .Value = "L6 KOD"
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    
        End With
        
        
          For i% = 2 To lastcolumn
          
              With wks.Cells(1, i%)
              
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .NumberFormat = formatDate$
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    
                End With
            
            Next

      
        With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
            
            
        msg$ = vbNullString

        
'--------------------------------------------- ACTUAL EXPENSE FORMAT-----------------------------------------------

        ' Format worksheet
        Set wks = wkbk.Worksheets(10)
        With wks
            .Select
            .Name = "GER. GİDER"
        End With
        
      lastcolumn = wkbk.Worksheets("GER. GİDER").Cells(1, wkbk.Worksheets("GER. GİDER").Columns.Count).End(xlToLeft).Column
         
         For i = 1 To 3
            
            With wks.Columns(i)

                .EntireColumn.AutoFit
                w! = .EntireColumn.ColumnWidth
                .EntireColumn.ColumnWidth = w! + 1
                If i <> 2 Then .HorizontalAlignment = xlCenter

            End With
            
        Next i
        
        For i = 4 To lastcolumn
            
            With wks.Columns(i)

                .NumberFormat = formatCur$
                .EntireColumn.AutoFit
                w! = .EntireColumn.ColumnWidth
                .EntireColumn.ColumnWidth = w! + 1
                .HorizontalAlignment = xlRight

            End With
        
        Next i
        
            collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI,PARA BİRİMİ"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            
          For i% = 1 To 3
          
              With wks.Cells(1, i%)
              
                    .Value = ColumnNames_Array(i - 1)
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    
                End With
            
            Next
        
           For i% = 4 To lastcolumn
          
              With wks.Cells(1, i%)
              
                    .EntireColumn.AutoFit
                    w! = .EntireColumn.ColumnWidth
                    .EntireColumn.ColumnWidth = w! + 4
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = intColor&
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    If i% <> 1 Then .NumberFormat = formatDate$
                    If i% = 1 Then .Value = "L6 KOD"
                    .Value = CDate(Left(.Value, 1) & "." & Mid(.Value, 3, 2) & "." & Right(.Value, 4))
                    
                End With
            
            Next
            
         With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
            
            
        msg$ = vbNullString

'-------------------------------------- Expense Unit Price Calculation -----------------------------------------------

        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "GİDER KONTROL"
        End With


        
    wks.Cells(1, 1).Value = "Hesap Başlangıç Ayı"
    wks.Cells(2, 1).Value = "Hesap Bitiş Ayı"
    wks.Cells(3, 1).Value = "Poz Sayısı"
    wks.Cells(4, 1).Value = "Rayiç Sayısı"
    wks.Cells(6, 1).Value = "Toplam Hesap Satır Sayısı"
    wks.Cells(5, 1).Value = "Aktif Ay Sayısı"
    
    lastcolumn = wkbk.Worksheets("GER. GİDER").Cells(1, wkbk.Worksheets("GER. GİDER").Columns.Count).End(xlToLeft).Column
    wks.Cells(1, 2).Formula = "=+EDATE(MAX('GER. GİDER'!D1:" & ColumnLetter(lastcolumn, wks) & "1),1)"
    wks.Cells(1, 2).NumberFormat = formatDate$
    
    lastcolumn = wkbk.Worksheets("GİDER MİKTAR").Cells(1, wkbk.Worksheets("GİDER MİKTAR").Columns.Count).End(xlToLeft).Column
    wks.Cells(2, 2).Formula = "=+MAX('GİDER MİKTAR'!C1:" & ColumnLetter(lastcolumn, wks) & "1)"
    wks.Cells(2, 2).NumberFormat = formatDate$
    
    Rowcount = wkbk.Worksheets("GİDER MİKTAR").Range("A1").End(xlDown).Row
    wks.Cells(3, 2).Formula = "=+COUNTIF('GİDER MİKTAR'!A2:A" & Rowcount & ",""*"")"
    
    Rowcount = wkbk.Worksheets("ANALİZLER").Range("A1").End(xlDown).Row
    wks.Cells(4, 2).Formula = "=+COUNTIF('ANALİZLER'!A2:A" & Rowcount & ",""*"")"
    
    wks.Cells(6, 2).NumberFormat = "#,##0"
    wks.Cells(6, 2).Formula = "=+B4*B5"
    
    wks.Cells(5, 2).NumberFormat = "#,##0"
    wks.Cells(5, 2).Formula = "=(INT(YEAR(B2)-YEAR(B1))*12+INT(MONTH(B2)-MONTH(B1))+1)"
    
    wkbk.Worksheets("GİDER MİKTAR").Select
    Dim Starting_Date, Expense_Start_Date As Date
    Dim lnCol As Integer
    Starting_Date = wkbk.Worksheets("GİDER KONTROL").Cells(1, 2).Value
    Expense_Start_Date = wkbk.Worksheets("GİDER MİKTAR").Cells(1, 3).Value
    lnCol = DateDiff("m", Expense_Start_Date, Starting_Date)
    
            'wks.Cells(5, 2).Value = 39
            'wks.Cells(4, 2).Value = 1278
            i = wks.Cells(5, 2).Value
            j = wks.Cells(4, 2).Value
            
            ReDim arrayMonthsL6CodeL4Code(i, j) As String
            
        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "GİDER HESAP"
        End With
        


        Set wks = wkbk.Worksheets("GİDER HESAP")
        wks.Select

        wks.Cells(i * j + 1, 1).Select
        wks.Cells(i * j + 1, 1).Value = "Liste Sonu"
        
        'Call WaitFor_Func(2)
        
        wks.Cells(1, 1).Select
        
        'For i = 1 To UBound(arrayMonthsL6CodeL4Code, 1)
        
               'Call WaitFor_Func(1)
                i = 1
                For j = 1 To UBound(arrayMonthsL6CodeL4Code, 2)
                
                    If j = UBound(arrayMonthsL6CodeL4Code, 2) Then wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 1).Select
                    wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 1).Formula = "=+ANALİZLER!$A$" & j + 1 & ""
                    wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 2).Formula = "=+ANALİZLER!$C$" & j + 1 & ""
                    wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 3).Formula = "=+ANALİZLER!$G$" & j + 1 & ""
                    wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 4).Formula = "=+'GİDER MİKTAR'!$" & ColumnLetter(i + 2 + lnCol, wks) & "$1"
                
                
                Next

            Rowcount = wks.Range("A1").End(xlDown).Row
            i = 2
            For j = 1 To UBound(arrayMonthsL6CodeL4Code, 2)
            
            wks.Cells(j + (i - 1) * UBound(arrayMonthsL6CodeL4Code, 2), 4).Formula = "=+EDATE(D" & j & ",1)"
            Next
            
            i = 1
            wks.Range("A1:C" & Rowcount * 1).Copy
            wks.Range("A" & Rowcount * i + 1).PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
            SkipBlanks:=False, Transpose:=False
            
            j = wks.Range("A1").End(xlDown).Row
            wks.Range("A" & Rowcount + 1 & ":D" & j * 1).Copy
            'Next
            
            For i = 2 To UBound(arrayMonthsL6CodeL4Code, 1) - 1

            wks.Range("A" & Rowcount * i + 1).PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
            SkipBlanks:=False, Transpose:=False
            
            Next
            
           wks.Cells(1, 5).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$D:$D)"
           wks.Cells(1, 6).Formula = "=+XLOOKUP($B1,'RAYİÇ B.FİYAT'!$A:$A,'RAYİÇ B.FİYAT'!$B:$B)"
           wks.Cells(1, 7).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$E:$E)"
           wks.Cells(1, 8).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$F:$F)"
           wks.Cells(1, 9).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$G:$G)"
           wks.Cells(1, 10).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$H:$H)"
           wks.Cells(1, 11).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$I:$I)"
           wks.Cells(1, 12).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$L:$L)"
           wks.Cells(1, 13).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$K:$K)"
           wks.Cells(1, 14).Formula = "=+XLOOKUP($B1,'R4 KOD'!$A:$A,'R4 KOD'!$J:$J)"
           wks.Cells(1, 15).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!B:B)"
           wks.Cells(1, 16).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!C:C)"
           wks.Cells(1, 17).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!D:D)"
           wks.Cells(1, 18).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!E:E)"
           wks.Cells(1, 19).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!F:F)"
           wks.Cells(1, 20).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!G:G)"
           wks.Cells(1, 21).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!H:H)"
           wks.Cells(1, 22).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!I:I)"
           wks.Cells(1, 23).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!J:J)"
           wks.Cells(1, 24).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!K:K)"
           wks.Cells(1, 25).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!L:L)"
           wks.Cells(1, 26).Formula = "=+XLOOKUP($D1,'ENDEKS ARTIŞ'!$A:$A,'ENDEKS ARTIŞ'!M:M)"
           wks.Cells(1, 27).Formula = "=F1*G1*(1+O1)"
           wks.Cells(1, 28).Formula = "=F1*H1*(1+P1)"
           wks.Cells(1, 31).Formula = "=F1*K1*(1+S1)"
           wks.Cells(1, 32).Formula = "=F1*L1*(1+T1)"
           wks.Cells(1, 33).Formula = "=F1*M1*(1+U1)"
           wks.Cells(1, 34).Formula = "=F1*N1*(1+V1)"
           If CurrentDb.Properties![Active_Market_Status] = "ON" Then wks.Cells(1, 35).Formula = "=((IF(E1=""USD"",1,IF(E1=""EUR"",(1+'GİDER HESAP'!Y1),(1+'GİDER HESAP'!W1))))*(1+Q1)-1)*SUM(AE1:AH1)"
           If CurrentDb.Properties![Active_Market_Status] = "OFF" Then wks.Cells(1, 35).Formula = "=0"
           wks.Cells(1, 29).Formula = "=IF(E1=""TRY"",F1*I1*(1+Q1)*(1+W1),+IF(E1=""EUR"",F1*I1*(1+Q1)*(1+Y1),F1*I1*(1+Q1)))"
           wks.Cells(1, 30).Formula = "=IF(E1=""TRY"",F1*J1*(1+R1)*(1+X1),+IF(E1=""USD"",F1*J1*(1+R1)*(1+Z1),F1*J1*(1+R1)))"
           wks.Cells(1, 36).Formula = "=IF(XLOOKUP($A1,'BY-PASS POZLAR'!$A:$A,'BY-PASS POZLAR'!$A:$A,"""")<>"""",(1+INDEX('BY-PASS POZLAR'!$1:$1048576,MATCH('GİDER HESAP'!$A1,'GİDER MİKTAR'!$A:$A,0),MATCH('GİDER HESAP'!$D1,'BY-PASS POZLAR'!$1:$1,0)))*$F1,"""")"
           wks.Cells(1, 37).Formula = "=+IF(AJ1<>"""",AJ1,SUM(AA1:AI1))"
           wks.Cells(1, 38).Formula = "=+AK1*C1"

'----------------SKIP------------------------
            
        'Set xlapp = CreateObject("Excel.Application")
        'Set wkbk = Workbooks.Open(strPath & "\" & strProject & ".xlsx")
        'Call WaitFor_Func(2)
        
        'xlapp.Visible = True
        'xlapp.WindowState = xlMaximized
    
        'Set wks = wkbk.Worksheets("GİDER HESAP")
        
        'With wks
            '.Select
            '.Name = "GİDER HESAP"
        'End With
 
'-------------------------------------------
        xlapp.Calculation = xlManual
        lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
        Rowcount = wks.Range("A1").End(xlDown).Row
           
            colstr = "E1:" & ColumnLetter(lastcolumn, wks) & "1"
            fillrange = "E1:" & ColumnLetter(lastcolumn, wks) & Rowcount
            Set SourceRange = wks.Range(colstr)
            Set fillranged = wks.Range(fillrange)
            SourceRange.AutoFill Destination:=fillranged
       xlapp.Calculation = xlAutomatic
       
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With
            
            For i = 1 To lastcolumn
            With wks.Cells(1, i)

                If i >= 7 And i < 16 Then
                
                    formatPers$ = "%0.00"
                     formatCur$ = "#,####0.00"
                    .EntireColumn.ColumnWidth = 10
                    .EntireColumn.HorizontalAlignment = xlRight
                    .EntireColumn.NumberFormat = formatPers$
                    
                ElseIf i >= 16 And i < 27 Then
                     
                    formatPers$ = "%0.0000"
                     formatCur$ = "#,####0.0000"
                    .EntireColumn.ColumnWidth = 10
                    .EntireColumn.HorizontalAlignment = xlRight
                    .EntireColumn.NumberFormat = formatPers$
                    
                ElseIf i >= 27 Then
                     
                     formatCur$ = "#,##0.00"
                    .EntireColumn.ColumnWidth = 10
                    .EntireColumn.HorizontalAlignment = xlRight
                    .EntireColumn.NumberFormat = formatCur$
                    
                ElseIf i = 3 Then
                
                    .EntireColumn.ColumnWidth = 10
                    .EntireColumn.HorizontalAlignment = xlRight
                    
                ElseIf i < 3 Or i = 5 Then
                
                    .EntireColumn.AutoFit
                    .EntireColumn.HorizontalAlignment = xlCenter
                    
                ElseIf i = 4 Then
                
                    .EntireColumn.NumberFormat = formatDate$
                    .EntireColumn.HorizontalAlignment = xlLeft
                    .EntireColumn.AutoFit
                    
                End If
                    
                End With
                
            Next
       xlapp.Calculation = xlManual
            wks.Range("A1").EntireRow.Insert
            
            collsColumnNames$ = "L6 KOD,R4 KOD,MİKTAR,TARİH,PARA BİRİMİ,RAYİÇ BİRİM FİYAT,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,ELEKTRİK,ÇİMENTO,PETROL,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,ELEKTRİK,ÇİMENTO,PETROL,USD/TRY,EUR/TRY,USD/EUR,EUR/USD,ÜFE,TÜFE,USD ENF.,EUR ENF.,METAL,ELEKTRİK,ÇİMENTO,PETROL,USD MARKET,BYPASS,ESKALE RAYİÇ BİRİM FİYAT,ANALİZ TOPLAM FİYAT"
            ColumnNames_Array = Split(collsColumnNames$, ",")
            
          For i% = 1 To lastcolumn
          
              With wks.Cells(1, i%)
              
                    .Value = ColumnNames_Array(i - 1)
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = RGB(5, 79, 125)
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    If i = 5 Or i = 6 Or i = 35 Or i = 37 Or i = 38 Or i = 4 Then .EntireColumn.AutoFit
                    
                End With
                
        Next
        
        

    With Range("G1:N1")
        .Font.Color = RGB(89, 89, 89)
        .Interior.Color = RGB(230, 184, 183)
    End With

    With Range("O1:Z1")
        .Font.Color = RGB(89, 89, 89)
        .Interior.Color = RGB(204, 192, 218)
    End With
    
    With Range("AA1:AJ1")
        .Font.Color = RGB(89, 89, 89)
        .Interior.Color = RGB(196, 189, 151)
    End With
    
    xlapp.Calculation = xlAutomatic
         With xlapp.ActiveWindow
        
        wks.Range("C2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
            
'--------------------------------------------------EXPENSE UNIT PRICE---------------------------------------------


        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "GİDER BİRİM FİYAT"
        End With
    
        'With wks
            
            'For i = 1 To 3
            
            '.Cells(1, i).Formula = "='GER. GİDER'!" & ColumnLetter(i, wks) & "1"
            
            'Next
             
         'End With
    
    'RowCount = wkbk.Worksheets("GER. GİDER").Range("A1").End(xlDown).Row
      
            
            'colstr = "A1:C1"
            'fillrange = "A1:C" & RowCount
            'Set SourceRange = wks.Range(colstr)
            'Set fillranged = wks.Range(fillrange)
            'SourceRange.AutoFill Destination:=fillranged
            
    Dim RowCountNext As Integer
    
    Rowcount = wkbk.Worksheets("ANALİZLER").Range("A1").End(xlDown).Row
    
    wks.Cells(1, 1).Formula = "='GİDER HESAP'!A2 & 'GİDER HESAP'!E2"
    
    colstr = "A1:A1"
    fillrange = "A1:A" & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    wks.Columns("A:A").Select
    wks.Range("$A$1:$A$" & Rowcount).RemoveDuplicates Columns:=1, Header:=xlNo
    
    Dim letter_no As Integer
    Dim search_text, str_first, str_second As String
    
    Rowcount = wkbk.Worksheets("GİDER BİRİM FİYAT").Range("A1").End(xlDown).Row
    
    'Rows(RowCount).EntireRow.Delete
    
    Rowcount = wkbk.Worksheets("GİDER BİRİM FİYAT").Range("A1").End(xlDown).Row
    xlapp.Calculation = xlManual
    For i = 1 To Rowcount
        search_text = wks.Cells(i, 1).Formula
        letter_no = InStr(1, search_text, "&", 1)
        str_first = Left(wks.Cells(i, 1).Formula, letter_no - 1)
        str_second = "=" & Right(wks.Cells(i, 1).Formula, Len(wks.Cells(i, 1).Formula) - letter_no)
        wks.Cells(i, 1).Formula = str_first
        wks.Cells(i, 3).Formula = str_second
        
    Next
    
    xlapp.Calculation = xlAutomatic
    wks.Cells(1, 2).Formula = "=+XLOOKUP(A1,ANALİZLER!A:A,ANALİZLER!B:B)"
    wks.Range("A1").EntireRow.Insert
    Rowcount = wkbk.Worksheets("GİDER BİRİM FİYAT").Range("A1").End(xlDown).Row
    
    Dim Expense_End_Date, Expense_Starting_Date As Date
    Starting_Date = wkbk.Worksheets("GİDER KONTROL").Cells(1, 2).Value
    Expense_Start_Date = wkbk.Worksheets("GİDER MİKTAR").Cells(1, 3).Value
    lnCol = DateDiff("m", Expense_Start_Date, Starting_Date)
    wks.Cells(1, 4).NumberFormat = formatDate$
    wks.Cells(1, 4).Formula = "=+'GİDER MİKTAR'!" & ColumnLetter(3 + lnCol, wks) & "1"
     
    lastcolumn = wkbk.Worksheets("GİDER MİKTAR").Cells(1, wkbk.Worksheets("GİDER MİKTAR").Columns.Count).End(xlToLeft).Column
     
    Expense_End_Date = wkbk.Worksheets("GİDER MİKTAR").Cells(1, lastcolumn).Value
    
    For i = 1 To DateDiff("m", wks.Cells(1, 4).Value, Expense_End_Date)
     
    wks.Cells(1, i + 4).Formula = "=+'GİDER MİKTAR'!" & ColumnLetter(3 + i + lnCol, wks) & "1"
     
    Next

    wks.Cells(2, 4).Formula = "=+SUMIFS('GİDER HESAP'!$AL:$AL,'GİDER HESAP'!$A:$A,'GİDER BİRİM FİYAT'!$A2,'GİDER HESAP'!$E:$E,'GİDER BİRİM FİYAT'!$C2,'GİDER HESAP'!$D:$D,'GİDER BİRİM FİYAT'!D$1)"
    
    Rowcount = wkbk.Worksheets("GİDER BİRİM FİYAT").Range("A2").End(xlDown).Row
    lastcolumn = wks.Cells(1, wks.Columns.Count).End(xlToLeft).Column
    
    colstr = ColumnLetter(4, wks) & "2:" & ColumnLetter(4, wks) & "2"
    fillrange = ColumnLetter(4, wks) & "2:" & ColumnLetter(lastcolumn, wks) & "2"
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
        
    colstr = "B2:B2"
    fillrange = "B2:B" & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    colstr = "D2:" & ColumnLetter(lastcolumn, wks) & "2"
    fillrange = "D2:" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    wks.Rows("1:1").NumberFormat = formatDate$
    
    formatCur$ = "#,##0.00"
    wks.Rows("2:" & Rowcount).NumberFormat = formatCur$
    
        collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI,PARA BİRİMİ"
        ColumnNames_Array = Split(collsColumnNames$, ",")
            
          For i% = 1 To lastcolumn
          
              With wks.Cells(1, i%)
                    If i < 4 Then
                    .Value = ColumnNames_Array(i - 1)
                    .EntireColumn.AutoFit
                    End If
                    
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = RGB(5, 79, 125)
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    If i > 3 Then .EntireColumn.ColumnWidth = 13
                    
                    
                End With
                
        Next
         With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
                
                
'--------------------------------TOTAL EXPENSE-----------------------------------------

        wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "TOPLAM GİDER"
        End With
    
    Rowcount = wkbk.Worksheets("GER. GİDER").Range("A1").End(xlDown).Row
    
    wks.Cells(1, 1).Formula = "='GER. GİDER'!A2 & 'GER. GİDER'!C2"
    
    colstr = "A1:A1"
    fillrange = "A1:A" & Rowcount - 1
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    j = Rowcount - 1 + wkbk.Worksheets("GİDER BİRİM FİYAT").Range("A1").End(xlDown).Row
    
    wks.Cells(Rowcount, 1).Formula = "='GİDER BİRİM FİYAT'!A2 & 'GİDER BİRİM FİYAT'!C2"
    
    colstr = "A" & Rowcount & ":A" & Rowcount
    fillrange = "A" & Rowcount & ":A" & j
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged

    wks.Columns("A:A").Select
    wks.Range("$A$1:$A$" & j + 1).RemoveDuplicates Columns:=1, Header:=xlNo
    xlapp.Calculation = xlManual
    Rowcount = wkbk.Worksheets("TOPLAM GİDER").Range("A1").End(xlDown).Row
    Rows(Rowcount).EntireRow.Delete
    Rowcount = wkbk.Worksheets("TOPLAM GİDER").Range("A1").End(xlDown).Row
    
    For i = 1 To Rowcount
        search_text = wks.Cells(i, 1).Formula
        letter_no = InStr(1, search_text, "&", 1)
        str_first = Left(wks.Cells(i, 1).Formula, letter_no - 1)
        str_second = "=" & Right(wks.Cells(i, 1).Formula, Len(wks.Cells(i, 1).Formula) - letter_no)
        wks.Cells(i, 1).Formula = str_first
        wks.Cells(i, 3).Formula = str_second
        
    Next
    xlapp.Calculation = xlAutomatic
    wks.Cells(1, 2).Formula = "=+XLOOKUP(A1,ANALİZLER!A:A,ANALİZLER!B:B)"
    wks.Range("A1").EntireRow.Insert
    
    wks.Cells(1, 4).Formula = "=MIN('GİDER BİRİM FİYAT'!1:1,'GER. GİDER'!1:1)"
    Expense_Start_Date = wks.Cells(1, 4).Value
    Expense_End_Date = wkbk.Worksheets("GİDER KONTROL").Cells(2, 2).Value
    j = DateDiff("m", Expense_Start_Date, Expense_End_Date)
    
    For i = 1 To j
    
    wks.Cells(1, i + 4).Formula = "=+EDATE(" & ColumnLetter(i + 4 - 1, wks) & "1,1)"
    
    Next
    
    wkbk.Worksheets("GİDER KONTROL").Cells(7, 1).Formula = "GER. GİDER Min Ay"
    wkbk.Worksheets("GİDER KONTROL").Cells(7, 2).NumberFormat = formatDate$
    wkbk.Worksheets("GİDER KONTROL").Cells(8, 1).Formula = "GİDER BİRİM FİYAT Min Ay"
    wkbk.Worksheets("GİDER KONTROL").Cells(8, 2).NumberFormat = formatDate$
    wkbk.Worksheets("GİDER KONTROL").Cells(7, 2).Formula = "=+MIN('GER. GİDER'!1:1)"
    wkbk.Worksheets("GİDER KONTROL").Cells(8, 2).Formula = "=+MIN('GİDER BİRİM FİYAT'!1:1)"
    
    If wkbk.Worksheets("GİDER KONTROL").Cells(7, 2).Value <= wkbk.Worksheets("GİDER KONTROL").Cells(8, 2).Value Then
    
    Expense_Start_Date = wks.Cells(1, 4).Value
    Expense_End_Date = wkbk.Worksheets("GİDER KONTROL").Cells(1, 2).Value
    j = DateDiff("m", Expense_Start_Date, Expense_End_Date)
  
        For i = 1 To j
        
            wks.Cells(2, i + 3).Formula = "=+iferror(SUMIFS('GER. GİDER'!" & ColumnLetter(i + 3, wks) & ":" & ColumnLetter(i + 3, wks) & ",'GER. GİDER'!$A:$A,'TOPLAM GİDER'!$A2,'GER. GİDER'!$C:$C,'TOPLAM GİDER'!$C2),"""")"

        Next

    Else
    
    Expense_Start_Date = wkbk.Worksheets("GİDER KONTROL").Cells(8, 2).Value
    Expense_End_Date = wkbk.Worksheets("GİDER KONTROL").Cells(7, 2).Value
    j = DateDiff("m", Expense_End_Date, Expense_Start_Date)
    
    wks.Cells(2, 4 + j).Formula = "=+SUMIFS('GER. GİDER'!D:D,'GER. GİDER'!$A:$A,'TOPLAM GİDER'!$A2,'GER. GİDER'!$C:$C,'TOPLAM GİDER'!$C2)"
    
    End If
    
    lastcolumn = wkbk.Worksheets("TOPLAM GİDER").Cells(2, wkbk.Worksheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    
    wks.Cells(2, lastcolumn + 1).Formula = "=+iferror(INDEX('GİDER MİKTAR'!$1:$1048576,MATCH('TOPLAM GİDER'!$A2,'GİDER MİKTAR'!$A:$A,0),MATCH('TOPLAM GİDER'!X$1,'GİDER MİKTAR'!$1:$1,0))*SUMIFS('GİDER BİRİM FİYAT'!D:D,'GİDER BİRİM FİYAT'!$A:$A,'TOPLAM GİDER'!$A2,'GİDER BİRİM FİYAT'!$C:$C,'TOPLAM GİDER'!$C2),"""")"
    Expense_End_Date = wkbk.Worksheets("GİDER KONTROL").Cells(2, 2).Value
    Expense_Start_Date = wkbk.Worksheets("TOPLAM GİDER").Cells(1, lastcolumn + 1).Value
    j = DateDiff("m", Expense_Start_Date, Expense_End_Date)
    
    colstr = ColumnLetter(lastcolumn + 1, wks) & "2:" & ColumnLetter(lastcolumn + 1, wks) & "2"
    fillrange = ColumnLetter(lastcolumn + 1, wks) & "2:" & ColumnLetter(lastcolumn + 1 + j, wks) & "2"
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
        
        Range("D1").EntireColumn.Insert
        
        collsColumnNames$ = "L6 KOD,POZ AÇIKLAMASI,PARA BİRİMİ,TOPLAM TUTAR"
        ColumnNames_Array = Split(collsColumnNames$, ",")
           
           
      For i% = 1 To 4
          
              With wks.Cells(1, i%)

                    .Value = ColumnNames_Array(i - 1)
                    .EntireColumn.AutoFit
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = RGB(5, 79, 125)
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    
                End With
                
        Next

    lastcolumn = wkbk.Worksheets("TOPLAM GİDER").Cells(1, wkbk.Worksheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    Rowcount = wkbk.Worksheets("TOPLAM GİDER").Range("A1").End(xlDown).Row
    colstr = "B2:B2"
    fillrange = "B2:B" & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    colstr = "E2:" & ColumnLetter(lastcolumn, wks) & "2"
    fillrange = "E2:" & ColumnLetter(lastcolumn, wks) & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
    
    wks.Cells(2, 4).Formula = "=+SUM(E2:" & ColumnLetter(lastcolumn, wks) & "2)"
    colstr = "D2:D2"
    fillrange = "D2:D" & Rowcount
    Set SourceRange = wks.Range(colstr)
    Set fillranged = wks.Range(fillrange)
    SourceRange.AutoFill Destination:=fillranged
   
   
    wks.Rows("1:1").NumberFormat = formatDate$
    
    formatCur$ = "#,##0.00"
    wks.Rows("2:" & Rowcount).NumberFormat = formatCur$
   
   With wks.Range(Cells(1, 5), Cells(1, lastcolumn))
   
                    .HorizontalAlignment = xlCenter
                    .Interior.Color = RGB(5, 79, 125)
                    .Font.Bold = True
                    .Font.Color = RGB(255, 255, 255)
                    .EntireColumn.ColumnWidth = 13
   End With
   
          With xlapp.ActiveWindow
        
        wks.Range("B2").Select
        .FreezePanes = True

        End With
        
                ' Filters
            With wks.Range("A1")
                .Select
                .AutoFilter
            End With
              
   
'--------------------------------GRAND TOTAL-----------------------------------------
   
   
         wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
        ' Format worksheet
        Set wks = wkbk.Worksheets(wkbk.Sheets.Count)
        
        With wks
            .Select
            .Name = "GENEL TOPLAM"
        End With
   
        
        wks.Cells(4, 3).Value = "GELİR"
        wks.Cells(4, 4).Value = "USD"
        wks.Cells(5, 4).Value = "TRY"
        wks.Cells(6, 4).Value = "EUR"
        wks.Cells(7, 3).Value = "GİDER"
        wks.Cells(7, 4).Value = "USD"
        wks.Cells(8, 4).Value = "TRY"
        wks.Cells(9, 4).Value = "EUR"
        wks.Cells(10, 3).Value = "BRÜT KAR"
        wks.Cells(10, 4).Value = "USD"
        wks.Cells(11, 4).Value = "TRY"
        wks.Cells(12, 4).Value = "EUR"
        
        wks.Cells(4, 5).Formula = "=+SUMIFS('TOPLAM GELİR'!F:F,'TOPLAM GELİR'!E:E,D4)"
        wks.Cells(5, 5).Formula = "=+SUMIFS('TOPLAM GELİR'!F:F,'TOPLAM GELİR'!E:E,D5)"
        wks.Cells(6, 5).Formula = "=+SUMIFS('TOPLAM GELİR'!F:F,'TOPLAM GELİR'!E:E,D6)"
   
        wks.Cells(7, 5).Formula = "=+SUMIFS('TOPLAM GİDER'!D:D,'TOPLAM GİDER'!C:C,D7)"
        wks.Cells(8, 5).Formula = "=+SUMIFS('TOPLAM GİDER'!D:D,'TOPLAM GİDER'!C:C,D8)"
        wks.Cells(9, 5).Formula = "=+SUMIFS('TOPLAM GİDER'!D:D,'TOPLAM GİDER'!C:C,D9)"
   
        wks.Cells(10, 5).Formula = "=E4-E7"
        wks.Cells(11, 5).Formula = "=E5-E8"
        wks.Cells(12, 5).Formula = "=E6-E9"
        
      formatCur$ = "#,##0.00"
      
      wks.Cells(1, 5).EntireColumn.NumberFormat = formatCur$
      
            With wks.Cells
            .Select
            .EntireColumn.AutoFit
            End With

        xlapp.Calculation = xlManual
        
        
        xlapp.WindowState = xlMaximized
'------------------------------------------------------------------------------------
'skip_:

Call modify_grandsum_excel(strPath, strProject, Forms!Tech_Office!Combo1019.Value, prjname)

MsgBox ("İşlem tamamlandı.")
DoCmd.Close acForm, "f_Loading_Screen_Excel_Export"
DoCmd.SelectObject acForm, "Tech_Office"
DoCmd.Maximize


        'Set xlapp = CreateObject("Excel.Application")
        'Set wkbk = Workbooks.Open(strPath & "\" & strProject & ".xlsx")
        'Call WaitFor_Func(2)
        
        'xlapp.Visible = True
        'xlapp.WindowState = xlMaximized
    
        'Set wks = wkbk.Worksheets("GİDER HESAP")
        
        'With wks
            '.Select
            '.Name = "GİDER HESAP"
        'End With

        'wkbk.Sheets("AYLIK ENDEKSLER").Move After:=wkbk.Sheets("GELİR ESK. PROJE")




Leave:
    On Error GoTo 0
    Exit Sub

Trap:

    If Err.Number <> 2501 Then
    MsgBox Err.description, vbCritical
    GoTo Leave
    'Resume Next
    End If
    

End Sub

Private Sub Command625_Click()

Select Case Me.Combo628
Case "GÜNCEL"
Call Indexes_Input
DoCmd.Minimize
DoCmd.OpenForm "f_CB_Indexes_Input"
Case "BAZ"
End Select

End Sub

Private Sub Command626_Click()
Select Case Me.Combo633
Case "GÜNCEL"
Call Monthly_Update
DoCmd.Minimize
DoCmd.OpenForm "f_CB_Indexes_Monthly_Input"
Case "BAZ"
End Select

End Sub

Private Sub Command627_Click()


DoCmd.SetWarnings False
Dim db As dao.Database
Set db = CurrentDb
Dim qdf_qty, qdf, qdf_unfiltered_total As dao.QueryDef
Dim strSql, strSQL_Qty, strUnfiltered As String
Dim rst, rsDao, rsMax As Recordset
Dim Record_Number, i, j, k, l As Integer
Dim MaxDate As Date

Select Case Me.Combo635
Case "GÜNCEL"

            Call Monthly_Update
            Call Indexes_Input
            
            DoCmd.SetWarnings False
            DoCmd.RunSQL ("DELETE * From t_CB_Index_Inc_Rates_Calculated")

            Record_Number = DCount("*", "t_CB_Indexes_Input")
            'MsgBox ("" & Record_Number)
            
            For i = 1 To Record_Number
            
                   strSql = "SELECT TOP 1 * " & _
                            "FROM ( " & _
                            "SELECT TOP " & i & " * " & _
                            "FROM [t_CB_Indexes_Input] " & _
                            "ORDER BY [t_CB_Indexes_Input].[cb_Year] ASC) t " & _
                            "ORDER BY [t_CB_Indexes_Input].[cb_Year] DESC"
                            
                   Set rst = db.OpenRecordset(strSql, dbOpenDynaset)
                   Set rsDao = db.OpenRecordset("t_CB_Index_Inc_Rates_Calculated", dbOpenTable, dbAppendOnly)
                   
                   With rst
                   
                           Do While Not .EOF
        
                                       For k = 1 To 12
                                       rsDao.AddNew
                                       
                                                   For j = 0 To CurrentDb.TableDefs("t_CB_Index_Inc_Rates_Calculated").Fields.Count - 1
                                                       
                                                       If j = 0 Then
                                                       
                                                       rsDao.Fields(j) = Format(CDate("01." & Format(k, "00") & "." & rst.Fields(j) & ""), "dd.mm.yyyy")
                                                       
                                                       Else
                                                       
                                                       rsDao.Fields(j) = Round((1 + rst.Fields(j)) ^ (1 / 12) - 1, 6)
                                                       
                                                       End If
                                                       
                                                       
                                                   Next
                                                   
                                       rsDao.Update
                                       
                                       Next
                              
                              .MoveNext
                              Loop
                              
                   End With
            
            
            Next

            rst.Close
            rsDao.Close
            
            MaxDate = DMax("[cb_Month]", "t_CB_Indexes_Monthly_Input")
            Record_Number = DCount("[cb_Month]", "t_CB_Index_Inc_Rates_Calculated", "[cb_Month] >#" & Format(MaxDate, "yyyy\/mm\/dd") & "#" & "")
            DoCmd.RunSQL ("DELETE * From t_CB_Indexes_Calculated")
            
            For i = 1 To Record_Number
            
                   Set rsDao = db.OpenRecordset("t_CB_Indexes_Calculated", dbOpenTable, dbAppendOnly)
                    
                   strSql = "SELECT TOP 1 * " & _
                            "FROM ( " & _
                            "SELECT TOP " & i & " * " & _
                            "FROM [t_CB_Index_Inc_Rates_Calculated] " & _
                            "WHERE [cb_Month] >#" & Format(MaxDate, "yyyy\/mm\/dd") & "# " & _
                            "ORDER BY [t_CB_Index_Inc_Rates_Calculated].[cb_Month] ASC) t " & _
                            "ORDER BY [t_CB_Index_Inc_Rates_Calculated].[cb_Month] DESC"
            
                   Set rst = db.OpenRecordset(strSql, dbOpenDynaset)
                    
                        With rst
                              
                                      Do While Not .EOF
                                      rsDao.AddNew
                                      
                                               If i = 1 Then
                                               
                                                strSql = "SELECT TOP 1 * " & _
                                                        "FROM t_CB_Indexes_Monthly_Input " & _
                                                        "ORDER BY [t_CB_Indexes_Monthly_Input].[cb_Month] DESC"
                                                        
                                                Else
                                                
                                                strSql = "SELECT TOP 1 * " & _
                                                        "FROM ( " & _
                                                        "SELECT TOP " & i - 1 & " * " & _
                                                        "FROM [t_CB_Indexes_Calculated] " & _
                                                        "ORDER BY [t_CB_Indexes_Calculated].[cb_Month] ASC) t " & _
                                                        "ORDER BY [t_CB_Indexes_Calculated].[cb_Month] DESC"
                                                
                                                End If
                                                
                                                
                                                Set rsMax = db.OpenRecordset(strSql, dbOpenDynaset)
                                                
                                                                    For j = 0 To CurrentDb.TableDefs("t_CB_Indexes_Calculated").Fields.Count - 1
                                                                                                       
                                                                                If j = 0 Then
                                                                                
                                                                                k = Month(rst.Fields(0))
                                                                                l = year(rst.Fields(0))
                                                                                
                                                                                rsDao.Fields(j) = Format(CDate("01." & Format(k, "00") & "." & Format(l, "0000") & ""), "dd.mm.yyyy")
                                                                                
                                                                                Else
                                                                                
                                                                                rsDao.Fields(j) = Round((1 + rst.Fields(j)) * rsMax.Fields(j), 4)
                                                                                
                                                                                End If
                                                
                                                                     Next
                                                                     
                                                
                                rsDao.Update
                                .MoveNext
                              Loop
                              
                   End With
                   
            Next
            
            rst.Close
            rsDao.Close
            rsMax.Close

        
            
DoCmd.SetWarnings True

DoCmd.Minimize
DoCmd.OpenForm "f_CB_Indexes_Union"

Case "BAZ"
End Select

End Sub

Private Sub Command630_Click()

Select Case Me.Combo643

Case "GÜNCEL"

RSstrSQL = "SELECT t_CB_Indexes_Imported.rep_month " & _
         ",t_CB_Indexes_Imported.cb_Month " & _
         ",t_CB_Indexes_Imported.cb_UFE " & _
         ",t_CB_Indexes_Imported.cb_TUFE " & _
         ",t_CB_Indexes_Imported.cb_INF_USD " & _
         ",t_CB_Indexes_Imported.cb_INF_EUR " & _
         ",t_CB_Indexes_Imported.cb_Metal " & _
         ",t_CB_Indexes_Imported.cb_Electricity " & _
         ",t_CB_Indexes_Imported.cb_Cement " & _
         ",t_CB_Indexes_Imported.cb_Petrol " & _
         ",t_CB_Indexes_Imported.cb_USDTRY " & _
         ",t_CB_Indexes_Imported.cb_EURTRY " & _
         ",IIf([cb_Month]<=DMax('[rep_month_date]','t_rep_month') ,'Gerçekleşen','Planlanan') AS Data_type_text " & _
         "FROM t_CB_Indexes_Imported " & _
         "WHERE (((t_CB_Indexes_Imported.rep_month)=" & "'" & Me.Combo649 & "'" & ")) " & _
         ""

Case "BAZ"


End Select

DoCmd.OpenForm ("f_CB_Indexes_Imported")
Forms("f_CB_Indexes_Imported").RecordSource = RSstrSQL
Forms("f_CB_Indexes_Imported").Text317 = Me.Combo649
Forms("f_CB_Indexes_Imported").Text325 = DLookup("[rep_Month_Date]", "t_rep_month", "[rep_month]=" & "'" & Me.Combo649 & "'")



End Sub

Private Sub Command652_Click()


    Dim db As dao.Database
    Dim objRPT As Report
    Set db = CurrentDb
    Dim Project_Name As String
    Dim pcode, rep_Month, Budget_Type_Selected As String
    Dim Active_Month As Date
    Dim bln_Lock As Boolean
    
    If IsNull([Forms]![Tech_Office]![Combo653]) Or Me.Combo653.Value = "" Then
    
        MsgBox "Lütfen proje seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
        End
   
    ElseIf IsNull(Combo654) Or Me.Combo654.Value = "" Then
                   MsgBox "Lütfen bütçe tipini seçiniz. " & vbLf & _
                   "Proje orjinal kurları için " & """" & "ORJ" & _
                   """" & " seçeneğini seçiniz.", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
    ElseIf IsNull(Combo655) Or Me.Combo655.Value = "" Then
                   MsgBox "Lütfen bütçe tarihi seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
    ElseIf IsNull(Combo656) Or Me.Combo656.Value = "" Then
                   MsgBox "Lütfen para birimi seçiniz ", vbInformation + vbOKOnly, "IC.BVARS - Uyarı"
                   End
                   bln_Lock = True
                   
                   
    End If
    
    pcode = Me.Combo653
    rep_Month = Me.Combo655
    Active_Month = DLookup("[rep_Month_Date]", "[t_Rep_Month]", "[rep_Month] = " & """" & Me.Combo655 & """")
    
    Budget_Type_Selected = Me.Combo654
    
    Select Case Budget_Type_Selected
    
        Case "GÜNCEL"
        budget_type_str = "CB"
        budget_type_str_qty_Mon = "CB"
        Budget_Type = "GÜNCEL"
        
        Case "BAZ"
        budget_type_str = "BB"
        budget_type_str_qty_Mon = "Base"
        Budget_Type = "BAZ"
        
    End Select

    Select Case Me.Combo656
        
        Case "ORJ"
        budget_curr = "t_" & budget_type_str & "_Profit_Total_ST"

        Case "USD"
        budget_curr = "t_" & budget_type_str & "_Profit_USD_ST"
        
        Case "EUR"
        budget_curr = "t_" & budget_type_str & "_Profit_EUR_ST"
        
        Case "TRY"
        budget_curr = "t_" & budget_type_str & "_Profit_TRY_ST"
        
    End Select
    
    Report_Type_Tech_Office = True
    
        Call CB_AllProjects_Report_Inc_UP_Data(pcode, rep_Month, Active_Month, budget_curr, budget_type_str, budget_type_str_qty_Mon)
        DoCmd.Minimize
        
        DoCmd.OpenReport "r_Project_Inc_UP_List", acViewReport
    
        Set objRPT = Reports("r_Project_Inc_UP_List")
        objRPT.Caption = Me.Combo653 & " KALAN GELİR KALEMLERİ - " & Me.Combo655 & " - " & Combo654
        Caption_Str = Me.Combo653 & " KALAN GELİR KALEMLERİ - " & Me.Combo655 & " - " & Combo654
    
        DoCmd.SelectObject acReport, "r_Project_Inc_UP_List"
        DoCmd.Maximize




End Sub
Public Sub CB_AllProjects_Report_Inc_UP_Data(pcode, rep_Month, Active_Month, budget_curr, budget_type_str, budget_type_str_qty_Mon)

    Dim db As dao.Database
    Set db = CurrentDb
    Dim qdf_qty, qdf, qdf_unfiltered_total, qdf_group, qdf_L6 As dao.QueryDef
    Dim strSql, strSQL_Qty, strUnfiltered, strSQL_Grouped, strUnfiltered_L6 As String
    Dim rst As Recordset
    Dim rsDao As dao.Recordset
    Dim i As Integer
    
    On Error Resume Next
    DoCmd.SetWarnings False
    DoCmd.DeleteObject acTable, "t_AllProjects_Unfiltered_Total"
    'DoCmd.DeleteObject acQuery, "q_AllProjects_UP_Anaylsis_Data_Unfiltered"
    'DoCmd.DeleteObject acQuery, "q_AllProjects_Unfiltered_Total"
    DoCmd.SetWarnings True
    On Error GoTo 0
    
        Set qdf = db.QueryDefs("q_AllProjects_UP_Anaylsis_Data")
        Set qdf_qty = db.QueryDefs("q_AllProjects_Completed_Qty")
        Set qdf_group = db.QueryDefs("q_AllProjects_Completed_Qty_Grouped")
        Set qdf_L6 = db.QueryDefs("q_AllProjects_UP_Anaylsis_Data_Unfiltered")
        
            strSQL_Qty = "SELECT t_" & budget_type_str & "_Inc_Qty.rep_Month " & _
                    ",t_" & budget_type_str & "_Inc_Qty.PC " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_1 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_2 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_3 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_4 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_5 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_6 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Inc_Base_Mon " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Inc_Base_Qty AS Inc_Completed_Qty " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Key_R_PC_L6 " & _
                    "FROM t_" & budget_type_str & "_Inc_Qty " & _
                    "GROUP BY t_" & budget_type_str & "_Inc_Qty.rep_Month " & _
                    ",t_" & budget_type_str & "_Inc_Qty.PC " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_1 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_2 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_3 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_4 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_5 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.L_6 " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Inc_Base_Mon " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Inc_Base_Qty " & _
                    ",t_" & budget_type_str & "_Inc_Qty.Key_R_PC_L6 " & _
                    "HAVING t_" & budget_type_str & "_Inc_Qty.Inc_Base_Mon <=#" & Format(Active_Month, "yyyy\/mm\/dd") & "#" & ""
           
           strSql = "SELECT " & budget_curr & ".rep_Month " & _
                     "," & budget_curr & ".Key_R_PC_L6 " & _
                     "," & budget_curr & ".PC " & _
                     "," & budget_curr & ".L_1 " & _
                     "," & budget_curr & ".L_2 " & _
                     "," & budget_curr & ".L_3 " & _
                     "," & budget_curr & ".L_4 " & _
                     "," & budget_curr & ".L_5 " & _
                     "," & budget_curr & ".L_6 " & _
                     "," & budget_curr & ".Currency " & _
                     "," & budget_curr & ".Month " & _
                     ",IIf([Exp_" & budget_type_str_qty_Mon & "_Qty] Is Not Null,[Exp_" & budget_type_str_qty_Mon & "_Qty],0) AS Qty_Expense " & _
                     ",IIf([t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty] Is Not Null,[t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty],0) AS Qty_Income " & _
                     "," & budget_curr & ".Expense " & _
                     "," & budget_curr & ".Income " & _
                     "," & budget_curr & ".Profit " & _
                     "FROM (" & budget_curr & " " & _
                     "LEFT JOIN t_" & budget_type_str & "_Qty ON (" & budget_curr & ".Key_R_PC_L6 = t_" & budget_type_str & "_Qty.Key_R_PC_L6) " & _
                     "AND (" & budget_curr & ".Month = t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Mon)) " & _
                     "LEFT JOIN t_" & budget_type_str & "_Inc_Qty ON (" & budget_curr & ".Key_R_PC_L6 = t_" & budget_type_str & "_Inc_Qty.Key_R_PC_L6) " & _
                     "AND (" & budget_curr & ".Month = t_" & budget_type_str & "_Inc_Qty.Inc_" & "Base" & "_Mon) " & _
                     "WHERE (" & budget_curr & ".Month)>#" & Format(Active_Month, "yyyy\/mm\/dd") & "#" & " AND (" & budget_curr & ".rep_Month)=" & "'" & rep_Month & "'" & _
                     " AND ((" & budget_curr & ".PC)=" & "'" & pcode & "'" & ") " & _
                     "GROUP BY " & budget_curr & ".rep_Month "
            strSql = strSql & "," & budget_curr & ".Key_R_PC_L6 " & _
                     "," & budget_curr & ".PC " & _
                     "," & budget_curr & ".L_1 " & _
                     "," & budget_curr & ".L_2 " & _
                     "," & budget_curr & ".L_3 " & _
                     "," & budget_curr & ".L_4 " & _
                     "," & budget_curr & ".L_5 " & _
                     "," & budget_curr & ".L_6 " & _
                     "," & budget_curr & ".Currency " & _
                     "," & budget_curr & ".Month " & _
                     ",IIf([Exp_" & budget_type_str_qty_Mon & "_Qty] Is Not Null,[Exp_" & budget_type_str_qty_Mon & "_Qty],0) " & _
                     ",IIf([t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty] Is Not Null,[t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty],0) " & _
                     "," & budget_curr & ".Expense " & _
                     "," & budget_curr & ".Income " & _
                     "," & budget_curr & ".Profit"
                  
                  
          strSQL_Grouped = "SELECT q_AllProjects_Completed_Qty.rep_Month " & _
                        ",q_AllProjects_Completed_Qty.PC " & _
                        ",q_AllProjects_Completed_Qty.L_1 " & _
                        ",q_AllProjects_Completed_Qty.L_2 " & _
                        ",q_AllProjects_Completed_Qty.L_3 " & _
                        ",q_AllProjects_Completed_Qty.L_4 " & _
                        ",q_AllProjects_Completed_Qty.L_5 " & _
                        ",q_AllProjects_Completed_Qty.L_6 " & _
                        ",Sum(q_AllProjects_Completed_Qty.Inc_Completed_Qty) AS Inc_Comp_Qty " & _
                        ",q_AllProjects_Completed_Qty.Key_R_PC_L6 " & _
                        "FROM q_AllProjects_Completed_Qty " & _
                        "GROUP BY q_AllProjects_Completed_Qty.rep_Month " & _
                        ",q_AllProjects_Completed_Qty.PC " & _
                        ",q_AllProjects_Completed_Qty.L_1 " & _
                        ",q_AllProjects_Completed_Qty.L_2 " & _
                        ",q_AllProjects_Completed_Qty.L_3 " & _
                        ",q_AllProjects_Completed_Qty.L_4 " & _
                        ",q_AllProjects_Completed_Qty.L_5 " & _
                        ",q_AllProjects_Completed_Qty.L_6 " & _
                        ",q_AllProjects_Completed_Qty.Key_R_PC_L6"

            strUnfiltered = "SELECT q_AllProjects_UP_Anaylsis_Data.rep_Month " & _
                    ",q_AllProjects_UP_Anaylsis_Data.PC " & _
                    ",q_AllProjects_UP_Anaylsis_Data.Currency " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Expense) AS ExpGT_Unfiltered " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Income) AS IncGT_Unfiltered " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Profit) AS ProfitGT_Unfiltered " & _
                    "FROM q_AllProjects_UP_Anaylsis_Data " & _
                    "GROUP BY q_AllProjects_UP_Anaylsis_Data.rep_Month " & _
                    ",q_AllProjects_UP_Anaylsis_Data.PC " & _
                    ",q_AllProjects_UP_Anaylsis_Data.Currency"

            strUnfiltered_L6 = "SELECT " & budget_curr & ".rep_Month " & _
                         "," & budget_curr & ".Key_R_PC_L6 " & _
                         "," & budget_curr & ".PC " & _
                         "," & budget_curr & ".L_1 " & _
                         "," & budget_curr & ".L_2 " & _
                         "," & budget_curr & ".L_3 " & _
                         "," & budget_curr & ".L_4 " & _
                         "," & budget_curr & ".L_5 " & _
                         "," & budget_curr & ".L_6 " & _
                         "," & budget_curr & ".Currency " & _
                         "," & budget_curr & ".Month " & _
                         ",IIf([Exp_CB_Qty] Is Not Null,[Exp_CB_Qty],0) AS Qty_Expense " & _
                         ",IIf([t_CB_Inc_Qty].[Inc_Base_Qty] Is Not Null,[t_CB_Inc_Qty].[Inc_Base_Qty],0) AS Qty_Income " & _
                         "," & budget_curr & ".Expense " & _
                         "," & budget_curr & ".Income " & _
                         "," & budget_curr & ".Profit " & _
                         "FROM (" & budget_curr & " " & _
                         "LEFT JOIN t_CB_Qty ON (" & budget_curr & ".Month = t_CB_Qty.Exp_CB_Mon) " & _
                         "AND (" & budget_curr & ".Key_R_PC_L6 = t_CB_Qty.Key_R_PC_L6)) " & _
                         "LEFT JOIN t_CB_Inc_Qty ON (" & budget_curr & ".Month = t_CB_Inc_Qty.Inc_Base_Mon) " & _
                         "AND (" & budget_curr & ".Key_R_PC_L6 = t_CB_Inc_Qty.Key_R_PC_L6) " & _
                         "WHERE (" & budget_curr & ".rep_Month)=" & "'" & rep_Month & "'" & _
                        " AND ((" & budget_curr & ".PC)=" & "'" & pcode & "'" & ") " & _
                         "GROUP BY " & budget_curr & ".rep_Month " & _
                         "," & budget_curr & ".Key_R_PC_L6"
                strUnfiltered_L6 = strUnfiltered_L6 & "," & budget_curr & ".PC " & _
                         "," & budget_curr & ".L_1 " & _
                         "," & budget_curr & ".L_2 " & _
                         "," & budget_curr & ".L_3 " & _
                         "," & budget_curr & ".L_4 " & _
                         "," & budget_curr & ".L_5 " & _
                         "," & budget_curr & ".L_6 " & _
                         "," & budget_curr & ".Currency " & _
                         "," & budget_curr & ".Month " & _
                         ",IIf([Exp_CB_Qty] Is Not Null,[Exp_CB_Qty],0) " & _
                         ",IIf([t_CB_Inc_Qty].[Inc_Base_Qty] Is Not Null,[t_CB_Inc_Qty].[Inc_Base_Qty],0) " & _
                         "," & budget_curr & ".Expense " & _
                         "," & budget_curr & ".Income " & _
                         "," & budget_curr & ".Profit"

            DoCmd.SetWarnings False
            
            qdf.Sql = strSql
            qdf_qty.Sql = strSQL_Qty
            qdf_group.Sql = strSQL_Grouped
            qdf_L6.Sql = strUnfiltered_L6
            'Set qdf_unfiltered_total_L6 = db.CreateQueryDef("q_AllProjects_Unfiltered_Total_L6", strUnfiltered_L6)
            

            strSql = "CREATE TABLE t_AllProjects_Unfiltered_Total([rep_Month] TEXT(4), " & _
              "[PC] TEXT(4), [Currency] TEXT(4), [ExpGT_Unfiltered] Number, [IncGT_Unfiltered] Number, [ProfitGT_Unfiltered] Number )"
             
             DoCmd.RunSQL strSql
             
             strSql = "DELETE * From t_AllProjects_Unfiltered_Total"
             
             DoCmd.RunSQL strSql
             
            Set rst = db.OpenRecordset(strUnfiltered, dbOpenDynaset)
            
            'Call OpenRecordsetOutput(rst)

            'With rst
                   'Do While Not .EOF
                      'Debug.Print , .Fields(0), .Fields(1), .Fields(2), .Fields(3), .Fields(4), .Fields(5)
                      'strSQL = "INSERT INTO t_AllProjects_Unfiltered_Total VALUES(""" & rst.Fields(0) & """ , """ & rst.Fields(1) & """, """ & rst.Fields(2) & """, " & Replace(Round(rst.Fields(3), 2), ",", ".") & " , " & Replace(Round(rst.Fields(4), 2), ",", ".") & ", " & Replace(Round(rst.Fields(5), 2), ",", ".") & ")"
                      'db.Execute strSQL
                      
                      '.MoveNext
                   'Loop
            'End With
            
            Set rsDao = db.OpenRecordset("t_AllProjects_Unfiltered_Total", dbOpenTable, dbAppendOnly)
            
            'Debug.Print DLookup("[Active_rep_Month]", strUnfiltered)
            
            With rst
            
            Do While Not .EOF
                
                    rsDao.AddNew
                    
                            For i = 0 To CurrentDb.TableDefs("t_AllProjects_Unfiltered_Total").Fields.Count - 1
                            
                                rsDao.Fields(i) = rst.Fields(i)

                            Next
                            
                    rsDao.Update
                    .MoveNext
                    
                   Loop
                   
            End With
             
            rst.Close
            rsDao.Close
            
              
             'strSQL = "INSERT INTO t_AllProjects_Unfiltered_Total " & _
                        '"SELECT q_AllProjects_Unfiltered_Total.* " & _
                        '"FROM q_AllProjects_Unfiltered_Total"

            'DoCmd.RunSQL strSQL
            
            DoCmd.SetWarnings True
            
           
End Sub

Private Sub Command954_Click()
       
Dim db As dao.Database
Set db = CurrentDb
Dim qdf As dao.QueryDef
Dim strSql, rep_month_new As String
Dim X As Integer

On Error Resume Next
DoCmd.SetWarnings False
DoCmd.DeleteObject acQuery, "Query"
DoCmd.SetWarnings True
On Error GoTo 0

X = MsgBox("Yeni bütçe dönem açmak için lütfen onay veriniz.", vbQuestion + vbYesNo, "Yeni Bütçe Dönemi")
If X = vbYes Then

DoCmd.SetWarnings False

If Right(DMax("[rep_Month]", "[t_Rep_Month]"), 2) <> 12 Then

    rep_month_new = DMax("[rep_Month]", "[t_Rep_Month]") + 1
    
Else

    rep_month_new = Left(DMax("[rep_Month]", "[t_Rep_Month]"), 2) + 1 & "01"
    
End If


    Set qdf = CurrentDb.CreateQueryDef("Query")
    qdf.Connect = CurrentDb.Properties![Global_Conn_String]
    qdf.Sql = "DELETE FROM t_rep_month WHERE rep_Month=" & "'" & rep_month_new & "';"
    qdf.ReturnsRecords = False
    CurrentDb.QueryDefs("Query").Execute
    
    qdf.Sql = "INSERT INTO t_rep_month (rep_month, rep_month_date) VALUES (" & "'" & rep_month_new & "'," & "'" & Format(CDate(Format(Right(rep_month_new, 2), "00") & ".01" & ".20" & Format(Left(rep_month_new, 2), "00") & ""), "dd.mm.yyyy") & "'" & ");"
    qdf.ReturnsRecords = False
    CurrentDb.QueryDefs("Query").Execute
            
            
    strSql = "DELETE t_Rep_Month.* " & _
            "FROM t_Rep_Month"
  
    DoCmd.RunSQL strSql

    strSql = "INSERT INTO t_Rep_Month " & _
            "SELECT zz_public_t_rep_month.* " & _
            "FROM zz_public_t_rep_month"

    DoCmd.RunSQL strSql
        
    Me.Refresh
    Me.Combo1002.Value = DMax("[rep_Month]", "[t_Rep_Month]")
    DoCmd.DeleteObject acQuery, "Query"
    DoCmd.SetWarnings True

Else
End If

End Sub

Private Sub Command982_Click()

Dim db As dao.Database
Set db = CurrentDb
Dim qdf As dao.QueryDef
Dim strSql, rep_month_new As String
Dim X As Integer

On Error Resume Next
DoCmd.SetWarnings False
DoCmd.DeleteObject acQuery, "Query"
DoCmd.SetWarnings True
On Error GoTo 0

X = MsgBox("Bütçe dönemi silmek için lütfen onay veriniz.", vbQuestion + vbYesNo, "Bütçe Dönemi Silme")
If X = vbYes Then

DoCmd.SetWarnings False

    Set qdf = CurrentDb.CreateQueryDef("Query")
    qdf.Connect = CurrentDb.Properties![Global_Conn_String]
    qdf.Sql = "DELETE FROM t_rep_month WHERE rep_Month=" & "'" & Me.Combo1002 & "';"
    qdf.ReturnsRecords = False
    CurrentDb.QueryDefs("Query").Execute
    
    DoCmd.RunSQL "DELETE t_Rep_Month.* " & _
            "FROM t_Rep_Month"

    DoCmd.RunSQL "INSERT INTO t_Rep_Month " & _
            "SELECT zz_public_t_rep_month.* " & _
            "FROM zz_public_t_rep_month"
    
    Me.Refresh
    Me.Combo1002.Value = DMax("[rep_Month]", "[t_Rep_Month]")
    DoCmd.DeleteObject acQuery, "Query"
    DoCmd.SetWarnings True
    
Else
End If

End Sub

Private Sub Form_Close()
Call log("Çıkış yapıldı", Me.Name)
    On Error Resume Next
    
        If End_User Then
        
            DoCmd.OpenForm "Main_Menu"
            
        End If
        
    DoCmd.SetWarnings False
    
 
    DoCmd.RunSQL "DELETE t_Rep_Month.* " & _
            "FROM t_Rep_Month"

    DoCmd.RunSQL "INSERT INTO t_Rep_Month " & _
            "SELECT zz_public_t_rep_month.* " & _
            "FROM zz_public_t_rep_month"

    DoCmd.DeleteObject acTable, "t_AllProjects_Unfiltered_Total"
    DoCmd.DeleteObject acQuery, "q_AllProjects_Unfiltered_Total"
    DoCmd.SetWarnings True

End Sub

Private Sub Form_Load()
Call log("Giriş yapıldı", Me.Name)
DoCmd.Maximize

Me.cmb_up_pc.Value = CurrentDb.Properties![project_code_defined]
Me.Combo1017.Value = CurrentDb.Properties![project_code_defined]
Me.Combo653.Value = CurrentDb.Properties![project_code_defined]
Me.cmb_up_budget_month.Enabled = False
Me.cmb_up_budget_type.Enabled = False
Me.cmb_budget_curr.Enabled = True
Me.Combo631.Enabled = False
Me.Combo634.Enabled = False
Me.Combo636.Enabled = False
Me.Combo663.Enabled = False
Me.Combo662.Enabled = False
Me.Combo667.Enabled = True
Me.Combo666.Enabled = False
Me.Combo654.Enabled = False
Me.Combo655.Enabled = False
Me.Combo656.Enabled = True
Me.Combo659.Enabled = False
Me.Combo660.Enabled = False
Me.Combo661.Enabled = False
Me.Combo645.Enabled = False
Me.Combo649.Enabled = True

    DoCmd.SetWarnings False
    
 
    DoCmd.RunSQL "DELETE t_Rep_Month.* " & _
            "FROM t_Rep_Month"

    DoCmd.RunSQL "INSERT INTO t_Rep_Month " & _
            "SELECT zz_public_t_rep_month.* " & _
            "FROM zz_public_t_rep_month"
            
    DoCmd.SetWarnings True

End Sub

Sub CB_AllProjects_Report_UP_Data(pcode, rep_Month, Active_Month, budget_curr, budget_type_str, budget_type_str_qty_Mon)

    Dim db As dao.Database
    Set db = CurrentDb
    Dim qdf_qty, qdf, qdf_unfiltered_total, qdf_group, qdf_L6 As dao.QueryDef
    Dim strSql, strSQL_Qty, strUnfiltered, strSQL_Grouped, strUnfiltered_L6 As String
    Dim rst As Recordset
    Dim rsDao As dao.Recordset
    Dim i As Integer
    
    On Error Resume Next
    DoCmd.SetWarnings False
    DoCmd.DeleteObject acTable, "t_AllProjects_Unfiltered_Total"
    'DoCmd.DeleteObject acQuery, "q_AllProjects_UP_Anaylsis_Data_Unfiltered"
    'DoCmd.DeleteObject acQuery, "q_AllProjects_Unfiltered_Total"
    DoCmd.SetWarnings True
    On Error GoTo 0
    
        Set qdf = db.QueryDefs("q_AllProjects_UP_Anaylsis_Data")
        Set qdf_qty = db.QueryDefs("q_AllProjects_Completed_Qty")
        Set qdf_group = db.QueryDefs("q_AllProjects_Completed_Qty_Grouped")
        Set qdf_L6 = db.QueryDefs("q_AllProjects_UP_Anaylsis_Data_Unfiltered")
        
            strSQL_Qty = "SELECT t_" & budget_type_str & "_Qty.rep_Month " & _
                    ",t_" & budget_type_str & "_Qty.PC " & _
                    ",t_" & budget_type_str & "_Qty.L_1 " & _
                    ",t_" & budget_type_str & "_Qty.L_2 " & _
                    ",t_" & budget_type_str & "_Qty.L_3 " & _
                    ",t_" & budget_type_str & "_Qty.L_4 " & _
                    ",t_" & budget_type_str & "_Qty.L_5 " & _
                    ",t_" & budget_type_str & "_Qty.L_6 " & _
                    ",t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Mon " & _
                    ",t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Qty AS Exp_Completed_Qty " & _
                    ",t_" & budget_type_str & "_Qty.Key_R_PC_L6 " & _
                    "FROM t_" & budget_type_str & "_Qty " & _
                    "GROUP BY t_" & budget_type_str & "_Qty.rep_Month " & _
                    ",t_" & budget_type_str & "_Qty.PC " & _
                    ",t_" & budget_type_str & "_Qty.L_1 " & _
                    ",t_" & budget_type_str & "_Qty.L_2 " & _
                    ",t_" & budget_type_str & "_Qty.L_3 " & _
                    ",t_" & budget_type_str & "_Qty.L_4 " & _
                    ",t_" & budget_type_str & "_Qty.L_5 " & _
                    ",t_" & budget_type_str & "_Qty.L_6 " & _
                    ",t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Mon " & _
                    ",t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Qty " & _
                    ",t_" & budget_type_str & "_Qty.Key_R_PC_L6 " & _
                    "HAVING t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Mon <=#" & Format(Active_Month, "yyyy\/mm\/dd") & "#" & ""
           
            strSql = "SELECT " & budget_curr & ".rep_Month " & _
                     "," & budget_curr & ".Key_R_PC_L6 " & _
                     "," & budget_curr & ".PC " & _
                     "," & budget_curr & ".L_1 " & _
                     "," & budget_curr & ".L_2 " & _
                     "," & budget_curr & ".L_3 " & _
                     "," & budget_curr & ".L_4 " & _
                     "," & budget_curr & ".L_5 " & _
                     "," & budget_curr & ".L_6 " & _
                     "," & budget_curr & ".Currency " & _
                     "," & budget_curr & ".Month " & _
                     ",IIf([Exp_" & budget_type_str_qty_Mon & "_Qty] Is Not Null,[Exp_" & budget_type_str_qty_Mon & "_Qty],0) AS Qty_Expense " & _
                     ",IIf([t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty] Is Not Null,[t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty],0) AS Qty_Income " & _
                     "," & budget_curr & ".Expense " & _
                     "," & budget_curr & ".Income " & _
                     "," & budget_curr & ".Profit " & _
                     "FROM (" & budget_curr & " " & _
                     "LEFT JOIN t_" & budget_type_str & "_Qty ON (" & budget_curr & ".Key_R_PC_L6 = t_" & budget_type_str & "_Qty.Key_R_PC_L6) " & _
                     "AND (" & budget_curr & ".Month = t_" & budget_type_str & "_Qty.Exp_" & budget_type_str_qty_Mon & "_Mon)) " & _
                     "LEFT JOIN t_" & budget_type_str & "_Inc_Qty ON (" & budget_curr & ".Key_R_PC_L6 = t_" & budget_type_str & "_Inc_Qty.Key_R_PC_L6) " & _
                     "AND (" & budget_curr & ".Month = t_" & budget_type_str & "_Inc_Qty.Inc_" & "Base" & "_Mon) " & _
                     "WHERE (" & budget_curr & ".Month)>#" & Format(Active_Month, "yyyy\/mm\/dd") & "#" & " AND (" & budget_curr & ".rep_Month)=" & "'" & rep_Month & "'" & _
                     " AND ((" & budget_curr & ".PC)=" & "'" & pcode & "'" & ") " & _
                     "GROUP BY " & budget_curr & ".rep_Month "
            strSql = strSql & "," & budget_curr & ".Key_R_PC_L6 " & _
                     "," & budget_curr & ".PC " & _
                     "," & budget_curr & ".L_1 " & _
                     "," & budget_curr & ".L_2 " & _
                     "," & budget_curr & ".L_3 " & _
                     "," & budget_curr & ".L_4 " & _
                     "," & budget_curr & ".L_5 " & _
                     "," & budget_curr & ".L_6 " & _
                     "," & budget_curr & ".Currency " & _
                     "," & budget_curr & ".Month " & _
                     ",IIf([Exp_" & budget_type_str_qty_Mon & "_Qty] Is Not Null,[Exp_" & budget_type_str_qty_Mon & "_Qty],0) " & _
                     ",IIf([t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty] Is Not Null,[t_" & budget_type_str & "_Inc_Qty].[Inc_" & "Base" & "_Qty],0) " & _
                     "," & budget_curr & ".Expense " & _
                     "," & budget_curr & ".Income " & _
                     "," & budget_curr & ".Profit"
                  
                  
            strSQL_Grouped = "SELECT q_AllProjects_Completed_Qty.rep_Month " & _
                    ",q_AllProjects_Completed_Qty.PC " & _
                    ",q_AllProjects_Completed_Qty.L_1 " & _
                    ",q_AllProjects_Completed_Qty.L_2 " & _
                    ",q_AllProjects_Completed_Qty.L_3 " & _
                    ",q_AllProjects_Completed_Qty.L_4 " & _
                    ",q_AllProjects_Completed_Qty.L_5 " & _
                    ",q_AllProjects_Completed_Qty.L_6 " & _
                    ",Sum(q_AllProjects_Completed_Qty.Exp_Completed_Qty) AS Exp_Comp_Qty " & _
                    ",q_AllProjects_Completed_Qty.Key_R_PC_L6 " & _
                    "FROM q_AllProjects_Completed_Qty " & _
                    "GROUP BY q_AllProjects_Completed_Qty.rep_Month " & _
                    ",q_AllProjects_Completed_Qty.PC " & _
                    ",q_AllProjects_Completed_Qty.L_1 " & _
                    ",q_AllProjects_Completed_Qty.L_2 " & _
                    ",q_AllProjects_Completed_Qty.L_3 " & _
                    ",q_AllProjects_Completed_Qty.L_4 " & _
                    ",q_AllProjects_Completed_Qty.L_5 " & _
                    ",q_AllProjects_Completed_Qty.L_6 " & _
                    ",q_AllProjects_Completed_Qty.Key_R_PC_L6"
            
            strUnfiltered = "SELECT q_AllProjects_UP_Anaylsis_Data.rep_Month " & _
                    ",q_AllProjects_UP_Anaylsis_Data.PC " & _
                    ",q_AllProjects_UP_Anaylsis_Data.Currency " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Expense) AS ExpGT_Unfiltered " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Income) AS IncGT_Unfiltered " & _
                    ",Sum(q_AllProjects_UP_Anaylsis_Data.Profit) AS ProfitGT_Unfiltered " & _
                    "FROM q_AllProjects_UP_Anaylsis_Data " & _
                    "GROUP BY q_AllProjects_UP_Anaylsis_Data.rep_Month " & _
                    ",q_AllProjects_UP_Anaylsis_Data.PC " & _
                    ",q_AllProjects_UP_Anaylsis_Data.Currency"
                    
            strUnfiltered_L6 = "SELECT " & budget_curr & ".rep_Month " & _
                         "," & budget_curr & ".Key_R_PC_L6 " & _
                         "," & budget_curr & ".PC " & _
                         "," & budget_curr & ".L_1 " & _
                         "," & budget_curr & ".L_2 " & _
                         "," & budget_curr & ".L_3 " & _
                         "," & budget_curr & ".L_4 " & _
                         "," & budget_curr & ".L_5 " & _
                         "," & budget_curr & ".L_6 " & _
                         "," & budget_curr & ".Currency " & _
                         "," & budget_curr & ".Month " & _
                         ",IIf([Exp_CB_Qty] Is Not Null,[Exp_CB_Qty],0) AS Qty_Expense " & _
                         ",IIf([t_CB_Inc_Qty].[Inc_Base_Qty] Is Not Null,[t_CB_Inc_Qty].[Inc_Base_Qty],0) AS Qty_Income " & _
                         "," & budget_curr & ".Expense " & _
                         "," & budget_curr & ".Income " & _
                         "," & budget_curr & ".Profit " & _
                         "FROM (" & budget_curr & " " & _
                         "LEFT JOIN t_CB_Qty ON (" & budget_curr & ".Month = t_CB_Qty.Exp_CB_Mon) " & _
                         "AND (" & budget_curr & ".Key_R_PC_L6 = t_CB_Qty.Key_R_PC_L6)) " & _
                         "LEFT JOIN t_CB_Inc_Qty ON (" & budget_curr & ".Month = t_CB_Inc_Qty.Inc_Base_Mon) " & _
                         "AND (" & budget_curr & ".Key_R_PC_L6 = t_CB_Inc_Qty.Key_R_PC_L6) " & _
                         "WHERE (" & budget_curr & ".rep_Month)=" & "'" & rep_Month & "'" & _
                        " AND ((" & budget_curr & ".PC)=" & "'" & pcode & "'" & ") " & _
                         "GROUP BY " & budget_curr & ".rep_Month " & _
                         "," & budget_curr & ".Key_R_PC_L6"
                strUnfiltered_L6 = strUnfiltered_L6 & "," & budget_curr & ".PC " & _
                         "," & budget_curr & ".L_1 " & _
                         "," & budget_curr & ".L_2 " & _
                         "," & budget_curr & ".L_3 " & _
                         "," & budget_curr & ".L_4 " & _
                         "," & budget_curr & ".L_5 " & _
                         "," & budget_curr & ".L_6 " & _
                         "," & budget_curr & ".Currency " & _
                         "," & budget_curr & ".Month " & _
                         ",IIf([Exp_CB_Qty] Is Not Null,[Exp_CB_Qty],0) " & _
                         ",IIf([t_CB_Inc_Qty].[Inc_Base_Qty] Is Not Null,[t_CB_Inc_Qty].[Inc_Base_Qty],0) " & _
                         "," & budget_curr & ".Expense " & _
                         "," & budget_curr & ".Income " & _
                         "," & budget_curr & ".Profit"

              
            DoCmd.SetWarnings False
            
            qdf.Sql = strSql
            qdf_qty.Sql = strSQL_Qty
            qdf_group.Sql = strSQL_Grouped
            qdf_L6.Sql = strUnfiltered_L6
            'Set qdf_unfiltered_total = db.CreateQueryDef("q_AllProjects_Unfiltered_Total", strUnfiltered)
            
            'Set qdf_unfiltered_total_L6 = db.CreateQueryDef("q_AllProjects_Unfiltered_Total_L6", strUnfiltered_L6)
             
            strSql = "CREATE TABLE t_AllProjects_Unfiltered_Total([rep_Month] TEXT(4), " & _
              "[PC] TEXT(4), [Currency] TEXT(4), [ExpGT_Unfiltered] Number, [IncGT_Unfiltered] Number, [ProfitGT_Unfiltered] Number )"
             
             DoCmd.RunSQL strSql
             
             strSql = "DELETE * From t_AllProjects_Unfiltered_Total"
             
             DoCmd.RunSQL strSql
             
            Set rst = db.OpenRecordset(strUnfiltered, dbOpenDynaset)
            
            'Call OpenRecordsetOutput(rst)

            'With rst
                   'Do While Not .EOF
                      'Debug.Print , .Fields(0), .Fields(1), .Fields(2), .Fields(3), .Fields(4), .Fields(5)
                      'strSQL = "INSERT INTO t_AllProjects_Unfiltered_Total VALUES(""" & rst.Fields(0) & """ , """ & rst.Fields(1) & """, """ & rst.Fields(2) & """, " & Replace(Round(rst.Fields(3), 2), ",", ".") & " , " & Replace(Round(rst.Fields(4), 2), ",", ".") & ", " & Replace(Round(rst.Fields(5), 2), ",", ".") & ")"
                      'db.Execute strSQL
                      
                      '.MoveNext
                   'Loop
            'End With
            
            Set rsDao = db.OpenRecordset("t_AllProjects_Unfiltered_Total", dbOpenTable, dbAppendOnly)
            
            'Debug.Print DLookup("[Active_rep_Month]", strUnfiltered)
            
            With rst
            
            Do While Not .EOF
                
                    rsDao.AddNew
                    
                            For i = 0 To CurrentDb.TableDefs("t_AllProjects_Unfiltered_Total").Fields.Count - 1
                            
                                rsDao.Fields(i) = rst.Fields(i)

                            Next
                            
                    rsDao.Update
                    .MoveNext
                    
                   Loop
                   
            End With
             
            rst.Close
            rsDao.Close


             'strSQL = "INSERT INTO t_AllProjects_Unfiltered_Total " & _
                        '"SELECT q_AllProjects_Unfiltered_Total.* " & _
                        '"FROM q_AllProjects_Unfiltered_Total"

            'DoCmd.RunSQL strSQL
            
            DoCmd.SetWarnings True
            
           
End Sub




 Sub OpenRecordsetOutput(rstOutput As Recordset)
     
       ' Enumerate the specified Recordset object.
       With rstOutput
          Do While Not .EOF
             Debug.Print , .Fields(0), .Fields(1), .Fields(2), .Fields(3), .Fields(4), .Fields(5)
             MsgBox ("" & rstOutput.Fields(0))
             .MoveNext
          Loop
       End With
       
End Sub

Sub Monthly_Update()

Dim db As dao.Database
Dim qdf As dao.QueryDef
Set db = CurrentDb()
Dim strSql As String

On Error Resume Next
DoCmd.SetWarnings False
DoCmd.DeleteObject acQuery, "q_CB_Indexes_Monthly_Input"
DoCmd.SetWarnings True
On Error GoTo 0

DoCmd.SetWarnings False

            DoCmd.RunSQL ("Delete * from t_CB_Indexes_Monthly_Input;")

            Set qdf = CurrentDb.CreateQueryDef("q_CB_Indexes_Monthly_Input")
            qdf.Connect = CurrentDb.Properties![Global_Conn_String]
            qdf.Sql = "SELECT * FROM t_cb_indexes_monthly_input;"
            qdf.ReturnsRecords = True
            
            strSql = "INSERT INTO t_CB_Indexes_Monthly_Input ( cb_Month, cb_ufe, cb_tufe, cb_INF_USD, cb_INF_EUR, cb_metal, cb_electricity, cb_cement, cb_petrol, cb_USDTRY, cb_EURTRY ) " & _
                    "SELECT q_CB_Indexes_Monthly_Input.cb_month " & _
                    ",q_CB_Indexes_Monthly_Input.cb_ufe " & _
                    ",q_CB_Indexes_Monthly_Input.cb_tufe " & _
                    ",q_CB_Indexes_Monthly_Input.cb_inf_usd " & _
                    ",q_CB_Indexes_Monthly_Input.cb_inf_eur " & _
                    ",q_CB_Indexes_Monthly_Input.cb_metal " & _
                    ",q_CB_Indexes_Monthly_Input.cb_electricity " & _
                    ",q_CB_Indexes_Monthly_Input.cb_cement " & _
                    ",q_CB_Indexes_Monthly_Input.cb_petrol " & _
                    ",q_CB_Indexes_Monthly_Input.cb_usdtry " & _
                    ",q_CB_Indexes_Monthly_Input.cb_eurtry " & _
                    "FROM q_CB_Indexes_Monthly_Input"

            DoCmd.RunSQL strSql

            'CurrentDb.QueryDefs("q_CB_Indexes_Input").Execute
            'DoCmd.OpenQuery "q_CB_Indexes_Input"
            'DoCmd.Close acQuery, "temp_PG_convert_to_motor_two"
            Set qdf = Nothing
            
            DoCmd.DeleteObject acQuery, "q_CB_Indexes_Monthly_Input"

           
            DoCmd.SetWarnings True
            
End Sub


Sub Indexes_Input()

Dim db As dao.Database
Dim qdf As dao.QueryDef
Set db = CurrentDb()
Dim strSql As String

On Error Resume Next
DoCmd.SetWarnings False
DoCmd.DeleteObject acQuery, "q_CB_Indexes_Input"
DoCmd.SetWarnings True
On Error GoTo 0

            DoCmd.SetWarnings False

            DoCmd.RunSQL ("Delete * from t_CB_Indexes_Input;")

            Set qdf = CurrentDb.CreateQueryDef("q_CB_Indexes_Input")
            qdf.Connect = CurrentDb.Properties![Global_Conn_String]
            qdf.Sql = "SELECT * FROM t_cb_indexes_input;"
            qdf.ReturnsRecords = True
            
            strSql = "INSERT INTO t_CB_Indexes_Input ( cb_year, cb_ufe, cb_tufe, cb_INF_USD, cb_INF_EUR, cb_metal, cb_electricity, cb_cement, cb_petrol, [cb_USD/TRY], [cb_EUR/TRY] ) " & _
                    "SELECT q_CB_Indexes_Input.cb_year " & _
                    ",q_CB_Indexes_Input.cb_ufe " & _
                    ",q_CB_Indexes_Input.cb_tufe " & _
                    ",q_CB_Indexes_Input.cb_inf_usd " & _
                    ",q_CB_Indexes_Input.cb_inf_eur " & _
                    ",q_CB_Indexes_Input.cb_metal " & _
                    ",q_CB_Indexes_Input.cb_electricity " & _
                    ",q_CB_Indexes_Input.cb_cement " & _
                    ",q_CB_Indexes_Input.cb_petrol " & _
                    ",q_CB_Indexes_Input.cb_usdtry " & _
                    ",q_CB_Indexes_Input.cb_eurtry " & _
                    "FROM q_CB_Indexes_Input"

            DoCmd.RunSQL strSql

            'CurrentDb.QueryDefs("q_CB_Indexes_Input").Execute
            'DoCmd.OpenQuery "q_CB_Indexes_Input"
            'DoCmd.Close acQuery, "temp_PG_convert_to_motor_two"
            Set qdf = Nothing
            
            DoCmd.DeleteObject acQuery, "q_CB_Indexes_Input"
            
            DoCmd.SetWarnings True
            
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

Sub Freeze_Panes_Row_and_Column(cellstring As String, worksheetfreeze, workbookname As String)

Dim xlapp As Object, wkbk As Object


'Workbooks(workbookname).Activate

worksheetfreeze.Activate
worksheetfreeze.Range(cellstring).Select

ActiveWindow.FreezePanes = True


End Sub

Function modify_grandsum_excel(strPath, strProject, rp As String, prjname As String)

Dim wkbk As Workbook
Dim wks As Worksheet
Dim xlapp As Object
Dim i, j, Rowcount As Integer
Dim projectname, rep_Month As String

Dim SourceRange, fillranged As Range
Dim formatCur$, formatDate$, intColor&, colsCurrency$, colsDate$, fnExportToWorkbook, formatPers$, months$
Dim rngstr As String
Dim k, m, n, t, l, c As Long
Dim lRow As Long
Dim rng As Range
Dim cell, start_cell As Range
Dim WS As Worksheet
Dim myValue As Variant
Dim Expense_Start_Date, Income_Start_Date, Expense_End_Date, Income_End_Date As Date
Dim lastcolumn_excel As Integer
Dim datedifferencemon%, Start_column%, filter_column%, start_row%, rowactive%, lastcolumn%, columnactive%
Dim colstr, fillrange As String
Dim first_formula As Boolean
Dim Profit_Start_Cell, Profit_End_Cell, Income_Start_Cell, Income_End_Cell, Expense_Start_Cell, Expense_End_Cell, Second_Start_Cell, Second_End_Cell As Range
Dim Profit_Start_Date, Profit_End_Date, Second_Start_Date, Second_End_Date As Date
Dim Expense_BoQ_Start_Date, Expense_BoQ_End_Date, Income_BoQ_Start_Date, Income_BoQ_End_Date As Date
Dim Expense_BoQ_Start_Cell, Expense_BoQ_End_Cell, Income_BoQ_Start_Cell, Income_BoQ_End_Cell As Range



   Set wkbk = ActiveWorkbook
   Set wks = wkbk.Worksheets("GİDER HESAP")
   
   Set xlapp = CreateObject("Excel.Application")
        'Set wkbk = Workbooks.Open(strPath & "\" & strProject & ".xlsx")
        'Call WaitFor_Func(2)
        'xlapp.DisplayAlerts = False
        'xlapp.Visible = True
        'xlapp.WindowState = xlMaximized
        'Set wks = wkbk.Worksheets("GİDER HESAP")
        
projectname = prjname
rep_Month = rp

'GoTo Skip_Last:

On Error Resume Next
wkbk.Sheets("BÜTÇE TOPLAM").Delete
wkbk.Sheets("L6 KODLAR").Delete
wkbk.Sheets("L3 KODLAR").Delete
wkbk.Sheets("L4 KODLAR").Delete
wkbk.Sheets("L5 KODLAR").Delete

wkbk.Sheets("TOPLAM GELİR").Move After:=wkbk.Sheets("GELİR ESK. PROJE")
wkbk.Sheets("AYLIK ENDEKSLER").Move After:=wkbk.Sheets("TOPLAM GELİR")
wkbk.Sheets("ENDEKS ARTIŞ").Move After:=wkbk.Sheets("AYLIK ENDEKSLER")

'i = 1
'For Each one In wkbk.Sheets
'Debug.Print Sheets(i).Name
'i = i + 1
'Next


wkbk.Sheets("TOPLAM GELİR").Tab.Color = RGB(195, 215, 155)
wkbk.Sheets("TOPLAM GİDER").Tab.Color = RGB(150, 54, 52)
wkbk.Sheets("GENEL TOPLAM").Tab.Color = RGB(149, 179, 215)
        
'Debug.Print wkbk.Sheets.Count

    wkbk.Sheets.Add After:=wkbk.Sheets(wkbk.Sheets.Count)
    wkbk.Sheets(wkbk.Sheets.Count).Name = "L6 KODLAR"
    
    'wkbk.Sheets("TOPLAM GELİR").Select
    'wkbk.Sheets("TOPLAM GELİR").Range("A2").Select
    'wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("A2"), wkbk.Sheets("TOPLAM GELİR").Range("A2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("A2"), wkbk.Sheets("TOPLAM GELİR").Range("A2").End(xlDown)).Copy
    
    'wkbk.Sheets("L6 KODLAR").Select
    'wkbk.Sheets("L6 KODLAR").Range("A1").Select
    wkbk.Sheets("L6 KODLAR").Range("A1").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    'wkbk.Sheets("TOPLAM GELİR").Select
    'wkbk.Sheets("TOPLAM GELİR").Range("E2").Select
    'wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("E2"), wkbk.Sheets("TOPLAM GELİR").Range("E2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GELİR").Range(wkbk.Sheets("TOPLAM GELİR").Range("E2"), wkbk.Sheets("TOPLAM GELİR").Range("E2").End(xlDown)).Copy
    
    'wkbk.Sheets("L6 KODLAR").Select
    'wkbk.Sheets("L6 KODLAR").Range("B1").Select
    wkbk.Sheets("L6 KODLAR").Range("B1").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    'wkbk.Sheets("TOPLAM GİDER").Select
    'wkbk.Sheets("TOPLAM GİDER").Range("A2").Select
   ' wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("A2"), wkbk.Sheets("TOPLAM GİDER").Range("A2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("A2"), wkbk.Sheets("TOPLAM GİDER").Range("A2").End(xlDown)).Copy
    
    'wkbk.Sheets("L6 KODLAR").Select
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    'wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 1).Select
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    'wkbk.Sheets("TOPLAM GİDER").Select
    'wkbk.Sheets("TOPLAM GİDER").Range("C2").Select
    'wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("C2"), wkbk.Sheets("TOPLAM GİDER").Range("C2").End(xlDown)).Select
    wkbk.Sheets("TOPLAM GİDER").Range(wkbk.Sheets("TOPLAM GİDER").Range("C2"), wkbk.Sheets("TOPLAM GİDER").Range("C2").End(xlDown)).Copy
    
    'wkbk.Sheets("L6 KODLAR").Select
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("B1").End(xlDown).Row
    'wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 2).Select
    wkbk.Sheets("L6 KODLAR").Cells(Rowcount + 1, 2).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
    'wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Cells(1, 3).Formula = "= +A1 & ""."" & B1 "
    wkbk.Sheets("L6 KODLAR").Cells(1, 3).AutoFill Destination:=Range("C1:C" & Rowcount)
    
    wkbk.Sheets("L6 KODLAR").Calculate

    'wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Select
    wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Copy
    
    'wkbk.Sheets("L6 KODLAR").Range(wkbk.Sheets("L6 KODLAR").Range("C1"), wkbk.Sheets("L6 KODLAR").Range("C1").End(xlDown)).Select
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
    
    wkbk.Sheets("L3 KODLAR").Calculate
    
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
    
    wkbk.Sheets("L4 KODLAR").Calculate
    
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
    
    wkbk.Sheets("L5 KODLAR").Calculate
    
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

    wkbk.Sheets("L3 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],7) & "".00.00.000"""
    wkbk.Sheets("L3 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L3 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L3 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L3 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L3 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    wkbk.Sheets("L3 KODLAR").Calculate
    
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L3 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
       
    wkbk.Sheets("L3 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L3 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L3 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L3 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L3 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L3 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L3 KODLAR").AutoFilter.Sort
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
       
    wkbk.Sheets("L4 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],10) & "".00.000"""
    wkbk.Sheets("L4 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L4 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L4 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L4 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L4 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    wkbk.Sheets("L4 KODLAR").Calculate
    
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L4 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
       
    wkbk.Sheets("L4 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L4 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L4 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L4 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L4 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L4 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L4 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L4 KODLAR").Columns("A").Delete
    
    For i = 2 To wkbk.Sheets("L4 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L4 KODLAR").Cells(i, 3).Value = 2
    Next

'-------------------------------------L5 CLEAN CODES------------------------------------------
    
    wkbk.Sheets("L5 KODLAR").Select
    wkbk.Sheets("L5 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L5 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rowcount = wkbk.Sheets("L5 KODLAR").Range("A1").End(xlDown).Row
   
    wkbk.Sheets("L5 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],13) & "".000"""
    wkbk.Sheets("L5 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"

        Rowcount = wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L5 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L5 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L5 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L5 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    wkbk.Sheets("L5 KODLAR").Calculate
    
    wkbk.Sheets("L5 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L5 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    
    wkbk.Sheets("L5 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L5 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L5 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L5 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L5 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L5 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L5 KODLAR").Columns("A").Delete
    
    For i = 2 To wkbk.Sheets("L5 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L5 KODLAR").Cells(i, 3).Value = 3
    Next
    
'-------------------------------------L6 CLEAN CODES------------------------------------------

    wkbk.Sheets("L6 KODLAR").Select
    wkbk.Sheets("L6 KODLAR").Rows("1:1").Select
    wkbk.Sheets("L6 KODLAR").Rows("1:1").Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rowcount = wkbk.Sheets("L6 KODLAR").Range("A1").End(xlDown).Row
       
    wkbk.Sheets("L6 KODLAR").Range("B2").FormulaR1C1 = "=+LEFT(RC[-1],17)"
    wkbk.Sheets("L6 KODLAR").Range("C2").FormulaR1C1 = "=+RIGHT(RC[-2],3)"
        Rowcount = wkbk.Sheets("L6 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L6 KODLAR").Range("B2:B2")
        Set fillranged = wkbk.Sheets("L6 KODLAR").Range("B2:B" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged
        
        Rowcount = wkbk.Sheets("L6 KODLAR").Range("A2").End(xlDown).Row
        Set SourceRange = wkbk.Sheets("L6 KODLAR").Range("C2:C2")
        Set fillranged = wkbk.Sheets("L6 KODLAR").Range("C2:C" & Rowcount)
        SourceRange.AutoFill Destination:=fillranged

    wkbk.Sheets("L6 KODLAR").Calculate
    
    wkbk.Sheets("L6 KODLAR").Columns("B:C").AutoFilter
    
    wkbk.Sheets("L6 KODLAR").Range("B2:C" & Rowcount).Select
    wkbk.Sheets("L6 KODLAR").Range("B2:C" & Rowcount).Copy
    wkbk.Sheets("L6 KODLAR").Range("B2:C" & Rowcount).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    
    wkbk.Sheets("L6 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L6 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L6 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L6 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Sheets("L6 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("C1:C" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
        
    With wkbk.Sheets("L6 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Sheets("L6 KODLAR").Columns("A").Delete
    
    For i = 2 To wkbk.Sheets("L6 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L6 KODLAR").Cells(i, 3).Value = 4
    Next
    
    
'----------------------------------------COMBINE CODES------------------------------------------------
    For i = 4 To 6
    
    Rowcount = wkbk.Sheets("L" & i & " KODLAR").Range("A2").End(xlDown).Row
    
    wkbk.Sheets("L" & i & " KODLAR").Range("A2:C" & Rowcount).Copy
    
    Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row

    wkbk.Sheets("L3 KODLAR").Range("A" & Rowcount + 1).PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    Next i
    
    wkbk.Worksheets("L3 KODLAR").Columns("A:C").AutoFilter
    wkbk.Worksheets("L3 KODLAR").Columns("A:C").AutoFilter
    
    wkbk.Worksheets("L3 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Worksheets("L3 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("A1:A" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
    With ActiveWorkbook.Worksheets("L3 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    wkbk.Worksheets("L3 KODLAR").AutoFilter.Sort.SortFields.Clear
    wkbk.Worksheets("L3 KODLAR").AutoFilter.Sort.SortFields.Add2 Key:= _
        Range("B1:B" & Rowcount), SortOn:=xlSortOnValues, order:=xlAscending, DataOption _
        :=xlSortNormal
    With ActiveWorkbook.Worksheets("L3 KODLAR").AutoFilter.Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    Rowcount = wkbk.Sheets("L3 KODLAR").Range("A2").End(xlDown).Row
    wkbk.Sheets("L3 KODLAR").Cells(2, 4).Formula = "=+IF(C2=1,LEFT(A2,7),IF(C2=2,LEFT(A2,10),IF(C2=3,LEFT(A2,13),A2)))"
    wkbk.Sheets("L3 KODLAR").Cells(2, 4).Select
    wkbk.Sheets("L3 KODLAR").Cells(2, 4).AutoFill Destination:=wkbk.Sheets("L3 KODLAR").Range("D2:D" & Rowcount)
    
    wkbk.Sheets("L3 KODLAR").Calculate
    
    wkbk.Sheets("L3 KODLAR").Columns("D:D").Select
    wkbk.Sheets("L3 KODLAR").Columns("D:D").Copy
    wkbk.Sheets("L3 KODLAR").Columns("D:D").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

    wkbk.Sheets("L3 KODLAR").Columns("D:D").Copy
    wkbk.Sheets("L3 KODLAR").Columns("A:A").Select
    wkbk.Sheets("L3 KODLAR").Columns("A:A").PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    wkbk.Sheets("L3 KODLAR").Columns("D:D").Select
    wkbk.Sheets("L3 KODLAR").Columns("D:D").Delete Shift:=xlToLeft
    
    
    
    
    
wkbk.Sheets("L3 KODLAR").Name = "BÜTÇE TOPLAM"

wkbk.Sheets("L6 KODLAR").Delete
wkbk.Sheets("L4 KODLAR").Delete
wkbk.Sheets("L5 KODLAR").Delete
wkbk.Sheets("L3 KODLAR").Delete
'-----------------------------------GROUPING---------------------------------------

    wkbk.Sheets("BÜTÇE TOPLAM").Outline.AutomaticStyles = False
    wkbk.Sheets("BÜTÇE TOPLAM").Outline.SummaryRow = xlAbove
    wkbk.Sheets("BÜTÇE TOPLAM").Outline.SummaryColumn = xlLeft

    Call RemoveGrouping(wkbk, wkbk.Sheets("BÜTÇE TOPLAM"))

    'A Kolonunda Gruplama bilgisi var
    
    myValue = 3
    
    c = wkbk.Sheets("BÜTÇE TOPLAM").Columns(myValue).Column


    lRow = wkbk.Sheets("BÜTÇE TOPLAM").Cells(wkbk.Sheets("BÜTÇE TOPLAM").Rows.Count, c).End(xlUp).Row + 1
    rngstr = ""
For j = 4 To 1 Step -1

    For i = 2 To lRow
            
            If wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, c).Value = j Then
                If rngstr = "" Then
                    rngstr = "C" & i
                Else
                    For t = 1 To Len(rngstr)
                        
                        If Mid(rngstr, t, 1) = ":" Then
                        rngstr = Left(rngstr, t - 1)
                        GoTo Next_Line
                        End If
                    Next t
Next_Line:
                    rngstr = rngstr & ":C" & wkbk.Sheets("BÜTÇE TOPLAM").Cells(i, c).Row
                End If
            Else
                If rngstr = "" Then
                    
                Else
                    For k = 1 To j - 1 Step 1
                    wkbk.Sheets("BÜTÇE TOPLAM").Range(rngstr).Rows.Group

                    Next k
                    
                    rngstr = ""
                End If
            End If
        Next i
Next j

    'With Outline
        '.AutomaticStyles = False
        '.SummaryRow = xlAbove
        '.SummaryColumn = xlLeft
    'End With

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
        .ColorIndex = xlAutomatic
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
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(3, 3).Value = rep_Month & " GÜNCEL BÜTÇESİ"
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
    
    Expense_Start_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, 5).Value
    

    lastcolumn_excel = wkbk.Sheets("TOPLAM GİDER").Cells(1, wkbk.Sheets("TOPLAM GİDER").Columns.Count).End(xlToLeft).Column
    
    Expense_End_Date = wkbk.Sheets("TOPLAM GİDER").Cells(1, lastcolumn_excel).Value
    Income_Start_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, 7).Value
    
    lastcolumn_excel = wkbk.Sheets("TOPLAM GELİR").Cells(1, wks.Columns.Count).End(xlToLeft).Column
    Income_End_Date = wkbk.Sheets("TOPLAM GELİR").Cells(1, lastcolumn_excel).Value


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

    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Select
    Profit_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value
    Set Profit_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6)
    Selection.End(xlToRight).Select
    Profit_End_Date = Selection.Value
    Set Profit_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_BoQ_Start_Date = Selection.Value
    Set Income_BoQ_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_BoQ_End_Date = Selection.Value
    Set Income_BoQ_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_Start_Date = Selection.Value
    Set Income_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_End_Date = Selection.Value
    Set Income_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Expense_BoQ_Start_Date = Selection.Value
    Set Expense_BoQ_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Expense_BoQ_End_Date = Selection.Value
    Set Expense_BoQ_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
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
    Call Add_Years(Expense_BoQ_Start_Cell.Column, DateDiff("m", Expense_BoQ_Start_Date, Expense_BoQ_End_Date), False)
    Call Add_Years(Income_Start_Cell.Column, DateDiff("m", Income_Start_Date, Income_End_Date), True)
    Call Add_Years(Income_BoQ_Start_Cell.Column, DateDiff("m", Income_BoQ_Start_Date, Income_BoQ_End_Date), False)
    Call Add_Years(Profit_Start_Cell.Column, DateDiff("m", Profit_Start_Date, Profit_End_Date), True)
    
'-------------------------------------------DELETE LATER---------------------------------------------------------------------------------
Skip_Last:
        Set xlapp = CreateObject("Excel.Application")
        Set wkbk = xlapp.Workbooks.Open(strPath & "\" & strProject & ".xlsx")
        'Call WaitFor_Func(2)
        xlapp.DisplayAlerts = False
        xlapp.Visible = True
        xlapp.WindowState = xlMaximized
        

    Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Select
    Profit_Start_Date = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6).Value
    Set Profit_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, 6)
    Selection.End(xlToRight).Select
    Profit_End_Date = Selection.Value
    Set Profit_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_BoQ_Start_Date = Selection.Value
    Set Income_BoQ_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_BoQ_End_Date = Selection.Value
    Set Income_BoQ_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_Start_Date = Selection.Value
    Set Income_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Income_End_Date = Selection.Value
    Set Income_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Expense_BoQ_Start_Date = Selection.Value
    Set Expense_BoQ_Start_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
    Selection.End(xlToRight).Select
    Expense_BoQ_End_Date = Selection.Value
    Set Expense_BoQ_End_Cell = wkbk.Sheets("BÜTÇE TOPLAM").Cells(Selection.Row, Selection.Column)
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
'---------------------------------------------------------------------------------------------------------------------------------------
    
 End Function
   
Private Function Add_Years(Start_Range_column As Integer, total_months As Integer, sum_total As Boolean)

'--------------------------------------------FORMAT EXPENSE ADD YEAR COLUMNS ----------------------------------------------------------

   Dim wkbk As Workbook 'Deletethis
   Set wkbk = ActiveWorkbook
   Dim wks As Worksheet 'deletethis
   Set wks = wkbk.Sheets("BÜTÇE TOPLAM")


   Dim ColumnNames_Array_Excel() As String
   Dim ColumnYearData() As String
   Dim u%, i%, Rowcount%, j%
   Dim SourceRange, fillranged As Range
   u = 1
   Dim colstr, fillrange As String
   ReDim ColumnNames_Array_Excel(u + 1) As String
   ReDim ColumnYearData(u + 1) As String
   
   Set wks = wkbk.Sheets("BÜTÇE TOPLAM")
   
   For i = 1 To total_months
    
        If i = 1 Then
        
        ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column, wks) & ":" & ColumnLetter(Start_Range_column, wks)
        ColumnYearData(u) = year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column).Value)
        
        ElseIf i > 1 Then
            
            If (year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value)) Mod 12 = 0 Then
                u = u + 1
                ReDim Preserve ColumnYearData(u) As String
                ReDim Preserve ColumnNames_Array_Excel(u) As String
                ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column + i + u, wkbk.Sheets("BÜTÇE TOPLAM")) & ":" & ColumnLetter(Start_Range_column + i + u, wkbk.Sheets("BÜTÇE TOPLAM"))
                ColumnYearData(u) = year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i + 1).Value)
                
            ElseIf i = total_months - 1 And (year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i).Value)) Mod 12 <> 0 Then
                u = u + 1
                ReDim Preserve ColumnYearData(u) As String
                ReDim Preserve ColumnNames_Array_Excel(u) As String
                ColumnNames_Array_Excel(u) = ColumnLetter(Start_Range_column + i + u - 1 - ((year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value)) Mod 12), wks) & ":" & ColumnLetter(Start_Range_column + i + u - 1 - ((year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value) * 12 + Month(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1).Value)) Mod 12), wkbk.Sheets("BÜTÇE TOPLAM"))
                ColumnYearData(u) = year(wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, Start_Range_column + i - 1))
                
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
    
    If sum_total Then
    
    For i = 1 To (UBound(ColumnNames_Array_Excel))
    
        If i < UBound(ColumnNames_Array_Excel) Then
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(12, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & "12:" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & "12)"
                    
        Else
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i - 1)).Column).Select
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
    
    Else
    
    wkbk.Sheets("BÜTÇE TOPLAM").Cells(11, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(1)).Column + 1).Select
    Selection.End(xlDown).Select
    Dim start_row%
    start_row = Selection.Row
    
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Select
    wkbk.Sheets("BÜTÇE TOPLAM").Rows("5:5").Find(What:="SEVİYE", After:=ActiveCell, LookIn:=xlFormulas2, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate
        
    Dim filter_column%
    filter_column = ActiveCell.Column
    
    For i = 1 To (UBound(ColumnNames_Array_Excel))
    
        If i < UBound(ColumnNames_Array_Excel) Then
                    
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & start_row & ":" & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i + 1)).Column - 1, wks) & start_row & ")"
                     
        Else
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(5, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i - 1)).Column).Select
                    Selection.End(xlToRight).Select
                    j = Selection.Column
                    wkbk.Sheets("BÜTÇE TOPLAM").Cells(start_row, wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column).Formula = "=+SUBTOTAL(9," & ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(i)).Column + 1, wks) & start_row & ":" & ColumnLetter(Selection.Column, wks) & start_row & ")"
        End If


    Next i
    
    Rowcount = wkbk.Sheets("BÜTÇE TOPLAM").Range("D12").End(xlDown).Row
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(filter_column, wks) & "12:" & ColumnLetter(filter_column, wks) & Rowcount).AutoFilter Field:=1, Criteria1:="4"

    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(1)).Column, wks) & start_row & ":" & ColumnLetter(j, wks) & start_row).Copy
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(wkbk.Sheets("BÜTÇE TOPLAM").Columns(ColumnNames_Array_Excel(1)).Column, wks) & start_row & ":" & ColumnLetter(j, wks) & Rowcount).Select
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.PasteSpecial Paste:=xlPasteFormulas, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    wkbk.Sheets("BÜTÇE TOPLAM").Range(ColumnLetter(filter_column, wks) & "12:" & ColumnLetter(filter_column, wks) & Rowcount).AutoFilter Field:=1
    End If
    
    
End Function

Sub RemoveGrouping(wkbk As Workbook, wks As Worksheet)
    
    Dim b As Long
    For b = 1 To 8
    On Error Resume Next
    wkbk.Sheets(wks).Rows.Ungroup
    Next b
    
End Sub

