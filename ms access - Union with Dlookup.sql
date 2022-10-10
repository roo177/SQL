                    Case "ORJ"
                    
                           strSQL = "SELECT t_CB_Profit_Total_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Income) AS IncomeGT " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Expense) AS ExpenseGT " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Profit) AS ProfitGT " & _
                                     "FROM t_CB_Profit_Total_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_Total_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L2, t_CB_Profit_Total_Mod_ST.Desc_TR_L6, t_CB_Profit_Total_Mod_ST.Currency HAVING t_CB_Profit_Total_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & ";"
                  
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_GT", strSQL)
                            
                            strSQL = "SELECT t_CB_Profit_Total_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Income) AS IncomeRT " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Expense) AS ExpenseRT " & _
                                     ",Sum(t_CB_Profit_Total_Mod_ST.Profit) AS ProfitRT " & _
                                     "FROM t_CB_Profit_Total_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_Total_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_Total_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_Total_Mod_ST.Desc_TR_L2, t_CB_Profit_Total_Mod_ST.Desc_TR_L6, t_CB_Profit_Total_Mod_ST.Currency, t_CB_Profit_Total_Mod_ST.Month"
                            strSQL = strSQL & " HAVING t_CB_Profit_Total_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & _
                                     "AND t_CB_Profit_Total_Mod_ST.Month<=[Forms]![Comparison_Screen]![cmb_Cons_CurrMonth] " & _
                                     ""
 
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_RT", strSQL)
                            
                    Case "EUR"
                    
                           strSQL = "SELECT t_CB_Profit_EUR_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Income) AS IncomeGT " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Expense) AS ExpenseGT " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Profit) AS ProfitGT " & _
                                     "FROM t_CB_Profit_EUR_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_EUR_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L2, t_CB_Profit_EUR_Mod_ST.Desc_TR_L6, t_CB_Profit_EUR_Mod_ST.Currency HAVING t_CB_Profit_EUR_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & ";"
                  
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_GT", strSQL)
                            
                            strSQL = "SELECT t_CB_Profit_EUR_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Income) AS IncomeRT " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Expense) AS ExpenseRT " & _
                                     ",Sum(t_CB_Profit_EUR_Mod_ST.Profit) AS ProfitRT " & _
                                     "FROM t_CB_Profit_EUR_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_EUR_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_EUR_Mod_ST.Desc_TR_L2, t_CB_Profit_EUR_Mod_ST.Desc_TR_L6, t_CB_Profit_EUR_Mod_ST.Currency, t_CB_Profit_EUR_Mod_ST.Month"
                            strSQL = strSQL & " HAVING t_CB_Profit_EUR_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & _
                                     "AND t_CB_Profit_EUR_Mod_ST.Month<=[Forms]![Comparison_Screen]![cmb_Cons_CurrMonth] " & _
                                     ""
 
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_RT", strSQL)
                            
                            
                    Case "USD"
                    
                           strSQL = "SELECT t_CB_Profit_USD_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Income) AS IncomeGT " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Expense) AS ExpenseGT " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Profit) AS ProfitGT " & _
                                     "FROM t_CB_Profit_USD_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_USD_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L2, t_CB_Profit_USD_Mod_ST.Desc_TR_L6, t_CB_Profit_USD_Mod_ST.Currency HAVING t_CB_Profit_USD_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & ";"
                  
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_GT", strSQL)
                            
                            strSQL = "SELECT t_CB_Profit_USD_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Income) AS IncomeRT " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Expense) AS ExpenseRT " & _
                                     ",Sum(t_CB_Profit_USD_Mod_ST.Profit) AS ProfitRT " & _
                                     "FROM t_CB_Profit_USD_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_USD_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_USD_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_USD_Mod_ST.Desc_TR_L2, t_CB_Profit_USD_Mod_ST.Desc_TR_L6, t_CB_Profit_USD_Mod_ST.Currency, t_CB_Profit_USD_Mod_ST.Month"
                            strSQL = strSQL & " HAVING t_CB_Profit_USD_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & _
                                     "AND t_CB_Profit_USD_Mod_ST.Month<=[Forms]![Comparison_Screen]![cmb_Cons_CurrMonth] " & _
                                     ""
 
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_RT", strSQL)
                            
                    Case "TRY"
                    
                           strSQL = "SELECT t_CB_Profit_TRY_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Income) AS IncomeGT " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Expense) AS ExpenseGT " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Profit) AS ProfitGT " & _
                                     "FROM t_CB_Profit_TRY_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_TRY_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L2, t_CB_Profit_TRY_Mod_ST.Desc_TR_L6, t_CB_Profit_TRY_Mod_ST.Currency HAVING t_CB_Profit_TRY_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & ";"
                  
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_GT", strSQL)
                            
                            strSQL = "SELECT t_CB_Profit_TRY_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Currency AS up_Curr " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Income) AS IncomeRT " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Expense) AS ExpenseRT " & _
                                     ",Sum(t_CB_Profit_TRY_Mod_ST.Profit) AS ProfitRT " & _
                                     "FROM t_CB_Profit_TRY_Mod_ST " & _
                                     "GROUP BY t_CB_Profit_TRY_Mod_ST.rep_Month " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_1 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_2 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_4 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_5 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.L_6 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L3 " & _
                                     ",t_CB_Profit_TRY_Mod_ST.Desc_TR_L2, t_CB_Profit_TRY_Mod_ST.Desc_TR_L6, t_CB_Profit_TRY_Mod_ST.Currency, t_CB_Profit_TRY_Mod_ST.Month"
                            strSQL = strSQL & " HAVING t_CB_Profit_TRY_Mod_ST.rep_Month=" & """" & Active_Month_Second & """" & _
                                     "AND t_CB_Profit_TRY_Mod_ST.Month<=[Forms]![Comparison_Screen]![cmb_Cons_CurrMonth] " & _
                                     ""
 
                            Set qdf_Second_Budget = db.CreateQueryDef("q_Second_Budget_RT", strSQL)
                            
                   End Select