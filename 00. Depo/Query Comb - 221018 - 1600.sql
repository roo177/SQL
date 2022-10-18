~sq_c01_Login~sq_ccbx_Project
SELECT [01_P01_Projects_Full].P01_S_Name
FROM 01_P01_Projects_Full;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr2
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr3
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr4
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Project
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c99_Menu Assets~sq_ccbx_Project
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_010
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_03
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_04
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_05
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_06
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_07
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_08
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_09
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_010
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_03
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_04
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_05
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_06
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_07
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_08
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_09
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_010
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_03
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_04
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_05
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_06
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_07
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_08
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_09
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_ccbo_date_By_Project
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo578
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo587
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo590
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo596
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_By_Project
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_Date_Compare_Cons
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_Consolidated
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_Project_Based_All
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_cCombo554
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_cCombo555
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_date_By_Project
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_date_Consolidated
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_date_Project_Based_All
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_Project
SELECT q_Budget_Project_Months.Name AS r03_S_Name, q_Budget_Project_Months.PC AS P_Code
FROM q_Budget_Project_Months
GROUP BY q_Budget_Project_Months.Name, q_Budget_Project_Months.PC;

----------------------------------------------------------------------------------------------------
~sq_cScenario_Screen~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccbo_date_Report
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccbo_Finish_Date
SELECT t_Months.g_Month
FROM t_Months;

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccbo_Start_Date
SELECT t_Months.g_Month
FROM t_Months;

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccmb_Budget_Code
SELECT q_Budget_Project_Months.PC
FROM q_Budget_Project_Months
GROUP BY q_Budget_Project_Months.PC;

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccmb_Budget_Date
SELECT q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month
FROM q_Budget_Project_Months
GROUP BY q_Budget_Project_Months.PC, q_Budget_Project_Months.Budget_Type, q_Budget_Project_Months.rep_Month
HAVING (((q_Budget_Project_Months.PC)=Forms!System_Development!cmb_Budget_Code) And ((q_Budget_Project_Months.Budget_Type)=Forms!System_Development!cmb_Budget_Type));

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccmb_Budget_Type
SELECT DISTINCTROW *
FROM [ ];

----------------------------------------------------------------------------------------------------
~sq_cSystem_Development~sq_ccmb_Del_Project_Code
SELECT t_001_Projects.r03_S_Name
FROM t_001_Projects
GROUP BY t_001_Projects.r03_S_Name;

----------------------------------------------------------------------------------------------------
~sq_cTech_Office~sq_ccmb_Project_Name
SELECT t_001_Projects.r03_S_Name
FROM q_Budget_Project_Months LEFT JOIN t_001_Projects ON q_Budget_Project_Months.PC = t_001_Projects.p_Code;

----------------------------------------------------------------------------------------------------
~sq_dReport1~sq_dc_bb_Metal
SELECT DISTINCTROW *
FROM t_AC_Indexes_Mod;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_AllProjects_Compare_Lvl_4
SELECT q_CB_Sum_Projects_Report_Data_Lvl_4.PC, q_CB_Sum_Projects_Report_Data_Lvl_4.L_1, q_CB_Sum_Projects_Report_Data_Lvl_4.L_2, q_CB_Sum_Projects_Report_Data_Lvl_4.L_3, q_CB_Sum_Projects_Report_Data_Lvl_4.L_4, q_CB_Sum_Projects_Report_Data_Lvl_4.L_5, q_CB_Sum_Projects_Report_Data_Lvl_4.L_6, q_CB_Sum_Projects_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_4.GT_REM, [First_Data_RT]-[Second_Data_RT] AS RT_REM, [First_Data_REM]-[Second_Data_REM] AS REM_REM, q_CB_Sum_Projects_Report_Data_Lvl_4.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L5
FROM q_CB_Sum_Projects_Report_Data_Lvl_4 LEFT JOIN t_001_Projects ON q_CB_Sum_Projects_Report_Data_Lvl_4.PC = t_001_Projects.p_Code
GROUP BY q_CB_Sum_Projects_Report_Data_Lvl_4.PC, q_CB_Sum_Projects_Report_Data_Lvl_4.L_1, q_CB_Sum_Projects_Report_Data_Lvl_4.L_2, q_CB_Sum_Projects_Report_Data_Lvl_4.L_3, q_CB_Sum_Projects_Report_Data_Lvl_4.L_4, q_CB_Sum_Projects_Report_Data_Lvl_4.L_5, q_CB_Sum_Projects_Report_Data_Lvl_4.L_6, q_CB_Sum_Projects_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_4.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_4.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_4.GT_REM, [First_Data_RT]-[Second_Data_RT], [First_Data_REM]-[Second_Data_REM], q_CB_Sum_Projects_Report_Data_Lvl_4.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_4.Desc_TR_L5;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_AllProjects_Compare_Lvl_5
SELECT q_CB_Sum_Projects_Report_Data_Lvl_5.PC, q_CB_Sum_Projects_Report_Data_Lvl_5.L_1, q_CB_Sum_Projects_Report_Data_Lvl_5.L_2, q_CB_Sum_Projects_Report_Data_Lvl_5.L_3, q_CB_Sum_Projects_Report_Data_Lvl_5.L_4, q_CB_Sum_Projects_Report_Data_Lvl_5.L_5, q_CB_Sum_Projects_Report_Data_Lvl_5.L_6, q_CB_Sum_Projects_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.GT_REM, [First_Data_RT]-[Second_Data_RT] AS RT_REM, [First_Data_REM]-[Second_Data_REM] AS REM_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L5
FROM q_CB_Sum_Projects_Report_Data_Lvl_5 LEFT JOIN t_001_Projects ON q_CB_Sum_Projects_Report_Data_Lvl_5.PC = t_001_Projects.p_Code
GROUP BY q_CB_Sum_Projects_Report_Data_Lvl_5.PC, q_CB_Sum_Projects_Report_Data_Lvl_5.L_1, q_CB_Sum_Projects_Report_Data_Lvl_5.L_2, q_CB_Sum_Projects_Report_Data_Lvl_5.L_3, q_CB_Sum_Projects_Report_Data_Lvl_5.L_4, q_CB_Sum_Projects_Report_Data_Lvl_5.L_5, q_CB_Sum_Projects_Report_Data_Lvl_5.L_6, q_CB_Sum_Projects_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.GT_REM, [First_Data_RT]-[Second_Data_RT], [First_Data_REM]-[Second_Data_REM], q_CB_Sum_Projects_Report_Data_Lvl_5.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L5;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.up_Curr, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data.GT_REM) AS GT_REM, Sum(q_CB_Sum_Cons_Report_Data.RT_REM) AS RT_REM, Sum(q_CB_Sum_Cons_Report_Data.REM_REM) AS REM_REM, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] AS L5_Comb
FROM q_CB_Sum_Cons_Report_Data
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Budget_Type, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5]
ORDER BY Sum(q_CB_Sum_Cons_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Lvl_4
SELECT q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) AS GT_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4
FROM q_CB_Sum_Cons_Report_Data_Lvl_4
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Lvl_5
SELECT q_CB_Sum_Cons_Report_Data_Lvl_5.L_1, q_CB_Sum_Cons_Report_Data_Lvl_5.L_2, q_CB_Sum_Cons_Report_Data_Lvl_5.L_3, q_CB_Sum_Cons_Report_Data_Lvl_5.L_4, q_CB_Sum_Cons_Report_Data_Lvl_5.up_Curr, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_5.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.GT_REM) AS GT_REM, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_5.L_5, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L5
FROM q_CB_Sum_Cons_Report_Data_Lvl_5
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_5.L_1, q_CB_Sum_Cons_Report_Data_Lvl_5.L_2, q_CB_Sum_Cons_Report_Data_Lvl_5.L_3, q_CB_Sum_Cons_Report_Data_Lvl_5.L_4, q_CB_Sum_Cons_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_5.Budget_Type, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_5.L_5, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L5
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_Cons_Report_Data.Currency AS up_Curr, q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.L_6, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.L_6, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L6, [IncomeGT]-[IncomeRT], [ExpenseGT]-[ExpenseRT], [ProfitGT]-[ProfitRT];

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Lvl_4
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, C4_Code.Desc_TR_L4
FROM q_CB_Cons_Report_Data LEFT JOIN C4_Code ON (q_CB_Cons_Report_Data.L_1 = C4_Code.c_L1) AND (q_CB_Cons_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Data.L_4 = C4_Code.c_L4)
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4
ORDER BY Sum(q_CB_Cons_Report_Data.ProfitGT) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Lvl_5
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, q_CB_Cons_Report_Data.L_5, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM (q_CB_Cons_Report_Data LEFT JOIN C5_Code ON (q_CB_Cons_Report_Data.L_1 = C5_Code.c_L1) AND (q_CB_Cons_Report_Data.L_2 = C5_Code.c_L2) AND (q_CB_Cons_Report_Data.L_3 = C5_Code.c_L3) AND (q_CB_Cons_Report_Data.L_4 = C5_Code.c_L4) AND (q_CB_Cons_Report_Data.L_5 = C5_Code.c_L5)) LEFT JOIN C4_Code ON (q_CB_Cons_Report_Data.L_4 = C4_Code.c_L4) AND (q_CB_Cons_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Data.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, q_CB_Cons_Report_Data.L_5, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
ORDER BY Sum(q_CB_Cons_Report_Data.ProfitGT) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_AllProjects_Report_Data.Currency AS up_Curr, q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.L_6, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.Desc_TR_L6, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_AllProjects_Report_Data.Currency, q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.L_6, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Lvl_4
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM (q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code) LEFT JOIN C4_Code ON (q_CB_AllProjects_Report_Data.L_4 = C4_Code.c_L4) AND (q_CB_AllProjects_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_1 = C4_Code.c_L1)
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Lvl_5
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM ((q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code) LEFT JOIN C4_Code ON (q_CB_AllProjects_Report_Data.L_1 = C4_Code.c_L1) AND (q_CB_AllProjects_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_4 = C4_Code.c_L4)) LEFT JOIN C5_Code ON (q_CB_AllProjects_Report_Data.L_1 = C5_Code.c_L1) AND (q_CB_AllProjects_Report_Data.L_2 = C5_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_3 = C5_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_4 = C5_Code.c_L4) AND (q_CB_AllProjects_Report_Data.L_5 = C5_Code.c_L5)
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_Updates
SELECT t_Update_Data.ID, t_Update_Data.Update_Ver, t_Update_Data.Update_Topic, t_Update_Data.Update_Data, t_Update_Data.Update_Date
FROM t_Update_Data;

----------------------------------------------------------------------------------------------------
~TMPCLP51753
SELECT t_BB_Indexes.g_Month, Log([r_UFE]+1) AS rr_UFE, Log([r_TUFE]+1) AS rr_TUFE, Log([r_INF_USD]+1) AS rr_INF_USD, Log([r_INF_EUR]+1) AS rr_INF_EUR, Log([r_Metal]+1) AS rr_Metal, Log([r_Petrol]+1) AS rr_Petrol, Log([r_Cement]+1) AS rr_Cement, Log([r_Electricity]+1) AS rr_Electricity, t_BB_Indexes.e_Year AS Expr1
FROM t_BB_Indexes;

----------------------------------------------------------------------------------------------------
~TMPCLP51901
SELECT t_Months.g_Month, IIf(Year([g_Month])>2022,(1+[r_Metal])^(Month([g_Month])/12)*[fr_Metal],(1+[r_Metal])^(Month([g_Month])/12))-1 AS bb_Metal, IIf(Year([g_Month])>2022,(1+[r_Electricity])^(Month([g_Month])/12)*[fr_Electricity],(1+[r_Electricity])^(Month([g_Month])/12))-1 AS bb_Electricity, IIf(Year([g_Month])>2022,(1+[r_Cement])^(Month([g_Month])/12)*[fr_Cement],(1+[r_Cement])^(Month([g_Month])/12))-1 AS bb_Cement, IIf(Year([g_Month])>2022,(1+[r_Petrol])^(Month([g_Month])/12)*[fr_Petrol],(1+[r_Petrol])^(Month([g_Month])/12))-1 AS bb_Petrol, IIf(Year([g_Month])>2022,(1+[r_INF_USD])^(Month([g_Month])/12)*[fr_INF_USD],(1+[r_INF_USD])^(Month([g_Month])/12))-1 AS bb_INF_USD, IIf(Year([g_Month])>2022,(1+[r_INF_EUR])^(Month([g_Month])/12)*[fr_INF_EUR],(1+[r_INF_EUR])^(Month([g_Month])/12))-1 AS bb_INF_EUR, IIf(Year([g_Month])>2022,(1+[r_UFE])^(Month([g_Month])/12)*[fr_UFE],(1+[r_UFE])^(Month([g_Month])/12))-1 AS bb_UFE, IIf(Year([g_Month])>2022,(1+[r_TUFE])^(Month([g_Month])/12)*[fr_TUFE],(1+[r_TUFE])^(Month([g_Month])/12))-1 AS bb_TUFE
FROM (t_Months LEFT JOIN t_BB_Indexes ON t_Months.g_Year=t_BB_Indexes.[g_Month]) LEFT JOIN q_BB_Indexes_P ON t_Months.g_Year = q_BB_Indexes_P.e_Year;

----------------------------------------------------------------------------------------------------
q_AC_BB_Exp_Crosstab
TRANSFORM Sum(t_AC_BB_Exp.Exp_AC_Exp) AS SumOfExp_AC_Exp
SELECT t_AC_BB_Exp.rep_Month, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.up_curr
FROM t_AC_BB_Exp
GROUP BY t_AC_BB_Exp.rep_Month, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.up_curr
PIVOT t_AC_BB_Exp.Exp_AC_Mon;

----------------------------------------------------------------------------------------------------
q_AC_BB_Exp_LastM
SELECT Max(t_AC_BB_Exp.Exp_AC_Mon) AS LastM, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.rep_Month
FROM t_AC_BB_Exp
GROUP BY t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.rep_Month;

----------------------------------------------------------------------------------------------------
q_AC_Exp_Crosstab
TRANSFORM Sum(t_AC_Exp.Exp_AC_Exp) AS SumOfExp_AC_Exp
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.up_curr
FROM t_AC_Exp
GROUP BY t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.up_curr
PIVOT t_AC_Exp.Exp_AC_Mon;

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Delete_Mod
DELETE t_AC_Indexes_Mod.rep_Month, t_AC_Indexes_Mod.g_Month, t_AC_Indexes_Mod.bb_Metal, t_AC_Indexes_Mod.bb_Electricity, t_AC_Indexes_Mod.bb_Cement, t_AC_Indexes_Mod.bb_Petrol, t_AC_Indexes_Mod.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_EUR, t_AC_Indexes_Mod.bb_UFE, t_AC_Indexes_Mod.bb_TUFE
FROM t_AC_Indexes_Mod;

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Graph
SELECT t_CB_Indexes.bb_Metal, t_AC_Indexes_Mod.bb_Metal, t_CB_Indexes.bb_Electricity, t_AC_Indexes_Mod.bb_Electricity, t_CB_Indexes.bb_Cement, t_AC_Indexes_Mod.bb_Cement, t_CB_Indexes.bb_Petrol, t_AC_Indexes_Mod.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_AC_Indexes_Mod.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_AC_Indexes_Mod.bb_UFE, t_CB_Indexes.bb_TUFE, t_AC_Indexes_Mod.bb_TUFE, t_CB_Indexes.g_Month
FROM t_CB_Indexes RIGHT JOIN t_AC_Indexes_Mod ON (t_CB_Indexes.rep_Month = t_AC_Indexes_Mod.rep_Month) AND (t_CB_Indexes.g_Month = t_AC_Indexes_Mod.g_Month)
WHERE (((t_CB_Indexes.g_Month)>#1/1/2022#) AND ((t_AC_Indexes_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Mod_AP
INSERT INTO t_AC_Indexes_Mod ( rep_Month, g_Month, bb_Metal, bb_Electricity, bb_Cement, bb_Petrol, bb_INF_USD, bb_INF_EUR, bb_UFE, bb_TUFE )
SELECT t_CB_Indexes.rep_Month, t_CB_Indexes.g_Month, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Electricity, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE
FROM t_CB_Indexes
WHERE (((t_CB_Indexes.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Reset
UPDATE t_AC_Indexes_Mod LEFT JOIN t_CB_Indexes ON (t_AC_Indexes_Mod.rep_Month = t_CB_Indexes.rep_Month) AND (t_AC_Indexes_Mod.g_Month = t_CB_Indexes.g_Month) SET t_AC_Indexes_Mod.g_Month = [t_CB_Indexes].[g_Month], t_AC_Indexes_Mod.bb_Metal = [t_CB_Indexes].[bb_Metal], t_AC_Indexes_Mod.bb_Electricity = [t_CB_Indexes].[bb_Electricity], t_AC_Indexes_Mod.bb_Cement = [t_CB_Indexes].[bb_Cement], t_AC_Indexes_Mod.bb_Petrol = [t_CB_Indexes].[bb_Petrol], t_AC_Indexes_Mod.bb_INF_USD = [t_CB_Indexes].[bb_INF_USD], t_AC_Indexes_Mod.bb_INF_EUR = [t_CB_Indexes].[bb_INF_EUR], t_AC_Indexes_Mod.bb_UFE = [t_CB_Indexes].[bb_UFE], t_AC_Indexes_Mod.bb_TUFE = [t_CB_Indexes].[bb_TUFE], t_AC_Indexes_Mod.rep_Month = [t_CB_Indexes].[rep_Month]
WHERE (((t_AC_Indexes_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Active_Rep_Month
SELECT Max(t_Rep_Month.rep_Month) AS Active_rep_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_BB_Active_Months_Res_Qty
SELECT t_BB_Analysis.rep_Month, t_BB_Analysis.P01_Code AS PC, q_BB_Qty_ActiveM_Works.Exp_Base_Mon, (1+[r_loss])*[t_BB_Analysis].[An_rs_quantity] AS An_rs_quantity, t_BB_Analysis.Key_R4, q_BB_Qty_ActiveM_Works.Key_R_PC_L6, t_BB_Analysis.Key_Full, t_BB_Analysis.L_1, t_BB_Analysis.L_2, t_BB_Analysis.L_3, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, t_BB_Analysis.L_4, t_BB_Analysis.L_5, t_BB_Analysis.L_6, t_BB_Analysis.Key_R4_Simple, t_BB_Analysis.r_loss
FROM q_BB_Qty_ActiveM_Works LEFT JOIN t_BB_Analysis ON q_BB_Qty_ActiveM_Works.Key_R_PC_L6 = t_BB_Analysis.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Analysis_ActiveM_With_Prices
SELECT q_BB_Active_Months_Res_Qty.rep_Month, q_BB_Active_Months_Res_Qty.PC, q_BB_Active_Months_Res_Qty.Exp_Base_Mon, q_BB_Active_Months_Res_Qty.An_rs_quantity, q_BB_Active_Months_Res_Qty.Key_R4, q_BB_Active_Months_Res_Qty.Key_R_PC_L6, q_BB_Active_Months_Res_Qty.Key_Full, t_PL_Res_UP.up_Cost, q_BB_Active_Months_Res_Qty.L_1, q_BB_Active_Months_Res_Qty.L_2, q_BB_Active_Months_Res_Qty.L_3, q_BB_Active_Months_Res_Qty.L_4, q_BB_Active_Months_Res_Qty.L_5, q_BB_Active_Months_Res_Qty.L_6, q_BB_Active_Months_Res_Qty.rs_L1, q_BB_Active_Months_Res_Qty.rs_L2, q_BB_Active_Months_Res_Qty.rs_L3, q_BB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency, q_BB_Active_Months_Res_Qty.Key_R4_Simple
FROM (q_BB_Active_Months_Res_Qty LEFT JOIN t_PL_Res_UP ON q_BB_Active_Months_Res_Qty.Key_R4 = t_PL_Res_UP.Key_R4) LEFT JOIN R4_Code ON q_BB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_BB_Analysis_Comp
SELECT t_BB_Analysis_Add.P01_Code, t_BB_Analysis_Add.rs_L1, t_BB_Analysis_Add.rs_L2, t_BB_Analysis_Add.rs_L3, t_BB_Analysis_Add.rs_L4, t_BB_Analysis_Add.Analysis_Date, t_BB_Analysis.P01_Code
FROM t_BB_Analysis_Add LEFT JOIN t_BB_Analysis ON (t_BB_Analysis_Add.Analysis_Date = t_BB_Analysis.Analysis_Date) AND (t_BB_Analysis_Add.rs_L4 = t_BB_Analysis.rs_L4) AND (t_BB_Analysis_Add.rs_L3 = t_BB_Analysis.rs_L3) AND (t_BB_Analysis_Add.rs_L2 = t_BB_Analysis.rs_L2) AND (t_BB_Analysis_Add.rs_L1 = t_BB_Analysis.rs_L1) AND (t_BB_Analysis_Add.P01_Code = t_BB_Analysis.P01_Code)
WHERE (((t_BB_Analysis.P01_Code) Is Null));

----------------------------------------------------------------------------------------------------
q_BB_Coeff_Export
SELECT t_BB_Analysis.P01_Code, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
FROM R4_Code LEFT JOIN t_BB_Analysis ON (R4_Code.R_4_Code = t_BB_Analysis.rs_L4) AND (R4_Code.R_3_Code = t_BB_Analysis.rs_L3) AND (R4_Code.R_2_Code = t_BB_Analysis.rs_L2) AND (R4_Code.R_1_Code = t_BB_Analysis.rs_L1)
GROUP BY t_BB_Analysis.P01_Code, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
HAVING (((t_BB_Analysis.P01_Code) Is Not Null));

----------------------------------------------------------------------------------------------------
q_BB_Curr_Base_Month
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_BB_Curr_Base_Val
SELECT q_BB_Curr_Base_Month.rep_Month, q_BB_Curr_Base_Month.rep_Month_Date, t_BB_Mon_Curr_Rates.r_EUR_EUR, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_TRY_EUR, t_BB_Mon_Curr_Rates.r_TRY_TRY, t_BB_Mon_Curr_Rates.r_TRY_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, t_BB_Mon_Curr_Rates.r_USD_USD, q_BB_Curr_Base_Month.PC
FROM q_BB_Curr_Base_Month LEFT JOIN t_BB_Mon_Curr_Rates ON (q_BB_Curr_Base_Month.PC = t_BB_Mon_Curr_Rates.P_Code) AND (q_BB_Curr_Base_Month.rep_Month_Date = t_BB_Mon_Curr_Rates.Month) AND (q_BB_Curr_Base_Month.rep_Month = t_BB_Mon_Curr_Rates.rep_Month)
GROUP BY q_BB_Curr_Base_Month.rep_Month, q_BB_Curr_Base_Month.rep_Month_Date, t_BB_Mon_Curr_Rates.r_EUR_EUR, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_TRY_EUR, t_BB_Mon_Curr_Rates.r_TRY_TRY, t_BB_Mon_Curr_Rates.r_TRY_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, t_BB_Mon_Curr_Rates.r_USD_USD, q_BB_Curr_Base_Month.PC;

----------------------------------------------------------------------------------------------------
q_BB_Curr_Escalation_Rates
SELECT q_BB_Active_Months_Res_Qty.rep_Month, q_BB_Active_Months_Res_Qty.PC, q_BB_Active_Months_Res_Qty.L_1, q_BB_Active_Months_Res_Qty.L_2, q_BB_Active_Months_Res_Qty.L_3, q_BB_Active_Months_Res_Qty.L_4, q_BB_Active_Months_Res_Qty.L_5, q_BB_Active_Months_Res_Qty.L_6, q_BB_Active_Months_Res_Qty.Exp_Base_Mon AS [Month], q_BB_Active_Months_Res_Qty.rs_L1, q_BB_Active_Months_Res_Qty.rs_L2, q_BB_Active_Months_Res_Qty.rs_L3, q_BB_Active_Months_Res_Qty.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_BB_Active_Months_Res_Qty.Key_R4_Simple, q_BB_Active_Months_Res_Qty.Key_Full, q_BB_Active_Months_Res_Qty.Key_R_PC_L6, q_BB_Active_Months_Res_Qty.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_BB_Active_Months_Res_Qty LEFT JOIN q_BB_Monthly_Curr_Rates_Inc ON (q_BB_Active_Months_Res_Qty.Exp_Base_Mon = q_BB_Monthly_Curr_Rates_Inc.Exp_Base_Mon) AND (q_BB_Active_Months_Res_Qty.PC = q_BB_Monthly_Curr_Rates_Inc.PC) AND (q_BB_Active_Months_Res_Qty.rep_Month = q_BB_Monthly_Curr_Rates_Inc.rep_Month)) LEFT JOIN R4_Code ON q_BB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_BB_Exp
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6, q_BB_Unit_Price.g_Month AS Exp_Base_Mon, Sum(([Exp_Base_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.Key_R_PC_L6
FROM t_BB_Qty RIGHT JOIN q_BB_Unit_Price ON (t_BB_Qty.PC = q_BB_Unit_Price.P01_Code) AND (t_BB_Qty.L_1 = q_BB_Unit_Price.L_1) AND (t_BB_Qty.L_2 = q_BB_Unit_Price.L_2) AND (t_BB_Qty.L_3 = q_BB_Unit_Price.L_3) AND (t_BB_Qty.L_4 = q_BB_Unit_Price.L_4) AND (t_BB_Qty.L_5 = q_BB_Unit_Price.L_5) AND (t_BB_Qty.L_6 = q_BB_Unit_Price.L_6) AND (t_BB_Qty.Exp_Base_Mon = q_BB_Unit_Price.g_Month) AND (t_BB_Qty.rep_Month = q_BB_Unit_Price.rep_Month)
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6, q_BB_Unit_Price.g_Month, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Exp_EUR_With_Dummy.EUR_Expense) AS SumOfEUR_Expense
SELECT q_BB_Exp_EUR_With_Dummy.rep_Month, q_BB_Exp_EUR_With_Dummy.PC, q_BB_Exp_EUR_With_Dummy.L_1, q_BB_Exp_EUR_With_Dummy.L_2, q_BB_Exp_EUR_With_Dummy.L_3, q_BB_Exp_EUR_With_Dummy.L_4, q_BB_Exp_EUR_With_Dummy.L_5, q_BB_Exp_EUR_With_Dummy.L_6, q_BB_Exp_EUR_With_Dummy.up_curr_Conv
FROM q_BB_Exp_EUR_With_Dummy
GROUP BY q_BB_Exp_EUR_With_Dummy.rep_Month, q_BB_Exp_EUR_With_Dummy.PC, q_BB_Exp_EUR_With_Dummy.L_1, q_BB_Exp_EUR_With_Dummy.L_2, q_BB_Exp_EUR_With_Dummy.L_3, q_BB_Exp_EUR_With_Dummy.L_4, q_BB_Exp_EUR_With_Dummy.L_5, q_BB_Exp_EUR_With_Dummy.L_6, q_BB_Exp_EUR_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Exp_TRY_With_Dummy.TRY_Expense) AS SumOfTRY_Expense
SELECT q_BB_Exp_TRY_With_Dummy.rep_Month, q_BB_Exp_TRY_With_Dummy.PC, q_BB_Exp_TRY_With_Dummy.L_1, q_BB_Exp_TRY_With_Dummy.L_2, q_BB_Exp_TRY_With_Dummy.L_3, q_BB_Exp_TRY_With_Dummy.L_4, q_BB_Exp_TRY_With_Dummy.L_5, q_BB_Exp_TRY_With_Dummy.L_6, q_BB_Exp_TRY_With_Dummy.up_curr_Conv
FROM q_BB_Exp_TRY_With_Dummy
GROUP BY q_BB_Exp_TRY_With_Dummy.rep_Month, q_BB_Exp_TRY_With_Dummy.PC, q_BB_Exp_TRY_With_Dummy.L_1, q_BB_Exp_TRY_With_Dummy.L_2, q_BB_Exp_TRY_With_Dummy.L_3, q_BB_Exp_TRY_With_Dummy.L_4, q_BB_Exp_TRY_With_Dummy.L_5, q_BB_Exp_TRY_With_Dummy.L_6, q_BB_Exp_TRY_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Exp_USD_With_Dummy.USD_Expense) AS SumOfUSD_Expense
SELECT q_BB_Exp_USD_With_Dummy.rep_Month, q_BB_Exp_USD_With_Dummy.PC, q_BB_Exp_USD_With_Dummy.L_1, q_BB_Exp_USD_With_Dummy.L_2, q_BB_Exp_USD_With_Dummy.L_3, q_BB_Exp_USD_With_Dummy.L_4, q_BB_Exp_USD_With_Dummy.L_5, q_BB_Exp_USD_With_Dummy.L_6, q_BB_Exp_USD_With_Dummy.up_curr_Conv
FROM q_BB_Exp_USD_With_Dummy
GROUP BY q_BB_Exp_USD_With_Dummy.rep_Month, q_BB_Exp_USD_With_Dummy.PC, q_BB_Exp_USD_With_Dummy.L_1, q_BB_Exp_USD_With_Dummy.L_2, q_BB_Exp_USD_With_Dummy.L_3, q_BB_Exp_USD_With_Dummy.L_4, q_BB_Exp_USD_With_Dummy.L_5, q_BB_Exp_USD_With_Dummy.L_6, q_BB_Exp_USD_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_With_Dummy
TRANSFORM Sum(q_BB_Exp_With_Dummy.Total_Expense) AS SumOfTotal_Expense
SELECT q_BB_Exp_With_Dummy.rep_Month, q_BB_Exp_With_Dummy.PC, q_BB_Exp_With_Dummy.L_1, q_BB_Exp_With_Dummy.L_2, q_BB_Exp_With_Dummy.L_3, q_BB_Exp_With_Dummy.L_4, q_BB_Exp_With_Dummy.L_5, q_BB_Exp_With_Dummy.L_6, q_BB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_BB_Exp_With_Dummy
GROUP BY q_BB_Exp_With_Dummy.rep_Month, q_BB_Exp_With_Dummy.PC, q_BB_Exp_With_Dummy.L_1, q_BB_Exp_With_Dummy.L_2, q_BB_Exp_With_Dummy.L_3, q_BB_Exp_With_Dummy.L_4, q_BB_Exp_With_Dummy.L_5, q_BB_Exp_With_Dummy.L_6, q_BB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_BB_Exp_With_Dummy.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR_MT
SELECT q_BB_Exp_EUR.rep_Month, q_BB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_EUR.Month, q_BB_Exp_EUR.L_1, q_BB_Exp_EUR.L_2, q_BB_Exp_EUR.L_3, q_BB_Exp_EUR.L_4, q_BB_Exp_EUR.L_5, q_BB_Exp_EUR.L_6, q_BB_Exp_EUR.EUR_Expense, q_BB_Exp_EUR.up_Curr_Conv, q_BB_Exp_EUR.Key_R_PC_L6 INTO t_BB_Exp_EUR_ST
FROM q_BB_Exp_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Exp_EUR.L_1 = C3_Code.c_L1) AND (q_BB_Exp_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Exp_EUR.L_3 = C3_Code.c_L3)
GROUP BY q_BB_Exp_EUR.rep_Month, q_BB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_EUR.Month, q_BB_Exp_EUR.L_1, q_BB_Exp_EUR.L_2, q_BB_Exp_EUR.L_3, q_BB_Exp_EUR.L_4, q_BB_Exp_EUR.L_5, q_BB_Exp_EUR.L_6, q_BB_Exp_EUR.EUR_Expense, q_BB_Exp_EUR.up_Curr_Conv, q_BB_Exp_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_EUR

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Total
SELECT 
		*
	FROM 
q_BB_Exp
		
UNION ALL SELECT 
		*
	FROM 
		t_AC_BB_Exp;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Total_MT
SELECT q_BB_Exp_Total.rep_Month, q_BB_Exp_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_Total.Exp_Base_Mon AS [Month], q_BB_Exp_Total.Total_Expense, q_BB_Exp_Total.up_Curr, q_BB_Exp_Total.L_1, q_BB_Exp_Total.L_2, q_BB_Exp_Total.L_3, q_BB_Exp_Total.L_4, q_BB_Exp_Total.L_5, q_BB_Exp_Total.L_6, q_BB_Exp_Total.Key_R_PC_L6 INTO t_BB_Exp_Total_ST
FROM q_BB_Exp_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Exp_Total.L_1 = C3_Code.c_L1) AND (q_BB_Exp_Total.L_2 = C3_Code.c_L2) AND (q_BB_Exp_Total.L_3 = C3_Code.c_L3)
GROUP BY q_BB_Exp_Total.rep_Month, q_BB_Exp_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_Total.Exp_Base_Mon, q_BB_Exp_Total.Total_Expense, q_BB_Exp_Total.up_Curr, q_BB_Exp_Total.L_1, q_BB_Exp_Total.L_2, q_BB_Exp_Total.L_3, q_BB_Exp_Total.L_4, q_BB_Exp_Total.L_5, q_BB_Exp_Total.L_6, q_BB_Exp_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY_MT
SELECT q_BB_Exp_TRY.rep_Month, q_BB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_TRY.Month, q_BB_Exp_TRY.L_1, q_BB_Exp_TRY.L_2, q_BB_Exp_TRY.L_3, q_BB_Exp_TRY.L_4, q_BB_Exp_TRY.L_5, q_BB_Exp_TRY.L_6, q_BB_Exp_TRY.TRY_Expense, q_BB_Exp_TRY.up_Curr_Conv, q_BB_Exp_TRY.Key_R_PC_L6 INTO t_BB_Exp_TRY_ST
FROM q_BB_Exp_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Exp_TRY.L_3 = C3_Code.c_L3) AND (q_BB_Exp_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Exp_TRY.L_1 = C3_Code.c_L1)
GROUP BY q_BB_Exp_TRY.rep_Month, q_BB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_TRY.Month, q_BB_Exp_TRY.L_1, q_BB_Exp_TRY.L_2, q_BB_Exp_TRY.L_3, q_BB_Exp_TRY.L_4, q_BB_Exp_TRY.L_5, q_BB_Exp_TRY.L_6, q_BB_Exp_TRY.TRY_Expense, q_BB_Exp_TRY.up_Curr_Conv, q_BB_Exp_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="TRY",[Total_Expense]*[r_TRY_USD],[Total_Expense]*[r_EUR_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD_MT
SELECT q_BB_Exp_USD.rep_Month, q_BB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_USD.Month, q_BB_Exp_USD.L_1, q_BB_Exp_USD.L_2, q_BB_Exp_USD.L_3, q_BB_Exp_USD.L_4, q_BB_Exp_USD.L_5, q_BB_Exp_USD.L_6, q_BB_Exp_USD.USD_Expense, q_BB_Exp_USD.up_Curr_Conv, q_BB_Exp_USD.Key_R_PC_L6 INTO t_BB_Exp_USD_ST
FROM q_BB_Exp_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Exp_USD.L_3 = C3_Code.c_L3) AND (q_BB_Exp_USD.L_2 = C3_Code.c_L2) AND (q_BB_Exp_USD.L_1 = C3_Code.c_L1)
GROUP BY q_BB_Exp_USD.rep_Month, q_BB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_USD.Month, q_BB_Exp_USD.L_1, q_BB_Exp_USD.L_2, q_BB_Exp_USD.L_3, q_BB_Exp_USD.L_4, q_BB_Exp_USD.L_5, q_BB_Exp_USD.L_6, q_BB_Exp_USD.USD_Expense, q_BB_Exp_USD.up_Curr_Conv, q_BB_Exp_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_With_Dummy
SELECT 
		*
	FROM 
		q_BB_Exp_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Calculation
SELECT t_BB_Inc_Qty.rep_Month, t_BB_Inc_Qty.PC, t_BB_Inc_Qty.L_1, t_BB_Inc_Qty.L_2, t_BB_Inc_Qty.L_3, t_BB_Inc_Qty.L_4, t_BB_Inc_Qty.L_5, t_BB_Inc_Qty.L_6, t_BB_Inc_Qty.Inc_Base_Mon, IIf([Inc_Rate] Is Null,1,1+[Inc_Rate]) AS Inc_Rate_1, IIf([Inc_Rate_Pcode] Is Null,1,1+[Inc_Rate_Pcode]) AS Inc_Rate_2, t_BB_Inc_WBS.UP, t_BB_Inc_WBS.Currency, [UP]*[Inc_Rate_1]*[Inc_Rate_2] AS UP_Total, t_BB_Inc_Qty.Inc_Base_Qty, [UP_Total]*[Inc_Base_Qty] AS Inc_Total, t_BB_Inc_Qty.Key_R_PC_L6
FROM ((t_BB_Inc_Qty LEFT JOIN t_BB_Inc_Esc_Rates_L6 ON (t_BB_Inc_Qty.rep_Month = t_BB_Inc_Esc_Rates_L6.rep_Month) AND (t_BB_Inc_Qty.PC = t_BB_Inc_Esc_Rates_L6.P01_Code) AND (t_BB_Inc_Qty.L_1 = t_BB_Inc_Esc_Rates_L6.c_L1) AND (t_BB_Inc_Qty.L_2 = t_BB_Inc_Esc_Rates_L6.c_L2) AND (t_BB_Inc_Qty.L_3 = t_BB_Inc_Esc_Rates_L6.c_L3) AND (t_BB_Inc_Qty.L_4 = t_BB_Inc_Esc_Rates_L6.c_L4) AND (t_BB_Inc_Qty.L_5 = t_BB_Inc_Esc_Rates_L6.c_L5) AND (t_BB_Inc_Qty.L_6 = t_BB_Inc_Esc_Rates_L6.c_L6) AND (t_BB_Inc_Qty.Inc_Base_Mon = t_BB_Inc_Esc_Rates_L6.Month)) LEFT JOIN t_BB_Inc_Esc_Rates_Pcode ON (t_BB_Inc_Qty.rep_Month = t_BB_Inc_Esc_Rates_Pcode.rep_Month) AND (t_BB_Inc_Qty.PC = t_BB_Inc_Esc_Rates_Pcode.P01_Code) AND (t_BB_Inc_Qty.Inc_Base_Mon = t_BB_Inc_Esc_Rates_Pcode.Month)) LEFT JOIN t_BB_Inc_WBS ON t_BB_Inc_Qty.Key_R_PC_L6 = t_BB_Inc_WBS.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Inc_EUR_With_Dummy.EUR_Income) AS EUR_Income
SELECT q_BB_Inc_EUR_With_Dummy.rep_Month, q_BB_Inc_EUR_With_Dummy.PC, q_BB_Inc_EUR_With_Dummy.L_1, q_BB_Inc_EUR_With_Dummy.L_2, q_BB_Inc_EUR_With_Dummy.L_3, q_BB_Inc_EUR_With_Dummy.L_4, q_BB_Inc_EUR_With_Dummy.L_5, q_BB_Inc_EUR_With_Dummy.L_6, q_BB_Inc_EUR_With_Dummy.up_curr_Conv
FROM q_BB_Inc_EUR_With_Dummy
GROUP BY q_BB_Inc_EUR_With_Dummy.rep_Month, q_BB_Inc_EUR_With_Dummy.PC, q_BB_Inc_EUR_With_Dummy.L_1, q_BB_Inc_EUR_With_Dummy.L_2, q_BB_Inc_EUR_With_Dummy.L_3, q_BB_Inc_EUR_With_Dummy.L_4, q_BB_Inc_EUR_With_Dummy.L_5, q_BB_Inc_EUR_With_Dummy.L_6, q_BB_Inc_EUR_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Inc_TRY_With_Dummy.TRY_Income) AS TRY_Income
SELECT q_BB_Inc_TRY_With_Dummy.rep_Month, q_BB_Inc_TRY_With_Dummy.PC, q_BB_Inc_TRY_With_Dummy.L_1, q_BB_Inc_TRY_With_Dummy.L_2, q_BB_Inc_TRY_With_Dummy.L_3, q_BB_Inc_TRY_With_Dummy.L_4, q_BB_Inc_TRY_With_Dummy.L_5, q_BB_Inc_TRY_With_Dummy.L_6, q_BB_Inc_TRY_With_Dummy.up_curr_Conv
FROM q_BB_Inc_TRY_With_Dummy
GROUP BY q_BB_Inc_TRY_With_Dummy.rep_Month, q_BB_Inc_TRY_With_Dummy.PC, q_BB_Inc_TRY_With_Dummy.L_1, q_BB_Inc_TRY_With_Dummy.L_2, q_BB_Inc_TRY_With_Dummy.L_3, q_BB_Inc_TRY_With_Dummy.L_4, q_BB_Inc_TRY_With_Dummy.L_5, q_BB_Inc_TRY_With_Dummy.L_6, q_BB_Inc_TRY_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Inc_USD_With_Dummy.USD_Income) AS USD_Income
SELECT q_BB_Inc_USD_With_Dummy.rep_Month, q_BB_Inc_USD_With_Dummy.PC, q_BB_Inc_USD_With_Dummy.L_1, q_BB_Inc_USD_With_Dummy.L_2, q_BB_Inc_USD_With_Dummy.L_3, q_BB_Inc_USD_With_Dummy.L_4, q_BB_Inc_USD_With_Dummy.L_5, q_BB_Inc_USD_With_Dummy.L_6, q_BB_Inc_USD_With_Dummy.up_curr_Conv
FROM q_BB_Inc_USD_With_Dummy
GROUP BY q_BB_Inc_USD_With_Dummy.rep_Month, q_BB_Inc_USD_With_Dummy.PC, q_BB_Inc_USD_With_Dummy.L_1, q_BB_Inc_USD_With_Dummy.L_2, q_BB_Inc_USD_With_Dummy.L_3, q_BB_Inc_USD_With_Dummy.L_4, q_BB_Inc_USD_With_Dummy.L_5, q_BB_Inc_USD_With_Dummy.L_6, q_BB_Inc_USD_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_With_Dummy
TRANSFORM Sum(q_BB_Inc_With_Dummy.Inc_Total) AS Total_Income
SELECT q_BB_Inc_With_Dummy.rep_Month, q_BB_Inc_With_Dummy.PC, q_BB_Inc_With_Dummy.L_1, q_BB_Inc_With_Dummy.L_2, q_BB_Inc_With_Dummy.L_3, q_BB_Inc_With_Dummy.L_4, q_BB_Inc_With_Dummy.L_5, q_BB_Inc_With_Dummy.L_6, q_BB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_BB_Inc_With_Dummy
GROUP BY q_BB_Inc_With_Dummy.rep_Month, q_BB_Inc_With_Dummy.PC, q_BB_Inc_With_Dummy.L_1, q_BB_Inc_With_Dummy.L_2, q_BB_Inc_With_Dummy.L_3, q_BB_Inc_With_Dummy.L_4, q_BB_Inc_With_Dummy.L_5, q_BB_Inc_With_Dummy.L_6, q_BB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_BB_Inc_With_Dummy.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month) AND (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR_MT
SELECT q_BB_Inc_EUR.rep_Month, q_BB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_EUR.Month, q_BB_Inc_EUR.EUR_Income, q_BB_Inc_EUR.up_Curr_Conv, q_BB_Inc_EUR.L_1, q_BB_Inc_EUR.L_2, q_BB_Inc_EUR.L_3, q_BB_Inc_EUR.L_4, q_BB_Inc_EUR.L_5, q_BB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_EUR.Key_R_PC_L6 INTO t_BB_Inc_EUR_ST
FROM (q_BB_Inc_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Inc_EUR.L_3 = C3_Code.c_L3) AND (q_BB_Inc_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Inc_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Inc_EUR.L_6 = C6_Code.c_L6) AND (q_BB_Inc_EUR.L_5 = C6_Code.c_L5) AND (q_BB_Inc_EUR.L_4 = C6_Code.c_L4) AND (q_BB_Inc_EUR.L_3 = C6_Code.c_L3) AND (q_BB_Inc_EUR.L_2 = C6_Code.c_L2) AND (q_BB_Inc_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Inc_EUR.rep_Month, q_BB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_EUR.Month, q_BB_Inc_EUR.EUR_Income, q_BB_Inc_EUR.up_Curr_Conv, q_BB_Inc_EUR.L_1, q_BB_Inc_EUR.L_2, q_BB_Inc_EUR.L_3, q_BB_Inc_EUR.L_4, q_BB_Inc_EUR.L_5, q_BB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6


FROM 
q_BB_Inc_EUR

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Qty
SELECT *
FROM t_BB_Inc_Qty;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Qty_Crosstab
TRANSFORM Sum(q_BB_Inc_Qty.Inc_Base_Qty) AS Inc_Base_Qty
SELECT q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
FROM q_BB_Inc_Qty
GROUP BY q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
ORDER BY q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
PIVOT q_BB_Inc_Qty.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Total
SELECT q_BB_Inc_Calculation.rep_Month, q_BB_Inc_Calculation.PC, q_BB_Inc_Calculation.L_1, q_BB_Inc_Calculation.L_2, q_BB_Inc_Calculation.L_3, q_BB_Inc_Calculation.L_4, q_BB_Inc_Calculation.L_5, q_BB_Inc_Calculation.L_6, q_BB_Inc_Calculation.Inc_Base_Mon, Sum(q_BB_Inc_Calculation.Inc_Total) AS Inc_Total, q_BB_Inc_Calculation.Currency, q_BB_Inc_Calculation.Key_R_PC_L6
FROM q_BB_Inc_Calculation
GROUP BY q_BB_Inc_Calculation.rep_Month, q_BB_Inc_Calculation.PC, q_BB_Inc_Calculation.L_1, q_BB_Inc_Calculation.L_2, q_BB_Inc_Calculation.L_3, q_BB_Inc_Calculation.L_4, q_BB_Inc_Calculation.L_5, q_BB_Inc_Calculation.L_6, q_BB_Inc_Calculation.Inc_Base_Mon, q_BB_Inc_Calculation.Currency, q_BB_Inc_Calculation.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Total_MT
SELECT q_BB_Inc_Total.rep_Month, q_BB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_Total.Inc_Base_Mon, q_BB_Inc_Total.Inc_Total, q_BB_Inc_Total.Currency, q_BB_Inc_Total.L_1, q_BB_Inc_Total.L_2, q_BB_Inc_Total.L_3, q_BB_Inc_Total.L_4, q_BB_Inc_Total.L_5, q_BB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_Total.Key_R_PC_L6 INTO t_BB_Inc_Total_ST
FROM (q_BB_Inc_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_Total.L_1 = C3_Code.c_L1) AND (q_BB_Inc_Total.L_2 = C3_Code.c_L2) AND (q_BB_Inc_Total.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_Total.L_1 = C6_Code.c_L1) AND (q_BB_Inc_Total.L_2 = C6_Code.c_L2) AND (q_BB_Inc_Total.L_3 = C6_Code.c_L3) AND (q_BB_Inc_Total.L_4 = C6_Code.c_L4) AND (q_BB_Inc_Total.L_5 = C6_Code.c_L5) AND (q_BB_Inc_Total.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_Total.rep_Month, q_BB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_Total.Inc_Base_Mon, q_BB_Inc_Total.Inc_Total, q_BB_Inc_Total.Currency, q_BB_Inc_Total.L_1, q_BB_Inc_Total.L_2, q_BB_Inc_Total.L_3, q_BB_Inc_Total.L_4, q_BB_Inc_Total.L_5, q_BB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_TRY],[Inc_Total]*[r_TRY_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY_MT
SELECT q_BB_Inc_TRY.rep_Month, q_BB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_TRY.Month, q_BB_Inc_TRY.TRY_Income, q_BB_Inc_TRY.up_Curr_Conv, q_BB_Inc_TRY.L_1, q_BB_Inc_TRY.L_2, q_BB_Inc_TRY.L_3, q_BB_Inc_TRY.L_4, q_BB_Inc_TRY.L_5, q_BB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_TRY.Key_R_PC_L6 INTO t_BB_Inc_TRY_ST
FROM (q_BB_Inc_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_TRY.L_1 = C3_Code.c_L1) AND (q_BB_Inc_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Inc_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_TRY.L_1 = C6_Code.c_L1) AND (q_BB_Inc_TRY.L_2 = C6_Code.c_L2) AND (q_BB_Inc_TRY.L_3 = C6_Code.c_L3) AND (q_BB_Inc_TRY.L_4 = C6_Code.c_L4) AND (q_BB_Inc_TRY.L_5 = C6_Code.c_L5) AND (q_BB_Inc_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_TRY.rep_Month, q_BB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_TRY.Month, q_BB_Inc_TRY.TRY_Income, q_BB_Inc_TRY.up_Curr_Conv, q_BB_Inc_TRY.L_1, q_BB_Inc_TRY.L_2, q_BB_Inc_TRY.L_3, q_BB_Inc_TRY.L_4, q_BB_Inc_TRY.L_5, q_BB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Inc_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_USD],[Inc_Total]*[r_USD_USD])) AS USD_Income, "USD" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD_MT
SELECT q_BB_Inc_USD.rep_Month, q_BB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_USD.Month, q_BB_Inc_USD.USD_Income, q_BB_Inc_USD.up_Curr_Conv, q_BB_Inc_USD.L_1, q_BB_Inc_USD.L_2, q_BB_Inc_USD.L_3, q_BB_Inc_USD.L_4, q_BB_Inc_USD.L_5, q_BB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_USD.Key_R_PC_L6 INTO t_BB_Inc_USD_ST
FROM (q_BB_Inc_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_USD.L_1 = C3_Code.c_L1) AND (q_BB_Inc_USD.L_2 = C3_Code.c_L2) AND (q_BB_Inc_USD.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_USD.L_1 = C6_Code.c_L1) AND (q_BB_Inc_USD.L_2 = C6_Code.c_L2) AND (q_BB_Inc_USD.L_3 = C6_Code.c_L3) AND (q_BB_Inc_USD.L_4 = C6_Code.c_L4) AND (q_BB_Inc_USD.L_5 = C6_Code.c_L5) AND (q_BB_Inc_USD.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_USD.rep_Month, q_BB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_USD.Month, q_BB_Inc_USD.USD_Income, q_BB_Inc_USD.up_Curr_Conv, q_BB_Inc_USD.L_1, q_BB_Inc_USD.L_2, q_BB_Inc_USD.L_3, q_BB_Inc_USD.L_4, q_BB_Inc_USD.L_5, q_BB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Inc_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_With_Dummy
SELECT 
		*
	FROM 
		q_BB_Inc_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Monthly_Curr_Rates_ActiveM
SELECT q_BB_Qty_ActiveM_Works_Monthly.rep_Month, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon
FROM q_BB_Qty_ActiveM_Works_Monthly LEFT JOIN t_BB_Mon_Curr_Rates ON (q_BB_Qty_ActiveM_Works_Monthly.PC = t_BB_Mon_Curr_Rates.P_Code) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = t_BB_Mon_Curr_Rates.rep_Month) AND (q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon = t_BB_Mon_Curr_Rates.Month)
GROUP BY q_BB_Qty_ActiveM_Works_Monthly.rep_Month, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Monthly_Curr_Rates_Inc
SELECT q_BB_Qty_ActiveM_Works_Monthly.rep_Month, q_BB_Qty_ActiveM_Works_Monthly.PC, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_BB_Curr_Base_Val].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_BB_Curr_Base_Val].[r_EUR_USD]-1 AS rt_EUR_USD, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_BB_Curr_Base_Val].[r_USD_TRY]-1 AS rt_USD_TRY, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_BB_Curr_Base_Val].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_BB_Qty_ActiveM_Works_Monthly LEFT JOIN q_BB_Monthly_Curr_Rates_ActiveM ON (q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon = q_BB_Monthly_Curr_Rates_ActiveM.Exp_Base_Mon) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = q_BB_Monthly_Curr_Rates_ActiveM.rep_Month)) LEFT JOIN q_BB_Curr_Base_Val ON (q_BB_Qty_ActiveM_Works_Monthly.PC = q_BB_Curr_Base_Val.PC) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = q_BB_Curr_Base_Val.rep_Month)
GROUP BY q_BB_Qty_ActiveM_Works_Monthly.rep_Month, q_BB_Qty_ActiveM_Works_Monthly.PC, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_BB_Curr_Base_Val].[r_EUR_TRY]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_BB_Curr_Base_Val].[r_EUR_USD]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_BB_Curr_Base_Val].[r_USD_TRY]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_BB_Curr_Base_Val].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_BB_PR_WBS
SELECT t_BB_Inc_Total_ST.rep_Month
	,t_BB_Inc_Total_ST.PC
	,t_BB_Inc_Total_ST.L_1
	,t_BB_Inc_Total_ST.L_2
	,t_BB_Inc_Total_ST.L_3
	,t_BB_Inc_Total_ST.L_4
	,t_BB_Inc_Total_ST.L_5
	,t_BB_Inc_Total_ST.L_6
	,t_BB_Inc_Total_ST.Currency
	,t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month] 
	,t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST 
GROUP BY t_BB_Inc_Total_ST.rep_Month
	,t_BB_Inc_Total_ST.PC
	,t_BB_Inc_Total_ST.L_1
	,t_BB_Inc_Total_ST.L_2
	,t_BB_Inc_Total_ST.L_3
	,t_BB_Inc_Total_ST.L_4
	,t_BB_Inc_Total_ST.L_5
	,t_BB_Inc_Total_ST.L_6
	,t_BB_Inc_Total_ST.Currency
	,t_BB_Inc_Total_ST.Inc_Base_Mon 
	,t_BB_Inc_Total_ST.Key_R_PC_L6
HAVING (((Sum(t_BB_Inc_Total_ST.[Inc_Total]))<>0)) 
UNION SELECT t_BB_Exp_Total_ST.rep_Month
	,t_BB_Exp_Total_ST.PC
	,t_BB_Exp_Total_ST.L_1
	,t_BB_Exp_Total_ST.L_2
	,t_BB_Exp_Total_ST.L_3
	,t_BB_Exp_Total_ST.L_4
	,t_BB_Exp_Total_ST.L_5
	,t_BB_Exp_Total_ST.L_6
	,t_BB_Exp_Total_ST.up_Curr
	,t_BB_Exp_Total_ST.Month AS [Month] 
	,t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST 
GROUP BY t_BB_Exp_Total_ST.rep_Month
	,t_BB_Exp_Total_ST.PC
	,t_BB_Exp_Total_ST.L_1
	,t_BB_Exp_Total_ST.L_2
	,t_BB_Exp_Total_ST.L_3
	,t_BB_Exp_Total_ST.L_4
	,t_BB_Exp_Total_ST.L_5
	,t_BB_Exp_Total_ST.L_6
	,t_BB_Exp_Total_ST.up_Curr
	,t_BB_Exp_Total_ST.Month 
	,t_BB_Exp_Total_ST.Key_R_PC_L6	
HAVING (((Sum(t_BB_Exp_Total_ST.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_BB_Profit
SELECT q_BB_PR_WBS.rep_Month, q_BB_PR_WBS.PC, q_BB_PR_WBS.L_1, q_BB_PR_WBS.L_2, q_BB_PR_WBS.L_3, q_BB_PR_WBS.L_4, q_BB_PR_WBS.L_5, q_BB_PR_WBS.L_6, q_BB_PR_WBS.Currency, q_BB_PR_WBS.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_BB_PR_WBS.Key_R_PC_L6
FROM (q_BB_PR_WBS LEFT JOIN t_BB_Inc_Total_ST ON (q_BB_PR_WBS.Currency = t_BB_Inc_Total_ST.Currency) AND (q_BB_PR_WBS.Month = t_BB_Inc_Total_ST.Inc_Base_Mon) AND (q_BB_PR_WBS.Key_R_PC_L6 = t_BB_Inc_Total_ST.Key_R_PC_L6)) LEFT JOIN t_bb_Exp_Total_ST ON (q_BB_PR_WBS.Currency = t_bb_Exp_Total_ST.up_Curr) AND (q_BB_PR_WBS.Month = t_bb_Exp_Total_ST.Month) AND (q_BB_PR_WBS.Key_R_PC_L6 = t_bb_Exp_Total_ST.Key_R_PC_L6)
ORDER BY q_BB_PR_WBS.rep_Month, q_BB_PR_WBS.PC, q_BB_PR_WBS.L_1, q_BB_PR_WBS.L_2, q_BB_PR_WBS.L_3, q_BB_PR_WBS.L_4, q_BB_PR_WBS.L_5, q_BB_PR_WBS.L_6, q_BB_PR_WBS.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Profit_EUR_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6, q_BB_Profit_EUR_With_Dummy.Curr
FROM q_BB_Profit_EUR_With_Dummy
GROUP BY q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6, q_BB_Profit_EUR_With_Dummy.Curr
ORDER BY q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6
PIVOT q_BB_Profit_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Profit_TRY_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6, q_BB_Profit_TRY_With_Dummy.Curr
FROM q_BB_Profit_TRY_With_Dummy
GROUP BY q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6, q_BB_Profit_TRY_With_Dummy.Curr
ORDER BY q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6
PIVOT q_BB_Profit_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Profit_USD_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6, q_BB_Profit_USD_With_Dummy.Curr
FROM q_BB_Profit_USD_With_Dummy
GROUP BY q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6, q_BB_Profit_USD_With_Dummy.Curr
ORDER BY q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6
PIVOT q_BB_Profit_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_With_Dummy
TRANSFORM Sum(q_BB_Profit_With_Dummy.Profit) AS SumOfProfit
SELECT q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Curr
FROM q_BB_Profit_With_Dummy
GROUP BY q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Curr
ORDER BY q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Month
PIVOT q_BB_Profit_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "EUR" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Income]*[r_USD_EUR],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Income]*[r_TRY_EUR],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Expense]*[r_USD_EUR],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Expense]*[r_TRY_EUR],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR_MT
SELECT q_BB_Profit_EUR.rep_Month, q_BB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_EUR.Month, q_BB_Profit_EUR.Expense, q_BB_Profit_EUR.Income, q_BB_Profit_EUR.Currency, q_BB_Profit_EUR.L_1, q_BB_Profit_EUR.L_2, q_BB_Profit_EUR.L_3, q_BB_Profit_EUR.L_4, q_BB_Profit_EUR.L_5, q_BB_Profit_EUR.L_6, q_BB_Profit_EUR.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_EUR.Key_R_PC_L6 INTO t_BB_Profit_EUR_ST
FROM ((q_BB_Profit_EUR LEFT JOIN C3_Code ON (q_BB_Profit_EUR.L_3 = C3_Code.c_L3) AND (q_BB_Profit_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_EUR.L_2 = C2_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_EUR.L_6 = C6_Code.c_L6) AND (q_BB_Profit_EUR.L_5 = C6_Code.c_L5) AND (q_BB_Profit_EUR.L_4 = C6_Code.c_L4) AND (q_BB_Profit_EUR.L_3 = C6_Code.c_L3) AND (q_BB_Profit_EUR.L_2 = C6_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_EUR.rep_Month, q_BB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_EUR.Month, q_BB_Profit_EUR.Expense, q_BB_Profit_EUR.Income, q_BB_Profit_EUR.Currency, q_BB_Profit_EUR.L_1, q_BB_Profit_EUR.L_2, q_BB_Profit_EUR.L_3, q_BB_Profit_EUR.L_4, q_BB_Profit_EUR.L_5, q_BB_Profit_EUR.L_6, q_BB_Profit_EUR.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_EUR

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Total_MT
SELECT q_BB_Profit.rep_Month, q_BB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit.Month, q_BB_Profit.Expense, q_BB_Profit.Income, q_BB_Profit.Currency, q_BB_Profit.L_1, q_BB_Profit.L_2, q_BB_Profit.L_3, q_BB_Profit.L_4, q_BB_Profit.L_5, q_BB_Profit.L_6, q_BB_Profit.Profit, C6_Code.Desc_TR_L6, q_BB_Profit.Key_R_PC_L6 INTO t_BB_Profit_Total_ST
FROM ((q_BB_Profit LEFT JOIN C3_Code ON (q_BB_Profit.L_3 = C3_Code.c_L3) AND (q_BB_Profit.L_2 = C3_Code.c_L2) AND (q_BB_Profit.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit.L_2 = C2_Code.c_L2) AND (q_BB_Profit.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit.L_6 = C6_Code.c_L6) AND (q_BB_Profit.L_5 = C6_Code.c_L5) AND (q_BB_Profit.L_4 = C6_Code.c_L4) AND (q_BB_Profit.L_3 = C6_Code.c_L3) AND (q_BB_Profit.L_2 = C6_Code.c_L2) AND (q_BB_Profit.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit.rep_Month, q_BB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit.Month, q_BB_Profit.Expense, q_BB_Profit.Income, q_BB_Profit.Currency, q_BB_Profit.L_1, q_BB_Profit.L_2, q_BB_Profit.L_3, q_BB_Profit.L_4, q_BB_Profit.L_5, q_BB_Profit.L_6, q_BB_Profit.Profit, C6_Code.Desc_TR_L6, q_BB_Profit.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "TRY" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Income]*[r_USD_TRY],IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Income]*[r_EUR_TRY],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Expense]*[r_USD_TRY],IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Expense]*[r_EUR_TRY],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY_MT
SELECT q_BB_Profit_TRY.rep_Month, q_BB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_TRY.Month, q_BB_Profit_TRY.Expense, q_BB_Profit_TRY.Income, q_BB_Profit_TRY.Currency, q_BB_Profit_TRY.L_1, q_BB_Profit_TRY.L_2, q_BB_Profit_TRY.L_3, q_BB_Profit_TRY.L_4, q_BB_Profit_TRY.L_5, q_BB_Profit_TRY.L_6, q_BB_Profit_TRY.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_TRY.Key_R_PC_L6 INTO t_BB_Profit_TRY_ST
FROM ((q_BB_Profit_TRY LEFT JOIN C3_Code ON (q_BB_Profit_TRY.L_3 = C3_Code.c_L3) AND (q_BB_Profit_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_TRY.L_2 = C2_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_TRY.L_6 = C6_Code.c_L6) AND (q_BB_Profit_TRY.L_5 = C6_Code.c_L5) AND (q_BB_Profit_TRY.L_4 = C6_Code.c_L4) AND (q_BB_Profit_TRY.L_3 = C6_Code.c_L3) AND (q_BB_Profit_TRY.L_2 = C6_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_TRY.rep_Month, q_BB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_TRY.Month, q_BB_Profit_TRY.Expense, q_BB_Profit_TRY.Income, q_BB_Profit_TRY.Currency, q_BB_Profit_TRY.L_1, q_BB_Profit_TRY.L_2, q_BB_Profit_TRY.L_3, q_BB_Profit_TRY.L_4, q_BB_Profit_TRY.L_5, q_BB_Profit_TRY.L_6, q_BB_Profit_TRY.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_TRY

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "USD" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Income]*[r_EUR_USD],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Income]*[r_TRY_USD],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Expense]*[r_EUR_USD],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Expense]*[r_TRY_USD],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD_MT
SELECT q_BB_Profit_USD.rep_Month, q_BB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_USD.Month, q_BB_Profit_USD.Expense, q_BB_Profit_USD.Income, q_BB_Profit_USD.Currency, q_BB_Profit_USD.L_1, q_BB_Profit_USD.L_2, q_BB_Profit_USD.L_3, q_BB_Profit_USD.L_4, q_BB_Profit_USD.L_5, q_BB_Profit_USD.L_6, q_BB_Profit_USD.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_USD.Key_R_PC_L6 INTO t_BB_Profit_USD_ST
FROM ((q_BB_Profit_USD LEFT JOIN C3_Code ON (q_BB_Profit_USD.L_3 = C3_Code.c_L3) AND (q_BB_Profit_USD.L_2 = C3_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_USD.L_2 = C2_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_USD.L_6 = C6_Code.c_L6) AND (q_BB_Profit_USD.L_5 = C6_Code.c_L5) AND (q_BB_Profit_USD.L_4 = C6_Code.c_L4) AND (q_BB_Profit_USD.L_3 = C6_Code.c_L3) AND (q_BB_Profit_USD.L_2 = C6_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_USD.rep_Month, q_BB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_USD.Month, q_BB_Profit_USD.Expense, q_BB_Profit_USD.Income, q_BB_Profit_USD.Currency, q_BB_Profit_USD.L_1, q_BB_Profit_USD.L_2, q_BB_Profit_USD.L_3, q_BB_Profit_USD.L_4, q_BB_Profit_USD.L_5, q_BB_Profit_USD.L_6, q_BB_Profit_USD.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_USD

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_BB_Profit

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Project_Months
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name AS Name
FROM t_BB_Profit_Total_ST LEFT JOIN t_001_Projects ON t_BB_Profit_Total_ST.PC = t_001_Projects.p_Code
GROUP BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name
ORDER BY t_BB_Profit_Total_ST.rep_Month DESC;

----------------------------------------------------------------------------------------------------
q_BB_Qty_ActiveM_Works
SELECT t_BB_Qty.Key_R_PC_L6, t_BB_Qty.Exp_Base_Mon
FROM t_BB_Qty LEFT JOIN t_Rep_Month ON t_BB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_BB_Qty.Exp_Base_Mon)>t_Rep_Month.rep_Month_Date) And ((t_BB_Qty.Exp_Base_Qty)<>0))
ORDER BY t_BB_Qty.Key_R_PC_L6, t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_ActiveM_Works_Monthly
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon
FROM t_BB_Qty LEFT JOIN t_Rep_Month ON t_BB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_BB_Qty.Exp_Base_Mon)>t_Rep_Month.rep_Month_Date) And ((t_BB_Qty.Exp_Base_Qty)<>0))
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon
ORDER BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_Crosstab
TRANSFORM Sum(t_BB_Qty.Exp_Base_Qty) AS SumOfExp_Base_Qty
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
FROM t_BB_Qty
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
ORDER BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
PIVOT t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_Dummy_Full
SELECT t_Rep_Month.rep_Month, q_Budget_Project_Months.PC AS p_Code, t_BB_Exp_Dummy_Part.L_1, t_BB_Exp_Dummy_Part.L_2, t_BB_Exp_Dummy_Part.L_3, t_BB_Exp_Dummy_Part.L_4, t_BB_Exp_Dummy_Part.L_5, t_BB_Exp_Dummy_Part.L_6, t_Months.g_Month, t_BB_Exp_Dummy_Part.Total_Expense, t_BB_Exp_Dummy_Part.up_Curr, [q_Budget_Project_Months].[rep_Month]+'.'+[PC]+'.'+[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS Key_R_PC_L6
FROM t_Months, t_BB_Exp_Dummy_Part, t_Rep_Month INNER JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY t_Rep_Month.rep_Month, q_Budget_Project_Months.PC, t_BB_Exp_Dummy_Part.L_1, t_BB_Exp_Dummy_Part.L_2, t_BB_Exp_Dummy_Part.L_3, t_BB_Exp_Dummy_Part.L_4, t_BB_Exp_Dummy_Part.L_5, t_BB_Exp_Dummy_Part.L_6, t_Months.g_Month, t_BB_Exp_Dummy_Part.Total_Expense, t_BB_Exp_Dummy_Part.up_Curr, [q_Budget_Project_Months].[rep_Month]+'.'+[PC]+'.'+[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6];

----------------------------------------------------------------------------------------------------
q_BB_Res_UP_Market_Coeff
SELECT q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1 AS R_1_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2 AS R_2_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3 AS R_3_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4 AS R_4_Code, (1+[w_UFE]*[r_UFE])*(1+[w_TUFE]*[r_TUFE])*(1+[w_INF_USD]*[r_INF_USD])*(1+[w_INF_EUR]*[r_INF_EUR])*(1+[w_Metal]*[r_Metal])*(1+[w_Petrol]*[r_Petrol])*(1+[w_Cement]*[r_Cement])*(1+[w_Electricity]*[r_Electricity]) AS up_Cost_Coeff, q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon AS g_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_BB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[exp_base_mon] AS Key_Full_Comb
FROM q_BB_UP_Pre_Coeff_ActiveM_Indexes LEFT JOIN R4_Code ON q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, (1+[w_UFE]*[r_UFE])*(1+[w_TUFE]*[r_TUFE])*(1+[w_INF_USD]*[r_INF_USD])*(1+[w_INF_EUR]*[r_INF_EUR])*(1+[w_Metal]*[r_Metal])*(1+[w_Petrol]*[r_Petrol])*(1+[w_Cement]*[r_Cement])*(1+[w_Electricity]*[r_Electricity]), q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_BB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[exp_base_mon]
ORDER BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon;

----------------------------------------------------------------------------------------------------
q_BB_Unit_Price
SELECT q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code AS P01_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month AS [Month], q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_BB_UP_Coeff.Key_R_PC_L6
FROM q_BB_UP_Coeff
GROUP BY q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.rs_Currency, q_BB_UP_Coeff.Key_R_PC_L6, q_BB_UP_Coeff.g_Month
ORDER BY q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_BB_Unit_Price_Crosstab
TRANSFORM Sum(q_BB_Unit_Price.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_BB_Unit_Price.rep_Month, q_BB_Unit_Price.L_1, q_BB_Unit_Price.L_2, q_BB_Unit_Price.L_3, q_BB_Unit_Price.L_4, q_BB_Unit_Price.L_5, q_BB_Unit_Price.L_6, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.P01_Code
FROM q_BB_Unit_Price
GROUP BY q_BB_Unit_Price.rep_Month, q_BB_Unit_Price.L_1, q_BB_Unit_Price.L_2, q_BB_Unit_Price.L_3, q_BB_Unit_Price.L_4, q_BB_Unit_Price.L_5, q_BB_Unit_Price.L_6, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.P01_Code
PIVOT q_BB_Unit_Price.Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_Check
SELECT q_BB_Exp.rep_Month, q_BB_Exp.PC, q_BB_Exp.L_1, q_BB_Exp.L_2, q_BB_Exp.L_3, q_BB_Exp.L_4, q_BB_Exp.L_5, q_BB_Exp.L_6, q_BB_Exp.up_Curr, Sum(q_BB_Exp.Total_Expense) AS [Total Expense], Sum(q_BB_Qty.Exp_Base_Qty) AS Quantity, C6_Code.Unit, q_BB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Without_Coeff, [Total Expense]/[Quantity] AS UP_Average_With_Coeff, [UP_Average_With_Coeff]/[UP_Without_Coeff] AS UP_Average_Coeff
FROM ((q_BB_Exp LEFT JOIN q_BB_Qty ON (q_BB_Exp.L_6 = q_BB_Qty.L_6) AND (q_BB_Exp.L_5 = q_BB_Qty.L_5) AND (q_BB_Exp.L_4 = q_BB_Qty.L_4) AND (q_BB_Exp.L_3 = q_BB_Qty.L_3) AND (q_BB_Exp.L_2 = q_BB_Qty.L_2) AND (q_BB_Exp.L_1 = q_BB_Qty.L_1) AND (q_BB_Exp.PC = q_BB_Qty.PC) AND (q_BB_Exp.rep_Month = q_BB_Qty.rep_Month)) LEFT JOIN q_BB_Work_UP_without_Coeff ON (q_BB_Exp.L_6 = q_BB_Work_UP_without_Coeff.L_6) AND (q_BB_Exp.L_5 = q_BB_Work_UP_without_Coeff.L_5) AND (q_BB_Exp.L_4 = q_BB_Work_UP_without_Coeff.L_4) AND (q_BB_Exp.L_3 = q_BB_Work_UP_without_Coeff.L_3) AND (q_BB_Exp.L_2 = q_BB_Work_UP_without_Coeff.L_2) AND (q_BB_Exp.L_1 = q_BB_Work_UP_without_Coeff.L_1) AND (q_BB_Exp.PC = q_BB_Work_UP_without_Coeff.PC) AND (q_BB_Exp.rep_Month = q_BB_Work_UP_without_Coeff.rep_Month)) LEFT JOIN C6_Code ON (q_BB_Exp.L_6 = C6_Code.[c_L6]) AND (q_BB_Exp.L_5 = C6_Code.[c_L5]) AND (q_BB_Exp.L_4 = C6_Code.[c_L4]) AND (q_BB_Exp.L_3 = C6_Code.[c_L3]) AND (q_BB_Exp.L_2 = C6_Code.[c_L2]) AND (q_BB_Exp.L_1 = C6_Code.[c_L1])
GROUP BY q_BB_Exp.rep_Month, q_BB_Exp.PC, q_BB_Exp.L_1, q_BB_Exp.L_2, q_BB_Exp.L_3, q_BB_Exp.L_4, q_BB_Exp.L_5, q_BB_Exp.L_6, q_BB_Exp.up_Curr, C6_Code.Unit, q_BB_Work_UP_without_Coeff.Unit_Price_Planned;

----------------------------------------------------------------------------------------------------
q_BB_UP_Coeff
SELECT q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.PC AS up_pr_Code, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.R_1_Code AS up_rs_L1, q_BB_Res_UP_Market_Coeff.R_2_Code AS up_rs_L2, q_BB_Res_UP_Market_Coeff.R_3_Code AS up_rs_L3, q_BB_Res_UP_Market_Coeff.R_4_Code AS up_rs_L4, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.up_Cost_Coeff, q_BB_Curr_Escalation_Rates.k_USD, q_BB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_BB_Res_UP_Market_Coeff.up_Cost, q_BB_Res_UP_Market_Coeff.Currency AS rs_Currency, q_BB_Res_UP_Market_Coeff.Key_Full, q_BB_Res_UP_Market_Coeff.An_rs_quantity, q_BB_Res_UP_Market_Coeff.Key_R_PC_L6
FROM q_BB_Res_UP_Market_Coeff LEFT JOIN q_BB_Curr_Escalation_Rates ON q_BB_Res_UP_Market_Coeff.Key_Full_Comb = q_BB_Curr_Escalation_Rates.Key_Full_Comb
GROUP BY q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.R_1_Code, q_BB_Res_UP_Market_Coeff.R_2_Code, q_BB_Res_UP_Market_Coeff.R_3_Code, q_BB_Res_UP_Market_Coeff.R_4_Code, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.up_Cost_Coeff, q_BB_Curr_Escalation_Rates.k_USD, q_BB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_BB_Res_UP_Market_Coeff.up_Cost, q_BB_Res_UP_Market_Coeff.Currency, q_BB_Res_UP_Market_Coeff.Key_Full, q_BB_Res_UP_Market_Coeff.An_rs_quantity, q_BB_Res_UP_Market_Coeff.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_UP_Comp
SELECT t_BB_Res_UP_Add.rep_Month, t_BB_Res_UP_Add.up_pr_Code, t_BB_Res_UP_Add.up_rs_L1, t_BB_Res_UP_Add.up_rs_L2, t_BB_Res_UP_Add.up_rs_L3, t_BB_Res_UP_Add.up_rs_L4, t_BB_Res_UP_Add.UP_Date, t_BB_Res_UP_Add.up_Cost, t_BB_Res_UP_Add.up_Curr
FROM t_BB_Res_UP_Add LEFT JOIN t_BB_Res_UP ON (t_BB_Res_UP_Add.rep_Month = t_BB_Res_UP.rep_Month) AND (t_BB_Res_UP_Add.up_pr_Code = t_BB_Res_UP.up_pr_Code) AND (t_BB_Res_UP_Add.up_rs_L1 = t_BB_Res_UP.up_rs_L1) AND (t_BB_Res_UP_Add.up_rs_L2 = t_BB_Res_UP.up_rs_L2) AND (t_BB_Res_UP_Add.up_rs_L3 = t_BB_Res_UP.up_rs_L3) AND (t_BB_Res_UP_Add.up_rs_L4 = t_BB_Res_UP.up_rs_L4) AND (t_BB_Res_UP_Add.UP_Date = t_BB_Res_UP.UP_Date) AND (t_BB_Res_UP_Add.up_Cost = t_BB_Res_UP.up_Cost) AND (t_BB_Res_UP_Add.up_Curr = t_BB_Res_UP.up_Curr)
WHERE (((t_BB_Res_UP.up_pr_Code) Is Null))
ORDER BY t_BB_Res_UP_Add.rep_Month, t_BB_Res_UP_Add.up_pr_Code, t_BB_Res_UP_Add.up_rs_L1, t_BB_Res_UP_Add.up_rs_L2, t_BB_Res_UP_Add.up_rs_L3, t_BB_Res_UP_Add.up_rs_L4, t_BB_Res_UP_Add.UP_Date, t_BB_Res_UP_Add.up_Cost, t_BB_Res_UP_Add.up_Curr;

----------------------------------------------------------------------------------------------------
q_BB_UP_Pre_Coeff_ActiveM_Indexes
SELECT q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.Exp_Base_Mon, q_BB_Analysis_ActiveM_With_Prices.rs_L1, q_BB_Analysis_ActiveM_With_Prices.rs_L2, q_BB_Analysis_ActiveM_With_Prices.rs_L3, q_BB_Analysis_ActiveM_With_Prices.rs_L4, t_BB_Indexes.r_UFE, t_BB_Indexes.r_TUFE, t_BB_Indexes.r_INF_USD, t_BB_Indexes.r_INF_EUR, t_BB_Indexes.r_Metal, t_BB_Indexes.r_Petrol, t_BB_Indexes.r_Cement, t_BB_Indexes.r_Electricity, q_BB_Analysis_ActiveM_With_Prices.Currency AS rs_Currency, q_BB_Analysis_ActiveM_With_Prices.An_rs_quantity, q_BB_Analysis_ActiveM_With_Prices.up_Cost, q_BB_Analysis_ActiveM_With_Prices.Key_R4_Simple, q_BB_Analysis_ActiveM_With_Prices.Key_R4, q_BB_Analysis_ActiveM_With_Prices.Key_R_PC_L6, q_BB_Analysis_ActiveM_With_Prices.Key_Full
FROM q_BB_Analysis_ActiveM_With_Prices LEFT JOIN t_BB_Indexes ON (q_BB_Analysis_ActiveM_With_Prices.PC = t_BB_Indexes.p_Code) AND (q_BB_Analysis_ActiveM_With_Prices.rep_Month = t_BB_Indexes.rep_Month) AND (q_BB_Analysis_ActiveM_With_Prices.Exp_base_mon = t_BB_Indexes.g_Month);

----------------------------------------------------------------------------------------------------
q_BB_UP_with_Curr_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_with_Curr_Coeff.UP) AS SumOfUP
SELECT q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.rs_Currency
FROM q_BB_Work_UP_with_Curr_Coeff
GROUP BY q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.rs_Currency
ORDER BY q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.Month
PIVOT q_BB_Work_UP_with_Curr_Coeff.Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_with_Market_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_with_Market_Coeff.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_BB_Work_UP_with_Market_Coeff.rep_Month, q_BB_Work_UP_with_Market_Coeff.PC, q_BB_Work_UP_with_Market_Coeff.L_1, q_BB_Work_UP_with_Market_Coeff.L_2, q_BB_Work_UP_with_Market_Coeff.L_3, q_BB_Work_UP_with_Market_Coeff.L_4, q_BB_Work_UP_with_Market_Coeff.L_5, q_BB_Work_UP_with_Market_Coeff.L_6, q_BB_Work_UP_with_Market_Coeff.Currency
FROM q_BB_Work_UP_with_Market_Coeff
GROUP BY q_BB_Work_UP_with_Market_Coeff.rep_Month, q_BB_Work_UP_with_Market_Coeff.PC, q_BB_Work_UP_with_Market_Coeff.L_1, q_BB_Work_UP_with_Market_Coeff.L_2, q_BB_Work_UP_with_Market_Coeff.L_3, q_BB_Work_UP_with_Market_Coeff.L_4, q_BB_Work_UP_with_Market_Coeff.L_5, q_BB_Work_UP_with_Market_Coeff.L_6, q_BB_Work_UP_with_Market_Coeff.Currency
PIVOT q_BB_Work_UP_with_Market_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_without_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_without_Coeff.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_BB_Work_UP_without_Coeff.rep_Month, q_BB_Work_UP_without_Coeff.PC, q_BB_Work_UP_without_Coeff.L_1, q_BB_Work_UP_without_Coeff.L_2, q_BB_Work_UP_without_Coeff.L_3, q_BB_Work_UP_without_Coeff.L_4, q_BB_Work_UP_without_Coeff.L_5, q_BB_Work_UP_without_Coeff.L_6, q_BB_Work_UP_without_Coeff.rs_Currency
FROM q_BB_Work_UP_without_Coeff
GROUP BY q_BB_Work_UP_without_Coeff.rep_Month, q_BB_Work_UP_without_Coeff.PC, q_BB_Work_UP_without_Coeff.L_1, q_BB_Work_UP_without_Coeff.L_2, q_BB_Work_UP_without_Coeff.L_3, q_BB_Work_UP_without_Coeff.L_4, q_BB_Work_UP_without_Coeff.L_5, q_BB_Work_UP_without_Coeff.L_6, q_BB_Work_UP_without_Coeff.rs_Currency
PIVOT q_BB_Work_UP_without_Coeff.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_with_Curr_Coeff
SELECT q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_BB_Curr_Escalation_Rates.rs_currency
FROM q_BB_Analysis_ActiveM_With_Prices LEFT JOIN q_BB_Curr_Escalation_Rates ON (q_BB_Analysis_ActiveM_With_Prices.rep_Month = q_BB_Curr_Escalation_Rates.rep_Month) AND (q_BB_Analysis_ActiveM_With_Prices.PC = q_BB_Curr_Escalation_Rates.PC) AND (q_BB_Analysis_ActiveM_With_Prices.L_1 = q_BB_Curr_Escalation_Rates.L_1) AND (q_BB_Analysis_ActiveM_With_Prices.L_2 = q_BB_Curr_Escalation_Rates.L_2) AND (q_BB_Analysis_ActiveM_With_Prices.L_3 = q_BB_Curr_Escalation_Rates.L_3) AND (q_BB_Analysis_ActiveM_With_Prices.L_4 = q_BB_Curr_Escalation_Rates.L_4) AND (q_BB_Analysis_ActiveM_With_Prices.L_5 = q_BB_Curr_Escalation_Rates.L_5) AND (q_BB_Analysis_ActiveM_With_Prices.L_6 = q_BB_Curr_Escalation_Rates.L_6) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L1 = q_BB_Curr_Escalation_Rates.rs_L1) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L2 = q_BB_Curr_Escalation_Rates.rs_L2) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L3 = q_BB_Curr_Escalation_Rates.rs_L3) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L4 = q_BB_Curr_Escalation_Rates.rs_L4) AND (q_BB_Analysis_ActiveM_With_Prices.currency = q_BB_Curr_Escalation_Rates.rs_currency) AND (q_BB_Analysis_ActiveM_With_Prices.exp_base_mon = q_BB_Curr_Escalation_Rates.Month)
GROUP BY q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon, q_BB_Curr_Escalation_Rates.rs_currency
ORDER BY q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_with_Market_Coeff
SELECT q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_BB_Res_UP_Market_Coeff.Currency
FROM q_BB_Res_UP_Market_Coeff
GROUP BY q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.Currency;

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_without_Coeff
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Exp_Base_Mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency
FROM q_BB_UP_Pre_Coeff_ActiveM_Indexes
GROUP BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Exp_Base_Mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency;

----------------------------------------------------------------------------------------------------
q_Budget_AllProjects_Detailed_Report
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5] AS L5_Comb, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS L_Comb, q_CB_AllProjects_Report_Data.Desc_TR_L6, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM, t_001_Projects.r03_S_Name
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5], [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6], q_CB_AllProjects_Report_Data.Desc_TR_L6, q_CB_AllProjects_Report_Data.Currency, t_001_Projects.r03_S_Name
HAVING ((q_CB_AllProjects_Report_Data.rep_Month)=[reports]![r_cb_summary_lvl_5]![Text200]) AND q_CB_AllProjects_Report_Data.[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]='D.01.01.15.81' AND ((q_CB_AllProjects_Report_Data.PC)=[reports]![r_cb_summary_lvl_5]![Text193]);

----------------------------------------------------------------------------------------------------
q_Budget_AllProjects_Report
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency
HAVING q_CB_AllProjects_Report_Data.rep_Month=[Reports]![r_CB_Summary_Lvl_5]![Text200] AND q_CB_AllProjects_Report_Data.PC=[Reports]![r_CB_Summary_Lvl_5]![Text193] AND q_CB_AllProjects_Report_Data.L_1=[Reports]![r_CB_Summary_Lvl_5]![Text61] AND q_CB_AllProjects_Report_Data.L_2=[Reports]![r_CB_Summary_Lvl_5]![Text110] AND q_CB_AllProjects_Report_Data.L_3=[Reports]![r_CB_Summary_Lvl_5]![Text111] AND q_CB_AllProjects_Report_Data.L_4=[Reports]![r_CB_Summary_Lvl_5]![Text194];

----------------------------------------------------------------------------------------------------
q_Budget_Comp_Report
SELECT q_CB_Sum_Cons_Data.L_1, q_CB_Sum_Cons_Data.L_2, q_CB_Sum_Cons_Data.L_3, q_CB_Sum_Cons_Data.Desc_TR_L2, q_CB_Sum_Cons_Data.Desc_TR_L3, q_CB_Sum_Cons_Data.up_Curr, Sum(q_CB_Sum_Cons_Data.IncomeGT_First) AS IncomeGT_First, Sum(q_CB_Sum_Cons_Data.ExpenseGT_First) AS ExpenseGT_First, Sum(q_CB_Sum_Cons_Data.ProfitGT_First) AS ProfitGT_First, Sum(q_CB_Sum_Cons_Data.IncomeGT_Second) AS IncomeGT_Second, Sum(q_CB_Sum_Cons_Data.ExpenseGT_Second) AS ExpenseGT_Second, Sum(q_CB_Sum_Cons_Data.ProfitGT_Second) AS ProfitGT_Second, Sum(q_CB_Sum_Cons_Data.IncomeDiffGT) AS IncomeDiffGT, Sum(q_CB_Sum_Cons_Data.ExpenseDiff_GT) AS ExpenseDiff_GT, Sum(q_CB_Sum_Cons_Data.ProfitDiff_GT) AS ProfitDiff_GT, Sum(q_CB_Sum_Cons_Data.IncomeRT_First) AS IncomeRT_First, Sum(q_CB_Sum_Cons_Data.ExpenseRT_First) AS ExpenseRT_First, Sum(q_CB_Sum_Cons_Data.ProfitRT_First) AS ProfitRT_First, Sum(q_CB_Sum_Cons_Data.IncomeRT_Second) AS IncomeRT_Second, Sum(q_CB_Sum_Cons_Data.ExpenseRT_Second) AS ExpenseRT_Second, Sum(q_CB_Sum_Cons_Data.ProfitRT_Second) AS ProfitRT_Second, Sum(q_CB_Sum_Cons_Data.IncomeDiffRT) AS IncomeDiffRT, Sum(q_CB_Sum_Cons_Data.ExpenseDiff_RT) AS ExpenseDiff_RT, Sum(q_CB_Sum_Cons_Data.ProfitDiff_RT) AS ProfitDiff_RT, Sum(q_CB_Sum_Cons_Data.IncomeREM_First) AS IncomeREM_First, Sum(q_CB_Sum_Cons_Data.ExpenseREM_First) AS ExpenseREM_First, Sum(q_CB_Sum_Cons_Data.ProfitREM_First) AS ProfitREM_First, Sum(q_CB_Sum_Cons_Data.IncomeREM_Second) AS IncomeREM_Second, Sum(q_CB_Sum_Cons_Data.ExpenseREM_Second) AS ExpenseREM_Second, Sum(q_CB_Sum_Cons_Data.ProfitREM_Second) AS ProfitREM_Second, Sum(q_CB_Sum_Cons_Data.IncomeREM_Diff) AS IncomeREM_Diff, Sum(q_CB_Sum_Cons_Data.ExpenseREM_Diff) AS ExpenseREM_Diff, Sum(q_CB_Sum_Cons_Data.ProfitREM_Diff) AS ProfitREM_Diff
FROM q_CB_Sum_Cons_Data
GROUP BY q_CB_Sum_Cons_Data.L_1, q_CB_Sum_Cons_Data.L_2, q_CB_Sum_Cons_Data.L_3, q_CB_Sum_Cons_Data.Desc_TR_L2, q_CB_Sum_Cons_Data.Desc_TR_L3, q_CB_Sum_Cons_Data.up_Curr;

----------------------------------------------------------------------------------------------------
q_Budget_Comp_Report_Detailed
SELECT [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6] AS L6_Comb, [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] AS L5_Comb, q_CB_Sum_Cons_Data.Desc_TR_L6, q_CB_Sum_Cons_Data.up_Curr, Sum(q_CB_Sum_Cons_Data.IncomeGT_First) AS IncomeGT_First, Sum(q_CB_Sum_Cons_Data.ExpenseGT_First) AS ExpenseGT_First, Sum(q_CB_Sum_Cons_Data.ProfitGT_First) AS ProfitGT_First, Sum(q_CB_Sum_Cons_Data.IncomeGT_Second) AS IncomeGT_Second, Sum(q_CB_Sum_Cons_Data.ExpenseGT_Second) AS ExpenseGT_Second, Sum(q_CB_Sum_Cons_Data.ProfitGT_Second) AS ProfitGT_Second, Sum(q_CB_Sum_Cons_Data.IncomeDiffGT) AS IncomeDiffGT, Sum(q_CB_Sum_Cons_Data.ExpenseDiff_GT) AS ExpenseDiff_GT, Sum(q_CB_Sum_Cons_Data.ProfitDiff_GT) AS ProfitDiff_GT, Sum(q_CB_Sum_Cons_Data.IncomeRT_First) AS IncomeRT_First, Sum(q_CB_Sum_Cons_Data.ExpenseRT_First) AS ExpenseRT_First, Sum(q_CB_Sum_Cons_Data.ProfitRT_First) AS ProfitRT_First, Sum(q_CB_Sum_Cons_Data.IncomeRT_Second) AS IncomeRT_Second, Sum(q_CB_Sum_Cons_Data.ExpenseRT_Second) AS ExpenseRT_Second, Sum(q_CB_Sum_Cons_Data.ProfitRT_Second) AS ProfitRT_Second, Sum(q_CB_Sum_Cons_Data.IncomeDiffRT) AS IncomeDiffRT, Sum(q_CB_Sum_Cons_Data.ExpenseDiff_RT) AS ExpenseDiff_RT, Sum(q_CB_Sum_Cons_Data.ProfitDiff_RT) AS ProfitDiff_RT, Sum(q_CB_Sum_Cons_Data.IncomeREM_First) AS IncomeREM_First, Sum(q_CB_Sum_Cons_Data.ExpenseREM_First) AS ExpenseREM_First, Sum(q_CB_Sum_Cons_Data.ProfitREM_First) AS ProfitREM_First, Sum(q_CB_Sum_Cons_Data.IncomeREM_Second) AS IncomeREM_Second, Sum(q_CB_Sum_Cons_Data.ExpenseREM_Second) AS ExpenseREM_Second, Sum(q_CB_Sum_Cons_Data.ProfitREM_Second) AS ProfitREM_Second, Sum(q_CB_Sum_Cons_Data.IncomeREM_Diff) AS IncomeREM_Diff, Sum(q_CB_Sum_Cons_Data.ExpenseREM_Diff) AS ExpenseREM_Diff, Sum(q_CB_Sum_Cons_Data.ProfitREM_Diff) AS ProfitREM_Diff
FROM q_CB_Sum_Cons_Data
GROUP BY [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6], [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5], q_CB_Sum_Cons_Data.Desc_TR_L6, q_CB_Sum_Cons_Data.up_Curr
HAVING q_CB_Sum_Cons_Data.[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]='D.01.01.40.14';

----------------------------------------------------------------------------------------------------
q_Budget_Cons_Detailed_Report
SELECT q_CB_Cons_Report_Data.rep_Month, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS L_Comb, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5] AS L5_Comb
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6], q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]
HAVING (((q_CB_Cons_Report_Data.rep_Month)=Forms!Management!cbo_date_Consolidated) And ((q_CB_Cons_Report_Data.L_1+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5])='D.01.01.12.21'));

----------------------------------------------------------------------------------------------------
q_Budget_Cons_Report
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.Desc_TR_L5, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.Desc_TR_L5, q_CB_Cons_Report_Data.Currency
HAVING (((q_CB_Cons_Report_Data.rep_Month)=Forms!Management!cbo_date_Consolidated) And ((q_CB_Cons_Report_Data.L_1)=Reports!r_CB_Sum_Cons_Lvl_5!Text61) And ((q_CB_Cons_Report_Data.L_2)=Reports!r_CB_Sum_Cons_Lvl_5!Text110) And ((q_CB_Cons_Report_Data.L_3)=Reports!r_CB_Sum_Cons_Lvl_5!Text111) And ((q_CB_Cons_Report_Data.L_4)=Reports!r_CB_Sum_Cons_Lvl_5!Text180));

----------------------------------------------------------------------------------------------------
q_Budget_Project_Months
Select 
rep_Month,
PC,
Name,
'GÜNCEL' AS Budget_Type
From q_CB_Project_Months

UNION Select
rep_Month,
PC,
Name,
'BAZ' AS Budget_Type
From q_BB_Project_Months;

----------------------------------------------------------------------------------------------------
q_Budget_WBS_Union
SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_GT

UNION

SELECT 
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_GT

UNION

SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_RT

UNION SELECT 
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_RT;

----------------------------------------------------------------------------------------------------
q_Budget_WBS_Union_Projects
SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_GT

UNION

SELECT 
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_GT

UNION

SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_RT

UNION SELECT 
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_RT;

----------------------------------------------------------------------------------------------------
q_CB_Active_Months_Res_Qty
SELECT t_PL_Analysis.rep_Month, t_PL_Analysis.P01_Code AS PC, q_CB_Qty_ActiveM_Works.Exp_CB_Mon, t_PL_Analysis.Key_R4, q_CB_Qty_ActiveM_Works.Key_R_PC_L6, t_PL_Analysis.Key_Full, t_PL_Analysis.L_1, t_PL_Analysis.L_2, t_PL_Analysis.L_3, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, t_PL_Analysis.L_4, t_PL_Analysis.L_5, t_PL_Analysis.L_6, t_PL_Analysis.Key_R4_Simple, (1+[r_loss])*([t_PL_Analysis].[An_rs_quantity]) AS An_rs_quantity, t_PL_Analysis.r_loss
FROM q_CB_Qty_ActiveM_Works LEFT JOIN t_PL_Analysis ON q_CB_Qty_ActiveM_Works.Key_R_PC_L6 = t_PL_Analysis.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Active_Months_Res_Qty_Mod
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.Exp_CB_Mon, q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty.An_rs_quantity, q_CB_Active_Months_Res_Qty.Key_R4_Simple, q_CB_Active_Months_Res_Qty.Key_Full, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_R4
FROM q_CB_Active_Months_Res_Qty LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple
WHERE (((q_CB_Active_Months_Res_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_CurrMonth_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.Month<=#2022/07/01#;

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_Data
SELECT q_CB_Summary_Report_Union.rep_Month, q_CB_Summary_Report_Union.PC, q_CB_Summary_Report_Union.L_1, q_CB_Summary_Report_Union.L_2, q_CB_Summary_Report_Union.L_3, q_CB_Summary_Report_Union.L_4, q_CB_Summary_Report_Union.L_5, q_CB_Summary_Report_Union.L_6, q_CB_Summary_Report_Union.Currency, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(IIf([q_CB_AllProjects_Report_EndProject_Data].[Income] Is Null,"0",[q_CB_AllProjects_Report_EndProject_Data].[Income])) AS IncomeGT, Sum(IIf([q_CB_AllProjects_Report_EndProject_Data].[Expense] Is Null,"0",[q_CB_AllProjects_Report_EndProject_Data].[Expense])) AS ExpenseGT, [IncomeGT]-[ExpenseGT] AS ProfitGT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Income] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Income])) AS IncomeRT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Expense] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Expense])) AS ExpenseRT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Profit] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Profit])) AS ProfitRT, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM, C6_Code.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM ((((((q_CB_Summary_Report_Union LEFT JOIN q_CB_AllProjects_Report_EndProject_Data ON (q_CB_Summary_Report_Union.Currency = q_CB_AllProjects_Report_EndProject_Data.Currency) AND (q_CB_Summary_Report_Union.L_6 = q_CB_AllProjects_Report_EndProject_Data.L_6) AND (q_CB_Summary_Report_Union.L_5 = q_CB_AllProjects_Report_EndProject_Data.L_5) AND (q_CB_Summary_Report_Union.L_4 = q_CB_AllProjects_Report_EndProject_Data.L_4) AND (q_CB_Summary_Report_Union.L_3 = q_CB_AllProjects_Report_EndProject_Data.L_3) AND (q_CB_Summary_Report_Union.L_2 = q_CB_AllProjects_Report_EndProject_Data.L_2) AND (q_CB_Summary_Report_Union.L_1 = q_CB_AllProjects_Report_EndProject_Data.L_1) AND (q_CB_Summary_Report_Union.PC = q_CB_AllProjects_Report_EndProject_Data.PC) AND (q_CB_Summary_Report_Union.rep_Month = q_CB_AllProjects_Report_EndProject_Data.rep_Month)) LEFT JOIN C6_Code ON (q_CB_Summary_Report_Union.L_6 = C6_Code.c_L6) AND (q_CB_Summary_Report_Union.L_5 = C6_Code.c_L5) AND (q_CB_Summary_Report_Union.L_4 = C6_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C6_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C6_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C6_Code.c_L1)) LEFT JOIN C3_Code ON (q_CB_Summary_Report_Union.L_3 = C3_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C3_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Summary_Report_Union.L_2 = C2_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C2_Code.c_L1)) LEFT JOIN q_CB_Summary_Report_CurrMonth_Data_Group ON (q_CB_Summary_Report_Union.Currency = q_CB_Summary_Report_CurrMonth_Data_Group.Currency) AND (q_CB_Summary_Report_Union.L_6 = q_CB_Summary_Report_CurrMonth_Data_Group.L_6) AND (q_CB_Summary_Report_Union.L_5 = q_CB_Summary_Report_CurrMonth_Data_Group.L_5) AND (q_CB_Summary_Report_Union.L_4 = q_CB_Summary_Report_CurrMonth_Data_Group.L_4) AND (q_CB_Summary_Report_Union.L_3 = q_CB_Summary_Report_CurrMonth_Data_Group.L_3) AND (q_CB_Summary_Report_Union.L_2 = q_CB_Summary_Report_CurrMonth_Data_Group.L_2) AND (q_CB_Summary_Report_Union.L_1 = q_CB_Summary_Report_CurrMonth_Data_Group.L_1) AND (q_CB_Summary_Report_Union.PC = q_CB_Summary_Report_CurrMonth_Data_Group.PC) AND (q_CB_Summary_Report_Union.rep_Month = q_CB_Summary_Report_CurrMonth_Data_Group.rep_Month)) LEFT JOIN C5_Code ON (q_CB_Summary_Report_Union.L_5 = C5_Code.c_L5) AND (q_CB_Summary_Report_Union.L_4 = C5_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C5_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C5_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_CB_Summary_Report_Union.L_4 = C4_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C4_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C4_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Summary_Report_Union.rep_Month, q_CB_Summary_Report_Union.PC, q_CB_Summary_Report_Union.L_1, q_CB_Summary_Report_Union.L_2, q_CB_Summary_Report_Union.L_3, q_CB_Summary_Report_Union.L_4, q_CB_Summary_Report_Union.L_5, q_CB_Summary_Report_Union.L_6, q_CB_Summary_Report_Union.Currency, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, C6_Code.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_EndProject_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Analysis_ActiveM_With_Prices
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.Exp_CB_Mon, q_CB_Active_Months_Res_Qty.An_rs_quantity, q_CB_Active_Months_Res_Qty.Key_R4, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_Full, t_PL_Res_UP.up_Cost, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency, q_CB_Active_Months_Res_Qty.Key_R4_Simple
FROM (q_CB_Active_Months_Res_Qty LEFT JOIN t_PL_Res_UP ON q_CB_Active_Months_Res_Qty.Key_R4 = t_PL_Res_UP.Key_R4) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Analysis_ActiveM_With_Prices_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.An_rs_quantity, t_PL_Res_UP.up_Cost, q_CB_Active_Months_Res_Qty_Mod.Key_R4, q_CB_Active_Months_Res_Qty_Mod.Key_R_PC_L6, q_CB_Active_Months_Res_Qty_Mod.Key_Full, q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple
FROM q_CB_Active_Months_Res_Qty_Mod LEFT JOIN t_PL_Res_UP ON q_CB_Active_Months_Res_Qty_Mod.Key_R4 = t_PL_Res_UP.Key_R4;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_CurrMonth_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.Month<=#2022/07/01#;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_CurrMonth_Data_Group
SELECT q_CB_Cons_Report_CurrMonth_Data.rep_Month, q_CB_Cons_Report_CurrMonth_Data.L_1, q_CB_Cons_Report_CurrMonth_Data.L_2, q_CB_Cons_Report_CurrMonth_Data.L_3, q_CB_Cons_Report_CurrMonth_Data.L_4, q_CB_Cons_Report_CurrMonth_Data.L_5, q_CB_Cons_Report_CurrMonth_Data.L_6, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L2, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L3, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L6, Sum(q_CB_Cons_Report_CurrMonth_Data.Income) AS Income, Sum(q_CB_Cons_Report_CurrMonth_Data.Expense) AS Expense, Sum(q_CB_Cons_Report_CurrMonth_Data.Profit) AS Profit, q_CB_Cons_Report_CurrMonth_Data.Currency
FROM q_CB_Cons_Report_CurrMonth_Data
GROUP BY q_CB_Cons_Report_CurrMonth_Data.rep_Month, q_CB_Cons_Report_CurrMonth_Data.L_1, q_CB_Cons_Report_CurrMonth_Data.L_2, q_CB_Cons_Report_CurrMonth_Data.L_3, q_CB_Cons_Report_CurrMonth_Data.L_4, q_CB_Cons_Report_CurrMonth_Data.L_5, q_CB_Cons_Report_CurrMonth_Data.L_6, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L2, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L3, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L6, q_CB_Cons_Report_CurrMonth_Data.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_Data
SELECT q_CB_Cons_Report_Union.rep_Month, q_CB_Cons_Report_Union.L_1, q_CB_Cons_Report_Union.L_2, q_CB_Cons_Report_Union.L_3, q_CB_Cons_Report_Union.L_4, q_CB_Cons_Report_Union.L_5, q_CB_Cons_Report_Union.L_6, q_CB_Cons_Report_Union.Currency, Sum(IIf([q_CB_Cons_Report_EndProject_Data].[Income] Is Null,"0",[q_CB_Cons_Report_EndProject_Data].[Income])) AS IncomeGT, Sum(IIf([q_CB_Cons_Report_EndProject_Data].[Expense] Is Null,"0",[q_CB_Cons_Report_EndProject_Data].[Expense])) AS ExpenseGT, [IncomeGT]-[ExpenseGT] AS ProfitGT, Sum(IIf([q_CB_Cons_Report_CurrMonth_Data_Group].[Income] Is Null,"0",[q_CB_Cons_Report_CurrMonth_Data_Group].[Income])) AS IncomeRT, Sum(IIf([q_CB_Cons_Report_CurrMonth_Data_Group].[Expense] Is Null,"0",[q_CB_Cons_Report_CurrMonth_Data_Group].[Expense])) AS ExpenseRT, [IncomeRT]-[ExpenseRT] AS ProfitRT, C6_Code.Desc_TR_L6, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM ((((((q_CB_Cons_Report_Union LEFT JOIN q_CB_Cons_Report_CurrMonth_Data_Group ON (q_CB_Cons_Report_Union.rep_Month = q_CB_Cons_Report_CurrMonth_Data_Group.rep_Month) AND (q_CB_Cons_Report_Union.L_1 = q_CB_Cons_Report_CurrMonth_Data_Group.L_1) AND (q_CB_Cons_Report_Union.L_2 = q_CB_Cons_Report_CurrMonth_Data_Group.L_2) AND (q_CB_Cons_Report_Union.L_3 = q_CB_Cons_Report_CurrMonth_Data_Group.L_3) AND (q_CB_Cons_Report_Union.L_4 = q_CB_Cons_Report_CurrMonth_Data_Group.L_4) AND (q_CB_Cons_Report_Union.L_5 = q_CB_Cons_Report_CurrMonth_Data_Group.L_5) AND (q_CB_Cons_Report_Union.L_6 = q_CB_Cons_Report_CurrMonth_Data_Group.L_6) AND (q_CB_Cons_Report_Union.Currency = q_CB_Cons_Report_CurrMonth_Data_Group.Currency)) LEFT JOIN q_CB_Cons_Report_EndProject_Data ON (q_CB_Cons_Report_Union.rep_Month = q_CB_Cons_Report_EndProject_Data.rep_Month) AND (q_CB_Cons_Report_Union.L_1 = q_CB_Cons_Report_EndProject_Data.L_1) AND (q_CB_Cons_Report_Union.L_2 = q_CB_Cons_Report_EndProject_Data.L_2) AND (q_CB_Cons_Report_Union.L_3 = q_CB_Cons_Report_EndProject_Data.L_3) AND (q_CB_Cons_Report_Union.L_4 = q_CB_Cons_Report_EndProject_Data.L_4) AND (q_CB_Cons_Report_Union.L_5 = q_CB_Cons_Report_EndProject_Data.L_5) AND (q_CB_Cons_Report_Union.L_6 = q_CB_Cons_Report_EndProject_Data.L_6) AND (q_CB_Cons_Report_Union.Currency = q_CB_Cons_Report_EndProject_Data.Currency)) LEFT JOIN C6_Code ON (q_CB_Cons_Report_Union.L_1 = C6_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C6_Code.c_L2) AND (q_CB_Cons_Report_Union.L_3 = C6_Code.c_L3) AND (q_CB_Cons_Report_Union.L_4 = C6_Code.c_L4) AND (q_CB_Cons_Report_Union.L_5 = C6_Code.c_L5) AND (q_CB_Cons_Report_Union.L_6 = C6_Code.c_L6)) LEFT JOIN C2_Code ON (q_CB_Cons_Report_Union.L_1 = C2_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C2_Code.c_L2)) LEFT JOIN C3_Code ON (q_CB_Cons_Report_Union.L_1 = C3_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C3_Code.c_L2) AND (q_CB_Cons_Report_Union.L_3 = C3_Code.c_L3)) LEFT JOIN C5_Code ON (q_CB_Cons_Report_Union.L_5 = C5_Code.c_L5) AND (q_CB_Cons_Report_Union.L_4 = C5_Code.c_L4) AND (q_CB_Cons_Report_Union.L_3 = C5_Code.c_L3) AND (q_CB_Cons_Report_Union.L_2 = C5_Code.c_L2) AND (q_CB_Cons_Report_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_CB_Cons_Report_Union.L_4 = C4_Code.c_L4) AND (q_CB_Cons_Report_Union.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Union.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Union.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Cons_Report_Union.rep_Month, q_CB_Cons_Report_Union.L_1, q_CB_Cons_Report_Union.L_2, q_CB_Cons_Report_Union.L_3, q_CB_Cons_Report_Union.L_4, q_CB_Cons_Report_Union.L_5, q_CB_Cons_Report_Union.L_6, q_CB_Cons_Report_Union.Currency, C6_Code.Desc_TR_L6, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_EndProject_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_Union
SELECT 
		rep_Month,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency
	FROM 
		q_CB_Cons_Report_CurrMonth_Data

UNION SELECT 
		rep_Month,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency

	FROM 
		q_CB_Cons_Report_EndProject_Data;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Month
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Month_Mod
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Val
SELECT q_CB_Curr_Base_Month.rep_Month, q_CB_Curr_Base_Month.rep_Month_Date, Mon_Curr_Rates.r_EUR_EUR, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_TRY_EUR, Mon_Curr_Rates.r_TRY_TRY, Mon_Curr_Rates.r_TRY_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_USD_USD
FROM q_CB_Curr_Base_Month LEFT JOIN Mon_Curr_Rates ON (q_CB_Curr_Base_Month.rep_Month_Date = Mon_Curr_Rates.Month) AND (q_CB_Curr_Base_Month.rep_Month = Mon_Curr_Rates.rep_Month)
GROUP BY q_CB_Curr_Base_Month.rep_Month, q_CB_Curr_Base_Month.rep_Month_Date, Mon_Curr_Rates.r_EUR_EUR, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_TRY_EUR, Mon_Curr_Rates.r_TRY_TRY, Mon_Curr_Rates.r_TRY_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_USD_USD;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Val_Mod
SELECT q_CB_Curr_Base_Month.rep_Month_Date, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_USD, q_CB_Curr_Base_Month.rep_Month
FROM q_CB_Curr_Base_Month LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Curr_Base_Month.rep_Month_Date = q_Monthly_Curr_Rates_Mod_CrossTab.Month
GROUP BY q_CB_Curr_Base_Month.rep_Month_Date, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_USD, q_CB_Curr_Base_Month.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Escalation_Rates
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.Exp_CB_Mon AS [Month], q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty.Key_R4_Simple, q_CB_Active_Months_Res_Qty.Key_Full, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_CB_Active_Months_Res_Qty LEFT JOIN q_CB_Monthly_Curr_Rates_Inc ON (q_CB_Active_Months_Res_Qty.rep_Month = q_CB_Monthly_Curr_Rates_Inc.rep_Month) AND (q_CB_Active_Months_Res_Qty.PC = q_CB_Monthly_Curr_Rates_Inc.PC) AND (q_CB_Active_Months_Res_Qty.Exp_CB_Mon = q_CB_Monthly_Curr_Rates_Inc.Exp_CB_Mon)) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Escalation_Rates_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon AS [Month], q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple, q_CB_Active_Months_Res_Qty_Mod.Key_Full, q_CB_Active_Months_Res_Qty_Mod.Key_R_PC_L6, q_CB_Active_Months_Res_Qty_Mod.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_CB_Active_Months_Res_Qty_Mod LEFT JOIN q_CB_Monthly_Curr_Rates_Inc_Mod ON (q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon = q_CB_Monthly_Curr_Rates_Inc_Mod.Exp_CB_Mon) AND (q_CB_Active_Months_Res_Qty_Mod.PC = q_CB_Monthly_Curr_Rates_Inc_Mod.PC) AND (q_CB_Active_Months_Res_Qty_Mod.rep_Month = q_CB_Monthly_Curr_Rates_Inc_Mod.rep_Month)) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Exp
SELECT 
		*
	FROM 
q_PL_Exp
		
Where total_expense <>0

UNION ALL SELECT 
		*
	FROM 
		t_AC_Exp

Where Exp_AC_Exp <>0;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Diff
SELECT q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.up_Curr, q_CB_Exp.Total_Expense AS Exp_Orj, q_CB_Exp_Mod.Total_Expense AS Exp_Mod, ([Exp_Orj])-([Exp_Mod]) AS Diff
FROM q_CB_Exp_Mod LEFT JOIN q_CB_Exp ON (q_CB_Exp_Mod.rep_Month = q_CB_Exp.rep_Month) AND (q_CB_Exp_Mod.P01_Code = q_CB_Exp.P01_Code) AND (q_CB_Exp_Mod.L_1 = q_CB_Exp.L_1) AND (q_CB_Exp_Mod.L_2 = q_CB_Exp.L_2) AND (q_CB_Exp_Mod.L_3 = q_CB_Exp.L_3) AND (q_CB_Exp_Mod.L_4 = q_CB_Exp.L_4) AND (q_CB_Exp_Mod.L_5 = q_CB_Exp.L_5) AND (q_CB_Exp_Mod.L_6 = q_CB_Exp.L_6) AND (q_CB_Exp_Mod.Month = q_CB_Exp.Month) AND (q_CB_Exp_Mod.up_Curr = q_CB_Exp.up_Curr);

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_EUR_With_Dummy
TRANSFORM Sum(q_CB_Exp_EUR_With_Dummy.EUR_Expense) AS SumOfEUR_Expense
SELECT q_CB_Exp_EUR_With_Dummy.rep_Month, q_CB_Exp_EUR_With_Dummy.PC, q_CB_Exp_EUR_With_Dummy.L_1, q_CB_Exp_EUR_With_Dummy.L_2, q_CB_Exp_EUR_With_Dummy.L_3, q_CB_Exp_EUR_With_Dummy.L_4, q_CB_Exp_EUR_With_Dummy.L_5, q_CB_Exp_EUR_With_Dummy.L_6, q_CB_Exp_EUR_With_Dummy.up_curr_Conv
FROM q_CB_Exp_EUR_With_Dummy
GROUP BY q_CB_Exp_EUR_With_Dummy.rep_Month, q_CB_Exp_EUR_With_Dummy.PC, q_CB_Exp_EUR_With_Dummy.L_1, q_CB_Exp_EUR_With_Dummy.L_2, q_CB_Exp_EUR_With_Dummy.L_3, q_CB_Exp_EUR_With_Dummy.L_4, q_CB_Exp_EUR_With_Dummy.L_5, q_CB_Exp_EUR_With_Dummy.L_6, q_CB_Exp_EUR_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_EUR_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_EUR_With_Dummy_Mod.EUR_Expense) AS SumOfEUR_Expense
SELECT q_CB_Exp_EUR_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_EUR_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_EUR_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_EUR_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_EUR_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_EUR_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_EUR_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_EUR_With_Dummy_Mod.up_curr_Conv AS Expr9
FROM q_CB_Exp_EUR_With_Dummy_Mod
WHERE (((q_CB_Exp_EUR_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_EUR_With_Dummy_Mod.rep_Month, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code, q_CB_Exp_EUR_With_Dummy_Mod.L_1, q_CB_Exp_EUR_With_Dummy_Mod.L_2, q_CB_Exp_EUR_With_Dummy_Mod.L_3, q_CB_Exp_EUR_With_Dummy_Mod.L_4, q_CB_Exp_EUR_With_Dummy_Mod.L_5, q_CB_Exp_EUR_With_Dummy_Mod.L_6, q_CB_Exp_EUR_With_Dummy_Mod.up_curr_Conv
ORDER BY q_CB_Exp_EUR_With_Dummy_Mod.rep_Month, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code, q_CB_Exp_EUR_With_Dummy_Mod.L_1, q_CB_Exp_EUR_With_Dummy_Mod.L_2, q_CB_Exp_EUR_With_Dummy_Mod.L_3, q_CB_Exp_EUR_With_Dummy_Mod.L_4, q_CB_Exp_EUR_With_Dummy_Mod.L_5, q_CB_Exp_EUR_With_Dummy_Mod.L_6, q_CB_Exp_EUR_With_Dummy_Mod.Month
PIVOT q_CB_Exp_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_TRY_With_Dummy
TRANSFORM Sum(q_CB_Exp_TRY_With_Dummy.TRY_Expense) AS SumOfTRY_Expense
SELECT q_CB_Exp_TRY_With_Dummy.rep_Month, q_CB_Exp_TRY_With_Dummy.PC, q_CB_Exp_TRY_With_Dummy.L_1, q_CB_Exp_TRY_With_Dummy.L_2, q_CB_Exp_TRY_With_Dummy.L_3, q_CB_Exp_TRY_With_Dummy.L_4, q_CB_Exp_TRY_With_Dummy.L_5, q_CB_Exp_TRY_With_Dummy.L_6, q_CB_Exp_TRY_With_Dummy.up_curr_Conv
FROM q_CB_Exp_TRY_With_Dummy
GROUP BY q_CB_Exp_TRY_With_Dummy.rep_Month, q_CB_Exp_TRY_With_Dummy.PC, q_CB_Exp_TRY_With_Dummy.L_1, q_CB_Exp_TRY_With_Dummy.L_2, q_CB_Exp_TRY_With_Dummy.L_3, q_CB_Exp_TRY_With_Dummy.L_4, q_CB_Exp_TRY_With_Dummy.L_5, q_CB_Exp_TRY_With_Dummy.L_6, q_CB_Exp_TRY_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_TRY_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_TRY_With_Dummy_Mod.TRY_Expense) AS SumOfTRY_Expense
SELECT q_CB_Exp_TRY_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_TRY_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_TRY_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_TRY_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_TRY_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_TRY_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_TRY_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_TRY_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_TRY_With_Dummy_Mod.up_curr_Conv AS Expr9
FROM q_CB_Exp_TRY_With_Dummy_Mod
WHERE (((q_CB_Exp_TRY_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_TRY_With_Dummy_Mod.rep_Month, q_CB_Exp_TRY_With_Dummy_Mod.P01_Code, q_CB_Exp_TRY_With_Dummy_Mod.L_1, q_CB_Exp_TRY_With_Dummy_Mod.L_2, q_CB_Exp_TRY_With_Dummy_Mod.L_3, q_CB_Exp_TRY_With_Dummy_Mod.L_4, q_CB_Exp_TRY_With_Dummy_Mod.L_5, q_CB_Exp_TRY_With_Dummy_Mod.L_6, q_CB_Exp_TRY_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Exp_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_USD_With_Dummy
TRANSFORM Sum(q_CB_Exp_USD_With_Dummy.USD_Expense) AS SumOfUSD_Expense
SELECT q_CB_Exp_USD_With_Dummy.rep_Month, q_CB_Exp_USD_With_Dummy.PC, q_CB_Exp_USD_With_Dummy.L_1, q_CB_Exp_USD_With_Dummy.L_2, q_CB_Exp_USD_With_Dummy.L_3, q_CB_Exp_USD_With_Dummy.L_4, q_CB_Exp_USD_With_Dummy.L_5, q_CB_Exp_USD_With_Dummy.L_6, q_CB_Exp_USD_With_Dummy.up_curr_Conv
FROM q_CB_Exp_USD_With_Dummy
GROUP BY q_CB_Exp_USD_With_Dummy.rep_Month, q_CB_Exp_USD_With_Dummy.PC, q_CB_Exp_USD_With_Dummy.L_1, q_CB_Exp_USD_With_Dummy.L_2, q_CB_Exp_USD_With_Dummy.L_3, q_CB_Exp_USD_With_Dummy.L_4, q_CB_Exp_USD_With_Dummy.L_5, q_CB_Exp_USD_With_Dummy.L_6, q_CB_Exp_USD_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_USD_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_USD_With_Dummy_Mod.USD_Expense) AS SumOfUSD_Expense
SELECT q_CB_Exp_USD_With_Dummy_Mod.rep_Month, q_CB_Exp_USD_With_Dummy_Mod.P01_Code AS PC, q_CB_Exp_USD_With_Dummy_Mod.L_1, q_CB_Exp_USD_With_Dummy_Mod.L_2, q_CB_Exp_USD_With_Dummy_Mod.L_3, q_CB_Exp_USD_With_Dummy_Mod.L_4, q_CB_Exp_USD_With_Dummy_Mod.L_5, q_CB_Exp_USD_With_Dummy_Mod.L_6, q_CB_Exp_USD_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Exp_USD_With_Dummy_Mod
WHERE (((q_CB_Exp_USD_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_USD_With_Dummy_Mod.rep_Month, q_CB_Exp_USD_With_Dummy_Mod.P01_Code, q_CB_Exp_USD_With_Dummy_Mod.L_1, q_CB_Exp_USD_With_Dummy_Mod.L_2, q_CB_Exp_USD_With_Dummy_Mod.L_3, q_CB_Exp_USD_With_Dummy_Mod.L_4, q_CB_Exp_USD_With_Dummy_Mod.L_5, q_CB_Exp_USD_With_Dummy_Mod.L_6, q_CB_Exp_USD_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Exp_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_With_Dummy
TRANSFORM Sum(q_CB_Exp_With_Dummy.Total_Expense) AS SumOfTotal_Expense
SELECT q_CB_Exp_With_Dummy.rep_Month, q_CB_Exp_With_Dummy.P01_Code, q_CB_Exp_With_Dummy.L_1, q_CB_Exp_With_Dummy.L_2, q_CB_Exp_With_Dummy.L_3, q_CB_Exp_With_Dummy.L_4, q_CB_Exp_With_Dummy.L_5, q_CB_Exp_With_Dummy.L_6, q_CB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Exp_With_Dummy
GROUP BY q_CB_Exp_With_Dummy.rep_Month, q_CB_Exp_With_Dummy.P01_Code, q_CB_Exp_With_Dummy.L_1, q_CB_Exp_With_Dummy.L_2, q_CB_Exp_With_Dummy.L_3, q_CB_Exp_With_Dummy.L_4, q_CB_Exp_With_Dummy.L_5, q_CB_Exp_With_Dummy.L_6, q_CB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Exp_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_With_Dummy_Mod.Total_Expense) AS SumOfTotal_Expense
SELECT q_CB_Exp_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_With_Dummy_Mod.up_Curr AS Expr9, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Exp_With_Dummy_Mod
WHERE (((q_CB_Exp_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_With_Dummy_Mod.rep_Month, q_CB_Exp_With_Dummy_Mod.P01_Code, q_CB_Exp_With_Dummy_Mod.L_1, q_CB_Exp_With_Dummy_Mod.L_2, q_CB_Exp_With_Dummy_Mod.L_3, q_CB_Exp_With_Dummy_Mod.L_4, q_CB_Exp_With_Dummy_Mod.L_5, q_CB_Exp_With_Dummy_Mod.L_6, q_CB_Exp_With_Dummy_Mod.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Exp_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_EUR

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_EUR_Mod


UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_LastM
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, Max(t_AC_Exp.Exp_AC_Mon) AS LastM
FROM t_AC_Exp
GROUP BY t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_LastM_Mod
SELECT q_CB_Exp_LastM.rep_Month, q_CB_Exp_LastM.PC, q_CB_Exp_LastM.L_1, q_CB_Exp_LastM.L_2, q_CB_Exp_LastM.L_3, q_CB_Exp_LastM.L_4, q_CB_Exp_LastM.L_5, q_CB_Exp_LastM.L_6, q_CB_Exp_LastM.LastM
FROM q_CB_Exp_LastM
WHERE (((q_CB_Exp_LastM.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod
SELECT 
		*
	FROM 
q_PL_Exp_Mod
		
Where total_expense <>0

UNION ALL SELECT 
		*
	FROM 
		q_CB_Exp_Pre_Mod

Where Total_Expense <>0;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT
SELECT q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.Total_Expense, q_CB_Exp_Mod.up_Curr, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_Mod
FROM q_CB_Exp_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_Mod.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_Mod.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.Total_Expense, q_CB_Exp_Mod.up_Curr, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_EUR
SELECT q_CB_Exp_EUR_Mod.rep_Month, q_CB_Exp_EUR_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR_Mod.Month, q_CB_Exp_EUR_Mod.EUR_Expense, q_CB_Exp_EUR_Mod.up_Curr_Conv, q_CB_Exp_EUR_Mod.L_1, q_CB_Exp_EUR_Mod.L_2, q_CB_Exp_EUR_Mod.L_3, q_CB_Exp_EUR_Mod.L_4, q_CB_Exp_EUR_Mod.L_5, q_CB_Exp_EUR_Mod.L_6, q_CB_Exp_EUR_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_EUR_Mod
FROM q_CB_Exp_EUR_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_EUR_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_EUR_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_EUR_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_EUR_Mod.rep_Month, q_CB_Exp_EUR_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR_Mod.Month, q_CB_Exp_EUR_Mod.EUR_Expense, q_CB_Exp_EUR_Mod.up_Curr_Conv, q_CB_Exp_EUR_Mod.L_1, q_CB_Exp_EUR_Mod.L_2, q_CB_Exp_EUR_Mod.L_3, q_CB_Exp_EUR_Mod.L_4, q_CB_Exp_EUR_Mod.L_5, q_CB_Exp_EUR_Mod.L_6, q_CB_Exp_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_TRY
SELECT q_CB_Exp_TRY_Mod.rep_Month, q_CB_Exp_TRY_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY_Mod.Month, q_CB_Exp_TRY_Mod.TRY_Expense, q_CB_Exp_TRY_Mod.up_Curr_Conv, q_CB_Exp_TRY_Mod.L_1, q_CB_Exp_TRY_Mod.L_2, q_CB_Exp_TRY_Mod.L_3, q_CB_Exp_TRY_Mod.L_4, q_CB_Exp_TRY_Mod.L_5, q_CB_Exp_TRY_Mod.L_6, q_CB_Exp_TRY_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_TRY_Mod
FROM q_CB_Exp_TRY_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_TRY_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_TRY_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_TRY_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_TRY_Mod.rep_Month, q_CB_Exp_TRY_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY_Mod.Month, q_CB_Exp_TRY_Mod.TRY_Expense, q_CB_Exp_TRY_Mod.up_Curr_Conv, q_CB_Exp_TRY_Mod.L_1, q_CB_Exp_TRY_Mod.L_2, q_CB_Exp_TRY_Mod.L_3, q_CB_Exp_TRY_Mod.L_4, q_CB_Exp_TRY_Mod.L_5, q_CB_Exp_TRY_Mod.L_6, q_CB_Exp_TRY_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_USD
SELECT q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.USD_Expense, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_USD_Mod
FROM q_CB_Exp_USD_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_USD_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_USD_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_USD_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.USD_Expense, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code AS PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp.Month, Sum(q_CB_Exp.Total_Expense) AS Total_Expense, q_CB_Exp.up_Curr, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.Key_R_PC_L6 INTO t_q_CB_Exp
FROM q_CB_Exp LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp.Month, q_CB_Exp.up_Curr, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_EUR
SELECT q_CB_Exp_EUR.rep_Month, q_CB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR.Month, Sum(q_CB_Exp_EUR.EUR_Expense) AS SumOfEUR_Expense, q_CB_Exp_EUR.up_Curr_Conv, q_CB_Exp_EUR.L_1, q_CB_Exp_EUR.L_2, q_CB_Exp_EUR.L_3, q_CB_Exp_EUR.L_4, q_CB_Exp_EUR.L_5, q_CB_Exp_EUR.L_6, q_CB_Exp_EUR.Key_R_PC_L6 INTO t_q_CB_Exp_EUR
FROM q_CB_Exp_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_EUR.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_EUR.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_EUR.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_EUR.rep_Month, q_CB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR.Month, q_CB_Exp_EUR.up_Curr_Conv, q_CB_Exp_EUR.L_1, q_CB_Exp_EUR.L_2, q_CB_Exp_EUR.L_3, q_CB_Exp_EUR.L_4, q_CB_Exp_EUR.L_5, q_CB_Exp_EUR.L_6, q_CB_Exp_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_TRY
SELECT q_CB_Exp_TRY.rep_Month, q_CB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY.Month, Sum(q_CB_Exp_TRY.TRY_Expense) AS TRY_Expense, q_CB_Exp_TRY.up_Curr_Conv, q_CB_Exp_TRY.L_1, q_CB_Exp_TRY.L_2, q_CB_Exp_TRY.L_3, q_CB_Exp_TRY.L_4, q_CB_Exp_TRY.L_5, q_CB_Exp_TRY.L_6, q_CB_Exp_TRY.Key_R_PC_L6 INTO t_q_CB_Exp_TRY
FROM q_CB_Exp_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_TRY.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_TRY.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_TRY.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_TRY.rep_Month, q_CB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY.Month, q_CB_Exp_TRY.up_Curr_Conv, q_CB_Exp_TRY.L_1, q_CB_Exp_TRY.L_2, q_CB_Exp_TRY.L_3, q_CB_Exp_TRY.L_4, q_CB_Exp_TRY.L_5, q_CB_Exp_TRY.L_6, q_CB_Exp_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_USD
SELECT q_CB_Exp_USD.rep_Month, q_CB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD.Month, Sum(q_CB_Exp_USD.USD_Expense) AS USD_Expense, q_CB_Exp_USD.up_Curr_Conv, q_CB_Exp_USD.L_1, q_CB_Exp_USD.L_2, q_CB_Exp_USD.L_3, q_CB_Exp_USD.L_4, q_CB_Exp_USD.L_5, q_CB_Exp_USD.L_6, q_CB_Exp_USD.Key_R_PC_L6 INTO t_q_CB_Exp_USD
FROM q_CB_Exp_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_USD.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_USD.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_USD.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_USD.rep_Month, q_CB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD.Month, q_CB_Exp_USD.up_Curr_Conv, q_CB_Exp_USD.L_1, q_CB_Exp_USD.L_2, q_CB_Exp_USD.L_3, q_CB_Exp_USD.L_4, q_CB_Exp_USD.L_5, q_CB_Exp_USD.L_6, q_CB_Exp_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Pre_Mod
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.Exp_AC_Mon AS [Month], t_AC_Exp.Exp_AC_Exp AS Total_Expense, t_AC_Exp.up_Curr, t_AC_Exp.Key_R_PC_L6
FROM t_AC_Exp
WHERE (((t_AC_Exp.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6


	FROM 
		q_CB_Exp_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_TRY_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="EUR",[Total_Expense]*[r_EUR_USD],[Total_Expense]*[r_TRY_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_Diff
SELECT q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.P01_Code, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD.USD_Expense AS Exp_Orj, q_CB_Exp_USD_Mod.USD_Expense AS Exp_Mod, [Exp_Orj]-[Exp_Mod] AS Diff, q_CB_Exp_USD_Mod.up_Curr
FROM q_CB_Exp_USD_Mod LEFT JOIN q_CB_Exp_USD ON (q_CB_Exp_USD_Mod.rep_Month = q_CB_Exp_USD.rep_Month) AND (q_CB_Exp_USD_Mod.P01_Code = q_CB_Exp_USD.PC) AND (q_CB_Exp_USD_Mod.L_1 = q_CB_Exp_USD.L_1) AND (q_CB_Exp_USD_Mod.L_2 = q_CB_Exp_USD.L_2) AND (q_CB_Exp_USD_Mod.L_3 = q_CB_Exp_USD.L_3) AND (q_CB_Exp_USD_Mod.L_4 = q_CB_Exp_USD.L_4) AND (q_CB_Exp_USD_Mod.L_5 = q_CB_Exp_USD.L_5) AND (q_CB_Exp_USD_Mod.L_6 = q_CB_Exp_USD.L_6) AND (q_CB_Exp_USD_Mod.Month = q_CB_Exp_USD.Month) AND (q_CB_Exp_USD_Mod.up_Curr = q_CB_Exp_USD.up_Curr) AND (q_CB_Exp_USD_Mod.up_Curr_Conv = q_CB_Exp_USD.up_Curr_Conv)
ORDER BY q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.P01_Code, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.up_Curr_Conv;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="EUR",[Total_Expense]*[r_EUR_USD],[Total_Expense]*[r_TRY_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_USD_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_With_Dummy
SELECT 
		*
	FROM 
		q_CB_Exp

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_With_Dummy_Mod
SELECT 
		*
	FROM 
		q_CB_Exp_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Calculation
SELECT t_CB_Inc_Qty.rep_Month, t_CB_Inc_Qty.PC, t_CB_Inc_Qty.L_1, t_CB_Inc_Qty.L_2, t_CB_Inc_Qty.L_3, t_CB_Inc_Qty.L_4, t_CB_Inc_Qty.L_5, t_CB_Inc_Qty.L_6, t_CB_Inc_Qty.Inc_Base_Mon, IIf([Inc_Rate] Is Null,1,1+[Inc_Rate]) AS Inc_Rate_1, IIf([Inc_Rate_Pcode] Is Null,1,1+[Inc_Rate_Pcode]) AS Inc_Rate_2, t_CB_Inc_WBS.UP, t_CB_Inc_WBS.Currency, [UP]*[Inc_Rate_1]*[Inc_Rate_2] AS UP_Total, t_CB_Inc_Qty.Inc_Base_Qty, [UP_Total]*[Inc_Base_Qty] AS Inc_Total, t_CB_Inc_Qty.Key_R_PC_L6
FROM ((t_CB_Inc_Qty LEFT JOIN t_CB_Inc_Esc_Rates_L6 ON (t_CB_Inc_Qty.Inc_Base_Mon = t_CB_Inc_Esc_Rates_L6.Month) AND (t_CB_Inc_Qty.L_6 = t_CB_Inc_Esc_Rates_L6.c_L6) AND (t_CB_Inc_Qty.L_5 = t_CB_Inc_Esc_Rates_L6.c_L5) AND (t_CB_Inc_Qty.L_4 = t_CB_Inc_Esc_Rates_L6.c_L4) AND (t_CB_Inc_Qty.L_3 = t_CB_Inc_Esc_Rates_L6.c_L3) AND (t_CB_Inc_Qty.L_2 = t_CB_Inc_Esc_Rates_L6.c_L2) AND (t_CB_Inc_Qty.L_1 = t_CB_Inc_Esc_Rates_L6.c_L1) AND (t_CB_Inc_Qty.PC = t_CB_Inc_Esc_Rates_L6.P01_Code) AND (t_CB_Inc_Qty.rep_Month = t_CB_Inc_Esc_Rates_L6.rep_Month)) LEFT JOIN t_CB_Inc_Esc_Rates_Pcode ON (t_CB_Inc_Qty.Inc_Base_Mon = t_CB_Inc_Esc_Rates_Pcode.Month) AND (t_CB_Inc_Qty.PC = t_CB_Inc_Esc_Rates_Pcode.P01_Code) AND (t_CB_Inc_Qty.rep_Month = t_CB_Inc_Esc_Rates_Pcode.rep_Month)) LEFT JOIN t_CB_Inc_WBS ON t_CB_Inc_Qty.Key_R_PC_L6 = t_CB_Inc_WBS.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_EUR_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_EUR_With_Dummy.EUR_Income) AS EUR_Income
SELECT q_CB_Inc_EUR_With_Dummy.rep_Month, q_CB_Inc_EUR_With_Dummy.PC, q_CB_Inc_EUR_With_Dummy.L_1, q_CB_Inc_EUR_With_Dummy.L_2, q_CB_Inc_EUR_With_Dummy.L_3, q_CB_Inc_EUR_With_Dummy.L_4, q_CB_Inc_EUR_With_Dummy.L_5, q_CB_Inc_EUR_With_Dummy.L_6, q_CB_Inc_EUR_With_Dummy.up_curr_Conv
FROM q_CB_Inc_EUR_With_Dummy
GROUP BY q_CB_Inc_EUR_With_Dummy.rep_Month, q_CB_Inc_EUR_With_Dummy.PC, q_CB_Inc_EUR_With_Dummy.L_1, q_CB_Inc_EUR_With_Dummy.L_2, q_CB_Inc_EUR_With_Dummy.L_3, q_CB_Inc_EUR_With_Dummy.L_4, q_CB_Inc_EUR_With_Dummy.L_5, q_CB_Inc_EUR_With_Dummy.L_6, q_CB_Inc_EUR_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_EUR_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_EUR_With_Dummy_Mod.EUR_Income) AS EUR_Income
SELECT q_CB_Inc_EUR_With_Dummy_Mod.rep_Month, q_CB_Inc_EUR_With_Dummy_Mod.PC, q_CB_Inc_EUR_With_Dummy_Mod.L_1, q_CB_Inc_EUR_With_Dummy_Mod.L_2, q_CB_Inc_EUR_With_Dummy_Mod.L_3, q_CB_Inc_EUR_With_Dummy_Mod.L_4, q_CB_Inc_EUR_With_Dummy_Mod.L_5, q_CB_Inc_EUR_With_Dummy_Mod.L_6, q_CB_Inc_EUR_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_EUR_With_Dummy_Mod
GROUP BY q_CB_Inc_EUR_With_Dummy_Mod.rep_Month, q_CB_Inc_EUR_With_Dummy_Mod.PC, q_CB_Inc_EUR_With_Dummy_Mod.L_1, q_CB_Inc_EUR_With_Dummy_Mod.L_2, q_CB_Inc_EUR_With_Dummy_Mod.L_3, q_CB_Inc_EUR_With_Dummy_Mod.L_4, q_CB_Inc_EUR_With_Dummy_Mod.L_5, q_CB_Inc_EUR_With_Dummy_Mod.L_6, q_CB_Inc_EUR_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_TRY_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_TRY_With_Dummy.TRY_Income) AS TRY_Income
SELECT q_CB_Inc_TRY_With_Dummy.rep_Month, q_CB_Inc_TRY_With_Dummy.PC, q_CB_Inc_TRY_With_Dummy.L_1, q_CB_Inc_TRY_With_Dummy.L_2, q_CB_Inc_TRY_With_Dummy.L_3, q_CB_Inc_TRY_With_Dummy.L_4, q_CB_Inc_TRY_With_Dummy.L_5, q_CB_Inc_TRY_With_Dummy.L_6, q_CB_Inc_TRY_With_Dummy.up_curr_Conv
FROM q_CB_Inc_TRY_With_Dummy
GROUP BY q_CB_Inc_TRY_With_Dummy.rep_Month, q_CB_Inc_TRY_With_Dummy.PC, q_CB_Inc_TRY_With_Dummy.L_1, q_CB_Inc_TRY_With_Dummy.L_2, q_CB_Inc_TRY_With_Dummy.L_3, q_CB_Inc_TRY_With_Dummy.L_4, q_CB_Inc_TRY_With_Dummy.L_5, q_CB_Inc_TRY_With_Dummy.L_6, q_CB_Inc_TRY_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_TRY_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_TRY_With_Dummy_Mod.TRY_Income) AS TRY_Income
SELECT q_CB_Inc_TRY_With_Dummy_Mod.rep_Month, q_CB_Inc_TRY_With_Dummy_Mod.PC, q_CB_Inc_TRY_With_Dummy_Mod.L_1, q_CB_Inc_TRY_With_Dummy_Mod.L_2, q_CB_Inc_TRY_With_Dummy_Mod.L_3, q_CB_Inc_TRY_With_Dummy_Mod.L_4, q_CB_Inc_TRY_With_Dummy_Mod.L_5, q_CB_Inc_TRY_With_Dummy_Mod.L_6, q_CB_Inc_TRY_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_TRY_With_Dummy_Mod
GROUP BY q_CB_Inc_TRY_With_Dummy_Mod.rep_Month, q_CB_Inc_TRY_With_Dummy_Mod.PC, q_CB_Inc_TRY_With_Dummy_Mod.L_1, q_CB_Inc_TRY_With_Dummy_Mod.L_2, q_CB_Inc_TRY_With_Dummy_Mod.L_3, q_CB_Inc_TRY_With_Dummy_Mod.L_4, q_CB_Inc_TRY_With_Dummy_Mod.L_5, q_CB_Inc_TRY_With_Dummy_Mod.L_6, q_CB_Inc_TRY_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_USD_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_USD_With_Dummy.USD_Income) AS USD_Income
SELECT q_CB_Inc_USD_With_Dummy.rep_Month, q_CB_Inc_USD_With_Dummy.PC, q_CB_Inc_USD_With_Dummy.L_1, q_CB_Inc_USD_With_Dummy.L_2, q_CB_Inc_USD_With_Dummy.L_3, q_CB_Inc_USD_With_Dummy.L_4, q_CB_Inc_USD_With_Dummy.L_5, q_CB_Inc_USD_With_Dummy.L_6, q_CB_Inc_USD_With_Dummy.up_curr_Conv
FROM q_CB_Inc_USD_With_Dummy
GROUP BY q_CB_Inc_USD_With_Dummy.rep_Month, q_CB_Inc_USD_With_Dummy.PC, q_CB_Inc_USD_With_Dummy.L_1, q_CB_Inc_USD_With_Dummy.L_2, q_CB_Inc_USD_With_Dummy.L_3, q_CB_Inc_USD_With_Dummy.L_4, q_CB_Inc_USD_With_Dummy.L_5, q_CB_Inc_USD_With_Dummy.L_6, q_CB_Inc_USD_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_USD_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_USD_With_Dummy_Mod.USD_Income) AS USD_Income
SELECT q_CB_Inc_USD_With_Dummy_Mod.rep_Month, q_CB_Inc_USD_With_Dummy_Mod.PC, q_CB_Inc_USD_With_Dummy_Mod.L_1, q_CB_Inc_USD_With_Dummy_Mod.L_2, q_CB_Inc_USD_With_Dummy_Mod.L_3, q_CB_Inc_USD_With_Dummy_Mod.L_4, q_CB_Inc_USD_With_Dummy_Mod.L_5, q_CB_Inc_USD_With_Dummy_Mod.L_6, q_CB_Inc_USD_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_USD_With_Dummy_Mod
GROUP BY q_CB_Inc_USD_With_Dummy_Mod.rep_Month, q_CB_Inc_USD_With_Dummy_Mod.PC, q_CB_Inc_USD_With_Dummy_Mod.L_1, q_CB_Inc_USD_With_Dummy_Mod.L_2, q_CB_Inc_USD_With_Dummy_Mod.L_3, q_CB_Inc_USD_With_Dummy_Mod.L_4, q_CB_Inc_USD_With_Dummy_Mod.L_5, q_CB_Inc_USD_With_Dummy_Mod.L_6, q_CB_Inc_USD_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_With_Dummy.Inc_Total) AS Total_Income
SELECT q_CB_Inc_With_Dummy.rep_Month, q_CB_Inc_With_Dummy.PC, q_CB_Inc_With_Dummy.L_1, q_CB_Inc_With_Dummy.L_2, q_CB_Inc_With_Dummy.L_3, q_CB_Inc_With_Dummy.L_4, q_CB_Inc_With_Dummy.L_5, q_CB_Inc_With_Dummy.L_6, q_CB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Inc_With_Dummy
GROUP BY q_CB_Inc_With_Dummy.rep_Month, q_CB_Inc_With_Dummy.PC, q_CB_Inc_With_Dummy.L_1, q_CB_Inc_With_Dummy.L_2, q_CB_Inc_With_Dummy.L_3, q_CB_Inc_With_Dummy.L_4, q_CB_Inc_With_Dummy.L_5, q_CB_Inc_With_Dummy.L_6, q_CB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Inc_With_Dummy.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month) AND (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month)
ORDER BY t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_Mod_MT
SELECT q_CB_Inc_EUR_Mod.rep_Month, q_CB_Inc_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR_Mod.Month, q_CB_Inc_EUR_Mod.EUR_Income, q_CB_Inc_EUR_Mod.up_Curr_Conv, q_CB_Inc_EUR_Mod.L_1, q_CB_Inc_EUR_Mod.L_2, q_CB_Inc_EUR_Mod.L_3, q_CB_Inc_EUR_Mod.L_4, q_CB_Inc_EUR_Mod.L_5, q_CB_Inc_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR_Mod.Key_R_PC_L6 INTO t_CB_Inc_EUR_Mod_ST
FROM (q_CB_Inc_EUR_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_EUR_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Inc_EUR_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_EUR_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_EUR_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Inc_EUR_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_EUR_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_EUR_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_EUR_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_EUR_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_EUR_Mod.rep_Month, q_CB_Inc_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR_Mod.Month, q_CB_Inc_EUR_Mod.EUR_Income, q_CB_Inc_EUR_Mod.up_Curr_Conv, q_CB_Inc_EUR_Mod.L_1, q_CB_Inc_EUR_Mod.L_2, q_CB_Inc_EUR_Mod.L_3, q_CB_Inc_EUR_Mod.L_4, q_CB_Inc_EUR_Mod.L_5, q_CB_Inc_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_MT
SELECT q_CB_Inc_EUR.rep_Month, q_CB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR.Month, Sum(q_CB_Inc_EUR.EUR_Income) AS EUR_Income, q_CB_Inc_EUR.up_Curr_Conv, q_CB_Inc_EUR.L_1, q_CB_Inc_EUR.L_2, q_CB_Inc_EUR.L_3, q_CB_Inc_EUR.L_4, q_CB_Inc_EUR.L_5, q_CB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR.Key_R_PC_L6 INTO t_CB_Inc_EUR_ST
FROM (q_CB_Inc_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_EUR.L_3 = C3_Code.c_L3) AND (q_CB_Inc_EUR.L_2 = C3_Code.c_L2) AND (q_CB_Inc_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_EUR.L_6 = C6_Code.c_L6) AND (q_CB_Inc_EUR.L_5 = C6_Code.c_L5) AND (q_CB_Inc_EUR.L_4 = C6_Code.c_L4) AND (q_CB_Inc_EUR.L_3 = C6_Code.c_L3) AND (q_CB_Inc_EUR.L_2 = C6_Code.c_L2) AND (q_CB_Inc_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_EUR.rep_Month, q_CB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR.Month, q_CB_Inc_EUR.up_Curr_Conv, q_CB_Inc_EUR.L_1, q_CB_Inc_EUR.L_2, q_CB_Inc_EUR.L_3, q_CB_Inc_EUR.L_4, q_CB_Inc_EUR.L_5, q_CB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6

FROM 
q_CB_Inc_EUR

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6

FROM 
q_CB_Inc_EUR_Mod

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_Qty
SELECT *
FROM t_CB_Inc_Qty;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Qty_Crosstab
TRANSFORM Sum(q_CB_Inc_Qty.Inc_Base_Qty) AS Inc_Base_Qty
SELECT q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
FROM q_CB_Inc_Qty
GROUP BY q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
ORDER BY q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
PIVOT q_CB_Inc_Qty.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total
SELECT q_CB_Inc_Calculation.rep_Month, q_CB_Inc_Calculation.PC, q_CB_Inc_Calculation.L_1, q_CB_Inc_Calculation.L_2, q_CB_Inc_Calculation.L_3, q_CB_Inc_Calculation.L_4, q_CB_Inc_Calculation.L_5, q_CB_Inc_Calculation.L_6, q_CB_Inc_Calculation.Inc_Base_Mon, Sum(q_CB_Inc_Calculation.Inc_Total) AS Inc_Total, q_CB_Inc_Calculation.Currency, q_CB_Inc_Calculation.Key_R_PC_L6
FROM q_CB_Inc_Calculation
GROUP BY q_CB_Inc_Calculation.rep_Month, q_CB_Inc_Calculation.PC, q_CB_Inc_Calculation.L_1, q_CB_Inc_Calculation.L_2, q_CB_Inc_Calculation.L_3, q_CB_Inc_Calculation.L_4, q_CB_Inc_Calculation.L_5, q_CB_Inc_Calculation.L_6, q_CB_Inc_Calculation.Inc_Base_Mon, q_CB_Inc_Calculation.Currency, q_CB_Inc_Calculation.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_Mod
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST
WHERE (((t_CB_Inc_Total_ST.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_Mod_MT
SELECT q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total_Mod.Month, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total_Mod.Key_R_PC_L6 INTO t_CB_Inc_Total_Mod_ST
FROM (q_CB_Inc_Total_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_Total_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Inc_Total_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_Total_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_Total_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Inc_Total_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_Total_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_Total_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_Total_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_Total_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total_Mod.Month, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_MT
SELECT q_CB_Inc_Total.rep_Month, q_CB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total.Inc_Base_Mon, Sum(q_CB_Inc_Total.Inc_Total) AS Inc_Total, q_CB_Inc_Total.Currency, q_CB_Inc_Total.L_1, q_CB_Inc_Total.L_2, q_CB_Inc_Total.L_3, q_CB_Inc_Total.L_4, q_CB_Inc_Total.L_5, q_CB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total.Key_R_PC_L6 INTO t_CB_Inc_Total_ST
FROM (q_CB_Inc_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_Total.L_3 = C3_Code.c_L3) AND (q_CB_Inc_Total.L_2 = C3_Code.c_L2) AND (q_CB_Inc_Total.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_Total.L_6 = C6_Code.c_L6) AND (q_CB_Inc_Total.L_5 = C6_Code.c_L5) AND (q_CB_Inc_Total.L_4 = C6_Code.c_L4) AND (q_CB_Inc_Total.L_3 = C6_Code.c_L3) AND (q_CB_Inc_Total.L_2 = C6_Code.c_L2) AND (q_CB_Inc_Total.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_Total.rep_Month, q_CB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total.Inc_Base_Mon, q_CB_Inc_Total.Currency, q_CB_Inc_Total.L_1, q_CB_Inc_Total.L_2, q_CB_Inc_Total.L_3, q_CB_Inc_Total.L_4, q_CB_Inc_Total.L_5, q_CB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_TRY],[Inc_Total]*[r_USD_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month);

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_TRY],[Inc_Total]*[r_EUR_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_Mod_MT
SELECT q_CB_Inc_TRY_Mod.rep_Month, q_CB_Inc_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY_Mod.Month, q_CB_Inc_TRY_Mod.TRY_Income, q_CB_Inc_TRY_Mod.up_Curr_Conv, q_CB_Inc_TRY_Mod.L_1, q_CB_Inc_TRY_Mod.L_2, q_CB_Inc_TRY_Mod.L_3, q_CB_Inc_TRY_Mod.L_4, q_CB_Inc_TRY_Mod.L_5, q_CB_Inc_TRY_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY_Mod.Key_R_PC_L6 INTO t_CB_Inc_TRY_Mod_ST
FROM (q_CB_Inc_TRY_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_TRY_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Inc_TRY_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_TRY_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_TRY_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Inc_TRY_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_TRY_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_TRY_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_TRY_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_TRY_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_TRY_Mod.rep_Month, q_CB_Inc_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY_Mod.Month, q_CB_Inc_TRY_Mod.TRY_Income, q_CB_Inc_TRY_Mod.up_Curr_Conv, q_CB_Inc_TRY_Mod.L_1, q_CB_Inc_TRY_Mod.L_2, q_CB_Inc_TRY_Mod.L_3, q_CB_Inc_TRY_Mod.L_4, q_CB_Inc_TRY_Mod.L_5, q_CB_Inc_TRY_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_MT
SELECT q_CB_Inc_TRY.rep_Month, q_CB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY.Month, Sum(q_CB_Inc_TRY.TRY_Income) AS TRY_Income, q_CB_Inc_TRY.up_Curr_Conv, q_CB_Inc_TRY.L_1, q_CB_Inc_TRY.L_2, q_CB_Inc_TRY.L_3, q_CB_Inc_TRY.L_4, q_CB_Inc_TRY.L_5, q_CB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY.Key_R_PC_L6 INTO t_CB_Inc_TRY_ST
FROM (q_CB_Inc_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_TRY.L_1 = C3_Code.c_L1) AND (q_CB_Inc_TRY.L_2 = C3_Code.c_L2) AND (q_CB_Inc_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_TRY.L_1 = C6_Code.c_L1) AND (q_CB_Inc_TRY.L_2 = C6_Code.c_L2) AND (q_CB_Inc_TRY.L_3 = C6_Code.c_L3) AND (q_CB_Inc_TRY.L_4 = C6_Code.c_L4) AND (q_CB_Inc_TRY.L_5 = C6_Code.c_L5) AND (q_CB_Inc_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_TRY.rep_Month, q_CB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY.Month, q_CB_Inc_TRY.up_Curr_Conv, q_CB_Inc_TRY.L_1, q_CB_Inc_TRY.L_2, q_CB_Inc_TRY.L_3, q_CB_Inc_TRY.L_4, q_CB_Inc_TRY.L_5, q_CB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_With_Dummy_Mod
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_TRY_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_USD],[Inc_Total]*[r_TRY_USD])) AS USD_Income, "USD" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_TRY_USD
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month);

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_USD],[Inc_Total]*[r_TRY_USD])) AS USD_Income, "USD" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_Mod_MT
SELECT q_CB_Inc_USD_Mod.rep_Month, q_CB_Inc_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD_Mod.Month, q_CB_Inc_USD_Mod.USD_Income, q_CB_Inc_USD_Mod.up_Curr_Conv, q_CB_Inc_USD_Mod.L_1, q_CB_Inc_USD_Mod.L_2, q_CB_Inc_USD_Mod.L_3, q_CB_Inc_USD_Mod.L_4, q_CB_Inc_USD_Mod.L_5, q_CB_Inc_USD_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD_Mod.Key_R_PC_L6 INTO t_CB_Inc_USD_Mod_ST
FROM (q_CB_Inc_USD_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_USD_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Inc_USD_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_USD_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_USD_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Inc_USD_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_USD_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_USD_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_USD_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_USD_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_USD_Mod.rep_Month, q_CB_Inc_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD_Mod.Month, q_CB_Inc_USD_Mod.USD_Income, q_CB_Inc_USD_Mod.up_Curr_Conv, q_CB_Inc_USD_Mod.L_1, q_CB_Inc_USD_Mod.L_2, q_CB_Inc_USD_Mod.L_3, q_CB_Inc_USD_Mod.L_4, q_CB_Inc_USD_Mod.L_5, q_CB_Inc_USD_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_MT
SELECT q_CB_Inc_USD.rep_Month, q_CB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD.Month, Sum(q_CB_Inc_USD.USD_Income) AS USD_Income, q_CB_Inc_USD.up_Curr_Conv, q_CB_Inc_USD.L_1, q_CB_Inc_USD.L_2, q_CB_Inc_USD.L_3, q_CB_Inc_USD.L_4, q_CB_Inc_USD.L_5, q_CB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD.Key_R_PC_L6 INTO t_CB_Inc_USD_ST
FROM (q_CB_Inc_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_USD.L_1 = C3_Code.c_L1) AND (q_CB_Inc_USD.L_2 = C3_Code.c_L2) AND (q_CB_Inc_USD.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_USD.L_1 = C6_Code.c_L1) AND (q_CB_Inc_USD.L_2 = C6_Code.c_L2) AND (q_CB_Inc_USD.L_3 = C6_Code.c_L3) AND (q_CB_Inc_USD.L_4 = C6_Code.c_L4) AND (q_CB_Inc_USD.L_5 = C6_Code.c_L5) AND (q_CB_Inc_USD.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_USD.rep_Month, q_CB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD.Month, q_CB_Inc_USD.up_Curr_Conv, q_CB_Inc_USD.L_1, q_CB_Inc_USD.L_2, q_CB_Inc_USD.L_3, q_CB_Inc_USD.L_4, q_CB_Inc_USD.L_5, q_CB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6


	FROM 
		q_CB_Inc_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_With_Dummy_Mod
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_USD_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy
SELECT 
		*
	FROM 
		q_CB_Inc_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_With_Dummy_Mod.Inc_Total) AS Total_Income
SELECT q_CB_Inc_With_Dummy_Mod.rep_Month, q_CB_Inc_With_Dummy_Mod.PC, q_CB_Inc_With_Dummy_Mod.L_1, q_CB_Inc_With_Dummy_Mod.L_2, q_CB_Inc_With_Dummy_Mod.L_3, q_CB_Inc_With_Dummy_Mod.L_4, q_CB_Inc_With_Dummy_Mod.L_5, q_CB_Inc_With_Dummy_Mod.L_6, q_CB_Inc_With_Dummy_Mod.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Inc_With_Dummy_Mod
GROUP BY q_CB_Inc_With_Dummy_Mod.rep_Month, q_CB_Inc_With_Dummy_Mod.PC, q_CB_Inc_With_Dummy_Mod.L_1, q_CB_Inc_With_Dummy_Mod.L_2, q_CB_Inc_With_Dummy_Mod.L_3, q_CB_Inc_With_Dummy_Mod.L_4, q_CB_Inc_With_Dummy_Mod.L_5, q_CB_Inc_With_Dummy_Mod.L_6, q_CB_Inc_With_Dummy_Mod.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Inc_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy_Mod
SELECT 
		*
	FROM 
		q_CB_Inc_Total_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_ActiveM
SELECT q_CB_Qty_ActiveM_Works_Monthly.rep_Month, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon
FROM q_CB_Qty_ActiveM_Works_Monthly LEFT JOIN Mon_Curr_Rates ON (q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon = Mon_Curr_Rates.Month) AND (q_CB_Qty_ActiveM_Works_Monthly.rep_Month = Mon_Curr_Rates.rep_Month)
GROUP BY q_CB_Qty_ActiveM_Works_Monthly.rep_Month, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_ActiveM_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY
FROM q_CB_Active_Months_Res_Qty_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon = q_Monthly_Curr_Rates_Mod_CrossTab.Month
GROUP BY q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_Inc
SELECT q_CB_Qty_ActiveM_Works_Monthly.rep_Month, q_CB_Qty_ActiveM_Works_Monthly.PC, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_CB_Curr_Base_Val].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_CB_Curr_Base_Val].[r_EUR_USD]-1 AS rt_EUR_USD, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_CB_Curr_Base_Val].[r_USD_TRY]-1 AS rt_USD_TRY, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_CB_Curr_Base_Val].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_CB_Qty_ActiveM_Works_Monthly LEFT JOIN q_CB_monthly_curr_rates_activem ON (q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon = q_CB_monthly_curr_rates_activem.Exp_CB_Mon) AND (q_CB_Qty_ActiveM_Works_Monthly.rep_Month = q_CB_monthly_curr_rates_activem.rep_Month)) LEFT JOIN q_CB_Curr_Base_Val ON q_CB_Qty_ActiveM_Works_Monthly.rep_Month = q_CB_Curr_Base_Val.rep_Month
GROUP BY q_CB_Qty_ActiveM_Works_Monthly.rep_Month, q_CB_Qty_ActiveM_Works_Monthly.PC, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_CB_Curr_Base_Val].[r_EUR_TRY]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_CB_Curr_Base_Val].[r_EUR_USD]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_CB_Curr_Base_Val].[r_USD_TRY]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_CB_Curr_Base_Val].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_Inc_Mod
SELECT q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month, q_CB_Qty_ActiveM_Works_Monthly_Mod.PC, q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_TRY]/[q_CB_Curr_Base_Val_Mod].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_USD]/[q_CB_Curr_Base_Val_Mod].[r_EUR_USD]-1 AS rt_EUR_USD, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_TRY]/[q_CB_Curr_Base_Val_Mod].[r_USD_TRY]-1 AS rt_USD_TRY, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_EUR]/[q_CB_Curr_Base_Val_Mod].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_CB_Qty_ActiveM_Works_Monthly_Mod LEFT JOIN q_CB_monthly_curr_rates_activem_Mod ON (q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon = q_CB_monthly_curr_rates_activem_Mod.Exp_CB_Mon) AND (q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month = q_CB_monthly_curr_rates_activem_Mod.rep_Month)) LEFT JOIN q_CB_Curr_Base_Val_Mod ON q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month = q_CB_Curr_Base_Val_Mod.rep_Month
GROUP BY q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month, q_CB_Qty_ActiveM_Works_Monthly_Mod.PC, q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_TRY]/[q_CB_Curr_Base_Val_Mod].[r_EUR_TRY]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_USD]/[q_CB_Curr_Base_Val_Mod].[r_EUR_USD]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_TRY]/[q_CB_Curr_Base_Val_Mod].[r_USD_TRY]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_EUR]/[q_CB_Curr_Base_Val_Mod].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_LastM_Mod
SELECT q_Monthly_Curr_Rates_Mod_CrossTab.Month, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR
FROM q_Monthly_Curr_Rates_Mod_CrossTab
WHERE (((q_Monthly_Curr_Rates_Mod_CrossTab.Month)=DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_LastM_Mod_MT
SELECT q_CB_Monthly_Curr_Rates_LastM_Mod.Month, q_CB_Monthly_Curr_Rates_LastM_Mod.r_EUR_TRY, q_CB_Monthly_Curr_Rates_LastM_Mod.r_USD_TRY, q_CB_Monthly_Curr_Rates_LastM_Mod.r_EUR_USD, q_CB_Monthly_Curr_Rates_LastM_Mod.r_USD_EUR INTO t_CB_Monthly_Curr_Rates_LastM_Mod_ST
FROM q_CB_Monthly_Curr_Rates_LastM_Mod;

----------------------------------------------------------------------------------------------------
q_CB_PR_WBS
SELECT t_CB_Inc_Total_ST.rep_Month
	,t_CB_Inc_Total_ST.PC
	,t_CB_Inc_Total_ST.L_1
	,t_CB_Inc_Total_ST.L_2
	,t_CB_Inc_Total_ST.L_3
	,t_CB_Inc_Total_ST.L_4
	,t_CB_Inc_Total_ST.L_5
	,t_CB_Inc_Total_ST.L_6
	,t_CB_Inc_Total_ST.Currency
	,t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month] 
	,t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST 
GROUP BY t_CB_Inc_Total_ST.rep_Month
	,t_CB_Inc_Total_ST.PC
	,t_CB_Inc_Total_ST.L_1
	,t_CB_Inc_Total_ST.L_2
	,t_CB_Inc_Total_ST.L_3
	,t_CB_Inc_Total_ST.L_4
	,t_CB_Inc_Total_ST.L_5
	,t_CB_Inc_Total_ST.L_6
	,t_CB_Inc_Total_ST.Currency
	,t_CB_Inc_Total_ST.Inc_Base_Mon 
	,t_CB_Inc_Total_ST.Key_R_PC_L6
HAVING (((Sum(t_CB_Inc_Total_ST.[Inc_Total]))<>0)) 
UNION SELECT t_q_CB_Exp.rep_Month
	,t_q_CB_Exp.PC
	,t_q_CB_Exp.L_1
	,t_q_CB_Exp.L_2
	,t_q_CB_Exp.L_3
	,t_q_CB_Exp.L_4
	,t_q_CB_Exp.L_5
	,t_q_CB_Exp.L_6
	,t_q_CB_Exp.up_Curr
	,t_q_CB_Exp.Month AS [Month] 
	,t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp 
GROUP BY t_q_CB_Exp.rep_Month
	,t_q_CB_Exp.PC
	,t_q_CB_Exp.L_1
	,t_q_CB_Exp.L_2
	,t_q_CB_Exp.L_3
	,t_q_CB_Exp.L_4
	,t_q_CB_Exp.L_5
	,t_q_CB_Exp.L_6
	,t_q_CB_Exp.up_Curr
	,t_q_CB_Exp.Month 
	,t_q_CB_Exp.Key_R_PC_L6	
HAVING (((Sum(t_q_CB_Exp.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_CB_PR_WBS_Mod
SELECT t_CB_Inc_Total_Mod_ST.rep_Month
	,t_CB_Inc_Total_Mod_ST.PC
	,t_CB_Inc_Total_Mod_ST.L_1
	,t_CB_Inc_Total_Mod_ST.L_2
	,t_CB_Inc_Total_Mod_ST.L_3
	,t_CB_Inc_Total_Mod_ST.L_4
	,t_CB_Inc_Total_Mod_ST.L_5
	,t_CB_Inc_Total_Mod_ST.L_6
	,t_CB_Inc_Total_Mod_ST.Currency
	,t_CB_Inc_Total_Mod_ST.Month AS [Month] 
	,t_CB_Inc_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_Mod_ST 
GROUP BY t_CB_Inc_Total_Mod_ST.rep_Month
	,t_CB_Inc_Total_Mod_ST.PC
	,t_CB_Inc_Total_Mod_ST.L_1
	,t_CB_Inc_Total_Mod_ST.L_2
	,t_CB_Inc_Total_Mod_ST.L_3
	,t_CB_Inc_Total_Mod_ST.L_4
	,t_CB_Inc_Total_Mod_ST.L_5
	,t_CB_Inc_Total_Mod_ST.L_6
	,t_CB_Inc_Total_Mod_ST.Currency
	,t_CB_Inc_Total_Mod_ST.Month 
	,t_CB_Inc_Total_Mod_ST.Key_R_PC_L6
HAVING (((Sum(t_CB_Inc_Total_Mod_ST.[Inc_Total]))<>0)) 
UNION SELECT t_q_CB_Exp_Mod.rep_Month
	,t_q_CB_Exp_Mod.P01_Code
	,t_q_CB_Exp_Mod.L_1
	,t_q_CB_Exp_Mod.L_2
	,t_q_CB_Exp_Mod.L_3
	,t_q_CB_Exp_Mod.L_4
	,t_q_CB_Exp_Mod.L_5
	,t_q_CB_Exp_Mod.L_6
	,t_q_CB_Exp_Mod.up_Curr
	,t_q_CB_Exp_Mod.Month AS [Month] 
	,t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod 
GROUP BY t_q_CB_Exp_Mod.rep_Month
	,t_q_CB_Exp_Mod.P01_Code
	,t_q_CB_Exp_Mod.L_1
	,t_q_CB_Exp_Mod.L_2
	,t_q_CB_Exp_Mod.L_3
	,t_q_CB_Exp_Mod.L_4
	,t_q_CB_Exp_Mod.L_5
	,t_q_CB_Exp_Mod.L_6
	,t_q_CB_Exp_Mod.up_Curr
	,t_q_CB_Exp_Mod.Month 
	,t_q_CB_Exp_Mod.Key_R_PC_L6	
HAVING (((Sum(t_q_CB_Exp_Mod.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_CB_Profit
SELECT q_CB_PR_WBS.rep_Month, q_CB_PR_WBS.PC, q_CB_PR_WBS.L_1, q_CB_PR_WBS.L_2, q_CB_PR_WBS.L_3, q_CB_PR_WBS.L_4, q_CB_PR_WBS.L_5, q_CB_PR_WBS.L_6, q_CB_PR_WBS.Currency, q_CB_PR_WBS.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_CB_PR_WBS.Key_R_PC_L6
FROM (q_CB_PR_WBS LEFT JOIN t_CB_Inc_Total_ST ON (q_CB_PR_WBS.Key_R_PC_L6 = t_CB_Inc_Total_ST.Key_R_PC_L6) AND (q_CB_PR_WBS.Month = t_CB_Inc_Total_ST.Inc_Base_Mon) AND (q_CB_PR_WBS.Currency = t_CB_Inc_Total_ST.Currency)) LEFT JOIN t_q_CB_Exp ON (q_CB_PR_WBS.Key_R_PC_L6 = t_q_CB_Exp.Key_R_PC_L6) AND (q_CB_PR_WBS.Month = t_q_CB_Exp.Month) AND (q_CB_PR_WBS.Currency = t_q_CB_Exp.up_Curr)
ORDER BY q_CB_PR_WBS.rep_Month, q_CB_PR_WBS.PC, q_CB_PR_WBS.L_1, q_CB_PR_WBS.L_2, q_CB_PR_WBS.L_3, q_CB_PR_WBS.L_4, q_CB_PR_WBS.L_5, q_CB_PR_WBS.L_6, q_CB_PR_WBS.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_EUR_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_EUR_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6, q_CB_Profit_EUR_With_Dummy.Curr
FROM q_CB_Profit_EUR_With_Dummy
GROUP BY q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6, q_CB_Profit_EUR_With_Dummy.Curr
ORDER BY q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6
PIVOT q_CB_Profit_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_EUR_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_EUR_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6, q_CB_Profit_EUR_With_Dummy_Mod.Curr
FROM q_CB_Profit_EUR_With_Dummy_Mod
GROUP BY q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6, q_CB_Profit_EUR_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_TRY_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_TRY_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6, q_CB_Profit_TRY_With_Dummy.Curr
FROM q_CB_Profit_TRY_With_Dummy
GROUP BY q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6, q_CB_Profit_TRY_With_Dummy.Curr
ORDER BY q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6
PIVOT q_CB_Profit_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_TRY_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_TRY_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6, q_CB_Profit_TRY_With_Dummy_Mod.Curr
FROM q_CB_Profit_TRY_With_Dummy_Mod
GROUP BY q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6, q_CB_Profit_TRY_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_USD_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_USD_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6, q_CB_Profit_USD_With_Dummy.Curr
FROM q_CB_Profit_USD_With_Dummy
GROUP BY q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6, q_CB_Profit_USD_With_Dummy.Curr
ORDER BY q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6
PIVOT q_CB_Profit_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_USD_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_USD_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6, q_CB_Profit_USD_With_Dummy_Mod.Curr
FROM q_CB_Profit_USD_With_Dummy_Mod
GROUP BY q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6, q_CB_Profit_USD_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_With_Dummy.Profit) AS SumOfProfit
SELECT q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Curr
FROM q_CB_Profit_With_Dummy
GROUP BY q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Curr
ORDER BY q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Month
PIVOT q_CB_Profit_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "EUR" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Income]*[r_USD_EUR],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Income]*[r_TRY_EUR],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Expense]*[r_USD_EUR],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Expense]*[r_TRY_EUR],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "EUR" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Income]*[r_USD_EUR],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Income]*[r_TRY_EUR],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_USD_EUR],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_TRY_EUR],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_Mod_MT
SELECT q_CB_Profit_EUR_Mod.rep_Month, q_CB_Profit_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(q_CB_Profit_EUR_Mod.Expense) AS Expense, Sum(q_CB_Profit_EUR_Mod.Income) AS Income, q_CB_Profit_EUR_Mod.Month, q_CB_Profit_EUR_Mod.Currency, q_CB_Profit_EUR_Mod.L_1, q_CB_Profit_EUR_Mod.L_2, q_CB_Profit_EUR_Mod.L_3, q_CB_Profit_EUR_Mod.L_4, q_CB_Profit_EUR_Mod.L_5, q_CB_Profit_EUR_Mod.L_6, Sum(q_CB_Profit_EUR_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_EUR_Mod.Key_R_PC_L6 INTO t_CB_Profit_EUR_ST
FROM ((q_CB_Profit_EUR_Mod LEFT JOIN C3_Code ON (q_CB_Profit_EUR_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_EUR_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_EUR_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_EUR_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_EUR_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_EUR_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_EUR_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_EUR_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_EUR_Mod.rep_Month, q_CB_Profit_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_EUR_Mod.Month, q_CB_Profit_EUR_Mod.Currency, q_CB_Profit_EUR_Mod.L_1, q_CB_Profit_EUR_Mod.L_2, q_CB_Profit_EUR_Mod.L_3, q_CB_Profit_EUR_Mod.L_4, q_CB_Profit_EUR_Mod.L_5, q_CB_Profit_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_MT
SELECT q_CB_Profit_EUR.rep_Month, q_CB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(q_CB_Profit_EUR.Expense) AS Expense, Sum(q_CB_Profit_EUR.Income) AS Income, q_CB_Profit_EUR.Month, q_CB_Profit_EUR.Currency, q_CB_Profit_EUR.L_1, q_CB_Profit_EUR.L_2, q_CB_Profit_EUR.L_3, q_CB_Profit_EUR.L_4, q_CB_Profit_EUR.L_5, q_CB_Profit_EUR.L_6, Sum(q_CB_Profit_EUR.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_EUR.Key_R_PC_L6 INTO t_CB_Profit_EUR_ST
FROM ((q_CB_Profit_EUR LEFT JOIN C3_Code ON (q_CB_Profit_EUR.L_3 = C3_Code.c_L3) AND (q_CB_Profit_EUR.L_2 = C3_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_EUR.L_2 = C2_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_EUR.L_6 = C6_Code.c_L6) AND (q_CB_Profit_EUR.L_5 = C6_Code.c_L5) AND (q_CB_Profit_EUR.L_4 = C6_Code.c_L4) AND (q_CB_Profit_EUR.L_3 = C6_Code.c_L3) AND (q_CB_Profit_EUR.L_2 = C6_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_EUR.rep_Month, q_CB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_EUR.Month, q_CB_Profit_EUR.Currency, q_CB_Profit_EUR.L_1, q_CB_Profit_EUR.L_2, q_CB_Profit_EUR.L_3, q_CB_Profit_EUR.L_4, q_CB_Profit_EUR.L_5, q_CB_Profit_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_EUR

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_EUR_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full 


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_Mod
SELECT q_CB_PR_WBS_Mod.rep_Month, q_CB_PR_WBS_Mod.PC, q_CB_PR_WBS_Mod.L_1, q_CB_PR_WBS_Mod.L_2, q_CB_PR_WBS_Mod.L_3, q_CB_PR_WBS_Mod.L_4, q_CB_PR_WBS_Mod.L_5, q_CB_PR_WBS_Mod.L_6, q_CB_PR_WBS_Mod.Currency, q_CB_PR_WBS_Mod.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_CB_PR_WBS_Mod.Key_R_PC_L6
FROM (q_CB_PR_WBS_Mod LEFT JOIN t_CB_Inc_Total_Mod_ST ON (q_CB_PR_WBS_Mod.Currency = t_CB_Inc_Total_Mod_ST.Currency) AND (q_CB_PR_WBS_Mod.Month = t_CB_Inc_Total_Mod_ST.Month) AND (q_CB_PR_WBS_Mod.Key_R_PC_L6 = t_CB_Inc_Total_Mod_ST.Key_R_PC_L6)) LEFT JOIN t_q_CB_Exp_Mod ON (q_CB_PR_WBS_Mod.Currency = t_q_CB_Exp_Mod.up_Curr) AND (q_CB_PR_WBS_Mod.Month = t_q_CB_Exp_Mod.Month) AND (q_CB_PR_WBS_Mod.Key_R_PC_L6 = t_q_CB_Exp_Mod.Key_R_PC_L6)
ORDER BY q_CB_PR_WBS_Mod.rep_Month, q_CB_PR_WBS_Mod.PC, q_CB_PR_WBS_Mod.L_1, q_CB_PR_WBS_Mod.L_2, q_CB_PR_WBS_Mod.L_3, q_CB_PR_WBS_Mod.L_4, q_CB_PR_WBS_Mod.L_5, q_CB_PR_WBS_Mod.L_6, q_CB_PR_WBS_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Total_Mod_MT
SELECT q_CB_Profit_Mod.rep_Month, q_CB_Profit_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_Mod.Month, Sum(q_CB_Profit_Mod.Expense) AS Expense, Sum(q_CB_Profit_Mod.Income) AS Income, q_CB_Profit_Mod.Currency, q_CB_Profit_Mod.L_1, q_CB_Profit_Mod.L_2, q_CB_Profit_Mod.L_3, q_CB_Profit_Mod.L_4, q_CB_Profit_Mod.L_5, q_CB_Profit_Mod.L_6, Sum(q_CB_Profit_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_Mod.Key_R_PC_L6 INTO t_CB_Profit_Total_Mod_ST
FROM ((q_CB_Profit_Mod LEFT JOIN C3_Code ON (q_CB_Profit_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Profit_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_Mod.L_2 = C2_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Profit_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_Mod.rep_Month, q_CB_Profit_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_Mod.Month, q_CB_Profit_Mod.Currency, q_CB_Profit_Mod.L_1, q_CB_Profit_Mod.L_2, q_CB_Profit_Mod.L_3, q_CB_Profit_Mod.L_4, q_CB_Profit_Mod.L_5, q_CB_Profit_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Total_MT
SELECT q_CB_Profit.rep_Month, q_CB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit.Month, q_CB_Profit.Expense, q_CB_Profit.Income, q_CB_Profit.Currency, q_CB_Profit.L_1, q_CB_Profit.L_2, q_CB_Profit.L_3, q_CB_Profit.L_4, q_CB_Profit.L_5, q_CB_Profit.L_6, q_CB_Profit.Profit, C6_Code.Desc_TR_L6, q_CB_Profit.Key_R_PC_L6 INTO t_CB_Profit_Total_ST
FROM ((q_CB_Profit LEFT JOIN C3_Code ON (q_CB_Profit.L_1 = C3_Code.c_L1) AND (q_CB_Profit.L_2 = C3_Code.c_L2) AND (q_CB_Profit.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit.L_1 = C2_Code.c_L1) AND (q_CB_Profit.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit.L_1 = C6_Code.c_L1) AND (q_CB_Profit.L_2 = C6_Code.c_L2) AND (q_CB_Profit.L_3 = C6_Code.c_L3) AND (q_CB_Profit.L_4 = C6_Code.c_L4) AND (q_CB_Profit.L_5 = C6_Code.c_L5) AND (q_CB_Profit.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit.rep_Month, q_CB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit.Month, q_CB_Profit.Expense, q_CB_Profit.Income, q_CB_Profit.Currency, q_CB_Profit.L_1, q_CB_Profit.L_2, q_CB_Profit.L_3, q_CB_Profit.L_4, q_CB_Profit.L_5, q_CB_Profit.L_6, q_CB_Profit.Profit, C6_Code.Desc_TR_L6, q_CB_Profit.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "TRY" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Income]*[r_USD_TRY],IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Income]*[r_EUR_TRY],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Expense]*[r_USD_TRY],IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Expense]*[r_EUR_TRY],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "TRY" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Income]*[r_USD_TRY],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Income]*[r_EUR_TRY],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_USD_TRY],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_EUR_TRY],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_Mod_MT
SELECT q_CB_Profit_TRY_Mod.rep_Month, q_CB_Profit_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY_Mod.Month, Sum(q_CB_Profit_TRY_Mod.Expense) AS Expense, Sum(q_CB_Profit_TRY_Mod.Income) AS Income, q_CB_Profit_TRY_Mod.Currency, q_CB_Profit_TRY_Mod.L_1, q_CB_Profit_TRY_Mod.L_2, q_CB_Profit_TRY_Mod.L_3, q_CB_Profit_TRY_Mod.L_4, q_CB_Profit_TRY_Mod.L_5, q_CB_Profit_TRY_Mod.L_6, Sum(q_CB_Profit_TRY_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6 INTO t_CB_Profit_Mod_TRY_ST
FROM ((q_CB_Profit_TRY_Mod LEFT JOIN C3_Code ON (q_CB_Profit_TRY_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_TRY_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_TRY_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_TRY_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_TRY_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_TRY_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_TRY_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_TRY_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_TRY_Mod.rep_Month, q_CB_Profit_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY_Mod.Month, q_CB_Profit_TRY_Mod.Currency, q_CB_Profit_TRY_Mod.L_1, q_CB_Profit_TRY_Mod.L_2, q_CB_Profit_TRY_Mod.L_3, q_CB_Profit_TRY_Mod.L_4, q_CB_Profit_TRY_Mod.L_5, q_CB_Profit_TRY_Mod.L_6, C6_Code.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_MT
SELECT q_CB_Profit_TRY.rep_Month, q_CB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY.Month, Sum(q_CB_Profit_TRY.Expense) AS Expense, Sum(q_CB_Profit_TRY.Income) AS Income, q_CB_Profit_TRY.Currency, q_CB_Profit_TRY.L_1, q_CB_Profit_TRY.L_2, q_CB_Profit_TRY.L_3, q_CB_Profit_TRY.L_4, q_CB_Profit_TRY.L_5, q_CB_Profit_TRY.L_6, Sum(q_CB_Profit_TRY.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_TRY.Key_R_PC_L6 INTO t_CB_Profit_TRY_ST
FROM ((q_CB_Profit_TRY LEFT JOIN C3_Code ON (q_CB_Profit_TRY.L_1 = C3_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C3_Code.c_L2) AND (q_CB_Profit_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_TRY.L_1 = C2_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_TRY.L_1 = C6_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C6_Code.c_L2) AND (q_CB_Profit_TRY.L_3 = C6_Code.c_L3) AND (q_CB_Profit_TRY.L_4 = C6_Code.c_L4) AND (q_CB_Profit_TRY.L_5 = C6_Code.c_L5) AND (q_CB_Profit_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_TRY.rep_Month, q_CB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY.Month, q_CB_Profit_TRY.Currency, q_CB_Profit_TRY.L_1, q_CB_Profit_TRY.L_2, q_CB_Profit_TRY.L_3, q_CB_Profit_TRY.L_4, q_CB_Profit_TRY.L_5, q_CB_Profit_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_TRY

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_TRY_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full




WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "USD" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Income]*[r_EUR_USD],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Income]*[r_TRY_USD],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Expense]*[r_EUR_USD],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Expense]*[r_TRY_USD],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "USD" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Income]*[r_EUR_USD],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Income]*[r_TRY_USD],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_EUR_USD],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_TRY_USD],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_Mod_MT
SELECT q_CB_Profit_USD_Mod.rep_Month, q_CB_Profit_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD_Mod.Month, Sum(q_CB_Profit_USD_Mod.Expense) AS Expense, Sum(q_CB_Profit_USD_Mod.Income) AS Income, q_CB_Profit_USD_Mod.Currency, q_CB_Profit_USD_Mod.L_1, q_CB_Profit_USD_Mod.L_2, q_CB_Profit_USD_Mod.L_3, q_CB_Profit_USD_Mod.L_4, q_CB_Profit_USD_Mod.L_5, q_CB_Profit_USD_Mod.L_6, Sum(q_CB_Profit_USD_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6 INTO t_CB_Profit_USD_Mod_ST
FROM ((q_CB_Profit_USD_Mod LEFT JOIN C3_Code ON (q_CB_Profit_USD_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_USD_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_USD_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_USD_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_USD_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_USD_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_USD_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_USD_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_USD_Mod.rep_Month, q_CB_Profit_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD_Mod.Month, q_CB_Profit_USD_Mod.Currency, q_CB_Profit_USD_Mod.L_1, q_CB_Profit_USD_Mod.L_2, q_CB_Profit_USD_Mod.L_3, q_CB_Profit_USD_Mod.L_4, q_CB_Profit_USD_Mod.L_5, q_CB_Profit_USD_Mod.L_6, C6_Code.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_MT
SELECT q_CB_Profit_USD.rep_Month, q_CB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD.Month, Sum(q_CB_Profit_USD.Expense) AS Expense, Sum(q_CB_Profit_USD.Income) AS Income, q_CB_Profit_USD.Currency, q_CB_Profit_USD.L_1, q_CB_Profit_USD.L_2, q_CB_Profit_USD.L_3, q_CB_Profit_USD.L_4, q_CB_Profit_USD.L_5, q_CB_Profit_USD.L_6, Sum(q_CB_Profit_USD.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_USD.Key_R_PC_L6 INTO t_CB_Profit_USD_ST
FROM ((q_CB_Profit_USD LEFT JOIN C3_Code ON (q_CB_Profit_USD.L_3 = C3_Code.c_L3) AND (q_CB_Profit_USD.L_2 = C3_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_USD.L_2 = C2_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_USD.L_6 = C6_Code.c_L6) AND (q_CB_Profit_USD.L_5 = C6_Code.c_L5) AND (q_CB_Profit_USD.L_4 = C6_Code.c_L4) AND (q_CB_Profit_USD.L_3 = C6_Code.c_L3) AND (q_CB_Profit_USD.L_2 = C6_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_USD.rep_Month, q_CB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD.Month, q_CB_Profit_USD.Currency, q_CB_Profit_USD.L_1, q_CB_Profit_USD.L_2, q_CB_Profit_USD.L_3, q_CB_Profit_USD.L_4, q_CB_Profit_USD.L_5, q_CB_Profit_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_USD

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_USD_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full




WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_CB_Profit

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_With_Dummy_Mod.Profit) AS Total_Profit
SELECT q_CB_Profit_With_Dummy_Mod.rep_Month, q_CB_Profit_With_Dummy_Mod.PC, q_CB_Profit_With_Dummy_Mod.L_1, q_CB_Profit_With_Dummy_Mod.L_2, q_CB_Profit_With_Dummy_Mod.L_3, q_CB_Profit_With_Dummy_Mod.L_4, q_CB_Profit_With_Dummy_Mod.L_5, q_CB_Profit_With_Dummy_Mod.L_6, q_CB_Profit_With_Dummy_Mod.Curr, IIf([Curr]="EUR","r_EUR_TRY",IIf([Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Curr]="EUR","r_EUR_USD",IIf([Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Curr]="EUR","r_EUR_EUR",IIf([Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Profit_With_Dummy_Mod
GROUP BY q_CB_Profit_With_Dummy_Mod.rep_Month, q_CB_Profit_With_Dummy_Mod.PC, q_CB_Profit_With_Dummy_Mod.L_1, q_CB_Profit_With_Dummy_Mod.L_2, q_CB_Profit_With_Dummy_Mod.L_3, q_CB_Profit_With_Dummy_Mod.L_4, q_CB_Profit_With_Dummy_Mod.L_5, q_CB_Profit_With_Dummy_Mod.L_6, q_CB_Profit_With_Dummy_Mod.Curr, IIf([Curr]="EUR","r_EUR_TRY",IIf([Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Curr]="EUR","r_EUR_USD",IIf([Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([Curr]="EUR","r_EUR_EUR",IIf([Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Profit_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_CB_Profit_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Project_Months
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name AS Name
FROM t_CB_Profit_Total_ST LEFT JOIN t_001_Projects ON t_CB_Profit_Total_ST.PC = t_001_Projects.p_Code
GROUP BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name
ORDER BY t_CB_Profit_Total_ST.rep_Month DESC;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works
SELECT t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0))
ORDER BY t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Mod
SELECT t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0) And ((t_CB_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Monthly
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>[t_Rep_Month].[rep_Month_Date]) AND ((t_CB_Qty.Exp_CB_Qty)<>0))
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Monthly_Mod
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0))
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
HAVING (((t_CB_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_Crosstab
TRANSFORM Sum(t_CB_Qty.Exp_CB_Qty) AS SumOfExp_CB_Qty
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
FROM t_CB_Qty
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
PIVOT t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Res_UP_Market_Coeff
SELECT q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1 AS R_1_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2 AS R_2_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3 AS R_3_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4 AS R_4_Code, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]) AS up_Cost_Coeff, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon AS g_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[exp_cb_mon] AS Key_Full_Comb
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes LEFT JOIN R4_Code ON q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]), q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[exp_cb_mon]
ORDER BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Res_UP_Market_Coeff_Mod
SELECT q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1 AS R_1_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2 AS R_2_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3 AS R_3_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4 AS R_4_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency AS [Currency], (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]) AS up_Cost_Coeff, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon AS g_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.An_rs_quantity, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_Full, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[exp_cb_mon] AS Key_Full_Comb
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod LEFT JOIN R4_Code ON q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]), q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.An_rs_quantity, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_Full, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[exp_cb_mon]
ORDER BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Data
SELECT q_Budget_WBS_Union.L_1, q_Budget_WBS_Union.L_2, q_Budget_WBS_Union.L_3, q_Budget_WBS_Union.L_4, q_Budget_WBS_Union.L_5, q_Budget_WBS_Union.L_6, q_Budget_WBS_Union.up_Curr, Sum(IIf([q_Second_Budget_GT].[IncomeGT] Is Null,"0",[q_Second_Budget_GT].[IncomeGT])) AS IncomeGT_Second, Sum(IIf([q_Second_Budget_GT].[ExpenseGT] Is Null,"0",[q_Second_Budget_GT].[ExpenseGT])) AS ExpenseGT_Second, Sum(IIf([q_Second_Budget_GT].[ProfitGT] Is Null,"0",[q_Second_Budget_GT].[ProfitGT])) AS ProfitGT_Second, Sum(IIf([q_First_Budget_GT].[IncomeGT] Is Null,"0",[q_First_Budget_GT].[IncomeGT])) AS IncomeGT_First, Sum(IIf([q_First_Budget_GT].[ExpenseGT] Is Null,"0",[q_First_Budget_GT].[ExpenseGT])) AS ExpenseGT_First, Sum(IIf([q_First_Budget_GT].[ProfitGT] Is Null,"0",[q_First_Budget_GT].[ProfitGT])) AS ProfitGT_First, [IncomeGT_Second]-[IncomeGT_First] AS IncomeDiffGT, [ExpenseGT_Second]-[ExpenseGT_First] AS ExpenseDiff_GT, [ProfitGT_Second]-[ProfitGT_First] AS ProfitDiff_GT, Sum(IIf([q_Second_Budget_RT_Grouped].[IncomeRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[IncomeRT])) AS IncomeRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped].[ExpenseRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[ExpenseRT])) AS ExpenseRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped].[ProfitRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[ProfitRT])) AS ProfitRT_Second, Sum(IIf([q_First_Budget_RT_Grouped].[IncomeRT] Is Null,"0",[q_First_Budget_RT_Grouped].[IncomeRT])) AS IncomeRT_First, Sum(IIf([q_First_Budget_RT_Grouped].[ExpenseRT] Is Null,"0",[q_First_Budget_RT_Grouped].[ExpenseRT])) AS ExpenseRT_First, Sum(IIf([q_First_Budget_RT_Grouped].[ProfitRT] Is Null,"0",[q_First_Budget_RT_Grouped].[ProfitRT])) AS ProfitRT_First, [IncomeRT_Second]-[IncomeRT_First] AS IncomeDiffRT, [ExpenseRT_Second]-[ExpenseRT_First] AS ExpenseDiff_RT, [ProfitRT_Second]-[ProfitRT_First] AS ProfitDiff_RT, [IncomeGT_Second]-[IncomeRT_Second] AS IncomeREM_Second, [ExpenseGT_Second]-[ExpenseRT_Second] AS ExpenseREM_Second, [ProfitGT_Second]-[ProfitRT_Second] AS ProfitREM_Second, [IncomeGT_First]-[IncomeRT_First] AS IncomeREM_First, [ExpenseGT_First]-[ExpenseRT_First] AS ExpenseREM_First, [ProfitGT_First]-[ProfitRT_First] AS ProfitREM_First, [IncomeREM_Second]-[IncomeREM_First] AS IncomeREM_Diff, [ExpenseREM_Second]-[ExpenseREM_First] AS ExpenseREM_Diff, [ProfitREM_Second]-[ProfitREM_First] AS ProfitREM_Diff, q_Budget_WBS_Union.Desc_TR_L3, q_Budget_WBS_Union.Desc_TR_L2, q_Budget_WBS_Union.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM (((((q_Budget_WBS_Union LEFT JOIN q_Second_Budget_GT ON (q_Budget_WBS_Union.up_Curr = q_Second_Budget_GT.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_Second_Budget_GT.L_6) AND (q_Budget_WBS_Union.L_5 = q_Second_Budget_GT.L_5) AND (q_Budget_WBS_Union.L_4 = q_Second_Budget_GT.L_4) AND (q_Budget_WBS_Union.L_3 = q_Second_Budget_GT.L_3) AND (q_Budget_WBS_Union.L_2 = q_Second_Budget_GT.L_2) AND (q_Budget_WBS_Union.L_1 = q_Second_Budget_GT.L_1)) LEFT JOIN q_First_Budget_GT ON (q_Budget_WBS_Union.up_Curr = q_First_Budget_GT.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_First_Budget_GT.L_6) AND (q_Budget_WBS_Union.L_5 = q_First_Budget_GT.L_5) AND (q_Budget_WBS_Union.L_4 = q_First_Budget_GT.L_4) AND (q_Budget_WBS_Union.L_3 = q_First_Budget_GT.L_3) AND (q_Budget_WBS_Union.L_2 = q_First_Budget_GT.L_2) AND (q_Budget_WBS_Union.L_1 = q_First_Budget_GT.L_1)) LEFT JOIN q_Second_Budget_RT_Grouped ON (q_Budget_WBS_Union.up_Curr = q_Second_Budget_RT_Grouped.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_Second_Budget_RT_Grouped.L_6) AND (q_Budget_WBS_Union.L_5 = q_Second_Budget_RT_Grouped.L_5) AND (q_Budget_WBS_Union.L_4 = q_Second_Budget_RT_Grouped.L_4) AND (q_Budget_WBS_Union.L_3 = q_Second_Budget_RT_Grouped.L_3) AND (q_Budget_WBS_Union.L_2 = q_Second_Budget_RT_Grouped.L_2) AND (q_Budget_WBS_Union.L_1 = q_Second_Budget_RT_Grouped.L_1)) LEFT JOIN q_First_Budget_RT_Grouped ON (q_Budget_WBS_Union.up_Curr = q_First_Budget_RT_Grouped.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_First_Budget_RT_Grouped.L_6) AND (q_Budget_WBS_Union.L_5 = q_First_Budget_RT_Grouped.L_5) AND (q_Budget_WBS_Union.L_4 = q_First_Budget_RT_Grouped.L_4) AND (q_Budget_WBS_Union.L_3 = q_First_Budget_RT_Grouped.L_3) AND (q_Budget_WBS_Union.L_2 = q_First_Budget_RT_Grouped.L_2) AND (q_Budget_WBS_Union.L_1 = q_First_Budget_RT_Grouped.L_1)) LEFT JOIN C5_Code ON (q_Budget_WBS_Union.L_5 = C5_Code.c_L5) AND (q_Budget_WBS_Union.L_4 = C5_Code.c_L4) AND (q_Budget_WBS_Union.L_3 = C5_Code.c_L3) AND (q_Budget_WBS_Union.L_2 = C5_Code.c_L2) AND (q_Budget_WBS_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_Budget_WBS_Union.L_4 = C4_Code.c_L4) AND (q_Budget_WBS_Union.L_3 = C4_Code.c_L3) AND (q_Budget_WBS_Union.L_2 = C4_Code.c_L2) AND (q_Budget_WBS_Union.L_1 = C4_Code.c_L1)
GROUP BY q_Budget_WBS_Union.L_1, q_Budget_WBS_Union.L_2, q_Budget_WBS_Union.L_3, q_Budget_WBS_Union.L_4, q_Budget_WBS_Union.L_5, q_Budget_WBS_Union.L_6, q_Budget_WBS_Union.up_Curr, q_Budget_WBS_Union.Desc_TR_L3, q_Budget_WBS_Union.Desc_TR_L2, q_Budget_WBS_Union.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Mod_USD_Total
SELECT Sum(t_q_CB_Exp_USD_Mod.USD_Expense) AS Total_USD_Expense, t_q_CB_Exp_USD_Mod.rep_Month
FROM t_q_CB_Exp_USD_Mod
GROUP BY t_q_CB_Exp_USD_Mod.rep_Month
HAVING (((t_q_CB_Exp_USD_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data
SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
IncomeGT_Second AS Second_Data_GT,
IncomeRT_Second AS Second_Data_RT,
IncomeGT_First AS First_Data_GT,
IncomeRT_First AS First_Data_RT,
IncomeREM_Second AS Second_Data_REM,
IncomeREM_First AS First_Data_REM,
IncomeGT_Second - IncomeGT_First AS GT_REM,
IncomeRT_Second - IncomeRT_First AS RT_REM,
IncomeREM_Second - IncomeREM_First AS REM_REM,
"1 - GELİR" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE (IncomeGT_Second + IncomeRT_Second + IncomeGT_First + IncomeRT_First) <> 0

UNION

SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ExpenseGT_Second,
ExpenseRT_Second,
ExpenseGT_First,
ExpenseRT_First,
ExpenseREM_Second,
ExpenseREM_First,
ExpenseGT_Second - ExpenseGT_First,
ExpenseRT_Second - ExpenseRT_First AS RT_REM,
ExpenseREM_Second - ExpenseREM_First AS REM_REM,
"2 - GİDER" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE  (ExpenseGT_Second + ExpenseRT_Second + ExpenseGT_First + ExpenseRT_First) <>0

UNION SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ProfitGT_Second,
ProfitRT_Second,
ProfitGT_First,
ProfitRT_First,
ProfitREM_Second,
ProfitREM_First,
ProfitGT_Second - ProfitGT_First,
ProfitRT_Second - ProfitRT_First AS RT_REM,
ProfitREM_Second - ProfitREM_First AS REM_REM,
"3 - BRÜT KAR" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE  (ProfitGT_Second + ProfitRT_Second + ProfitGT_First + ProfitRT_First) <>0;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data_Lvl_4
SELECT q_CB_Sum_Cons_Report_Data.L_1, q_CB_Sum_Cons_Report_Data.L_2, q_CB_Sum_Cons_Report_Data.L_3, q_CB_Sum_Cons_Report_Data.L_4, q_CB_Sum_Cons_Report_Data.L_5, q_CB_Sum_Cons_Report_Data.L_6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Desc_TR_L3, q_CB_Sum_Cons_Report_Data.Desc_TR_L4, q_CB_Sum_Cons_Report_Data.Desc_TR_L5, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Cons_Report_Data
GROUP BY q_CB_Sum_Cons_Report_Data.L_1, q_CB_Sum_Cons_Report_Data.L_2, q_CB_Sum_Cons_Report_Data.L_3, q_CB_Sum_Cons_Report_Data.L_4, q_CB_Sum_Cons_Report_Data.L_5, q_CB_Sum_Cons_Report_Data.L_6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Desc_TR_L3, q_CB_Sum_Cons_Report_Data.Desc_TR_L4, q_CB_Sum_Cons_Report_Data.Desc_TR_L5, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Cons_Report_Data.L_1)='D') AND ((q_CB_Sum_Cons_Report_Data.L_2)='01') AND ((q_CB_Sum_Cons_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Cons_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data_Lvl_5
SELECT q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.L_5, q_CB_Sum_Cons_Report_Data_Lvl_4.L_6, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L5, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L6, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) AS GT_REM
FROM q_CB_Sum_Cons_Report_Data_Lvl_4
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.L_5, q_CB_Sum_Cons_Report_Data_Lvl_4.L_6, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L5, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L6, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type
HAVING (((q_CB_Sum_Cons_Report_Data_Lvl_4.L_1)='D') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_2)='01') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_4)='11') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_USD_Total
SELECT Sum(t_q_CB_Exp_USD.USD_Expense) AS Total_USD_Expense, t_q_CB_Exp_USD.rep_Month
FROM t_q_CB_Exp_USD
GROUP BY t_q_CB_Exp_USD.rep_Month
HAVING (((t_q_CB_Exp_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Data
SELECT q_Budget_WBS_Union_Projects.PC, q_Budget_WBS_Union_Projects.L_1, q_Budget_WBS_Union_Projects.L_2, q_Budget_WBS_Union_Projects.L_3, q_Budget_WBS_Union_Projects.L_4, q_Budget_WBS_Union_Projects.L_5, q_Budget_WBS_Union_Projects.L_6, q_Budget_WBS_Union_Projects.up_Curr, Sum(IIf([q_Second_Budget_GT].[IncomeGT] Is Null,"0",[q_Second_Budget_GT].[IncomeGT])) AS IncomeGT_Second, Sum(IIf([q_Second_Budget_GT].[ExpenseGT] Is Null,"0",[q_Second_Budget_GT].[ExpenseGT])) AS ExpenseGT_Second, Sum(IIf([q_Second_Budget_GT].[ProfitGT] Is Null,"0",[q_Second_Budget_GT].[ProfitGT])) AS ProfitGT_Second, Sum(IIf([q_First_Budget_GT].[IncomeGT] Is Null,"0",[q_First_Budget_GT].[IncomeGT])) AS IncomeGT_First, Sum(IIf([q_First_Budget_GT].[ExpenseGT] Is Null,"0",[q_First_Budget_GT].[ExpenseGT])) AS ExpenseGT_First, Sum(IIf([q_First_Budget_GT].[ProfitGT] Is Null,"0",[q_First_Budget_GT].[ProfitGT])) AS ProfitGT_First, [IncomeGT_Second]-[IncomeGT_First] AS IncomeDiffGT, [ExpenseGT_Second]-[ExpenseGT_First] AS ExpenseDiff_GT, [ProfitGT_Second]-[ProfitGT_First] AS ProfitDiff_GT, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[IncomeRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[IncomeRT])) AS IncomeRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[ExpenseRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[ExpenseRT])) AS ExpenseRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[ProfitRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[ProfitRT])) AS ProfitRT_Second, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[IncomeRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[IncomeRT])) AS IncomeRT_First, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[ExpenseRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[ExpenseRT])) AS ExpenseRT_First, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[ProfitRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[ProfitRT])) AS ProfitRT_First, [IncomeRT_Second]-[IncomeRT_First] AS IncomeDiffRT, [ExpenseRT_Second]-[ExpenseRT_First] AS ExpenseDiff_RT, [ProfitRT_Second]-[ProfitRT_First] AS ProfitDiff_RT, [IncomeGT_Second]-[IncomeRT_Second] AS IncomeREM_Second, [ExpenseGT_Second]-[ExpenseRT_Second] AS ExpenseREM_Second, [ProfitGT_Second]-[ProfitRT_Second] AS ProfitREM_Second, [IncomeGT_First]-[IncomeRT_First] AS IncomeREM_First, [ExpenseGT_First]-[ExpenseRT_First] AS ExpenseREM_First, [ProfitGT_First]-[ProfitRT_First] AS ProfitREM_First, [IncomeREM_Second]-[IncomeREM_First] AS IncomeREM_Diff, [ExpenseREM_Second]-[ExpenseREM_First] AS ExpenseREM_Diff, [ProfitREM_Second]-[ProfitREM_First] AS ProfitREM_Diff, q_Budget_WBS_Union_Projects.Desc_TR_L3, q_Budget_WBS_Union_Projects.Desc_TR_L2, q_Budget_WBS_Union_Projects.Desc_TR_L6, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5
FROM (((((q_Budget_WBS_Union_Projects LEFT JOIN q_Second_Budget_GT ON (q_Budget_WBS_Union_Projects.up_Curr = q_Second_Budget_GT.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_Second_Budget_GT.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_Second_Budget_GT.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_Second_Budget_GT.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_Second_Budget_GT.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_Second_Budget_GT.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_Second_Budget_GT.L_1) AND (q_Budget_WBS_Union_Projects.PC = q_Second_Budget_GT.PC)) LEFT JOIN q_First_Budget_GT ON (q_Budget_WBS_Union_Projects.up_Curr = q_First_Budget_GT.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_First_Budget_GT.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_First_Budget_GT.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_First_Budget_GT.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_First_Budget_GT.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_First_Budget_GT.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_First_Budget_GT.L_1) AND (q_Budget_WBS_Union_Projects.PC = q_First_Budget_GT.PC)) LEFT JOIN q_Second_Budget_RT_Grouped_Projects ON (q_Budget_WBS_Union_Projects.PC = q_Second_Budget_RT_Grouped_Projects.PC) AND (q_Budget_WBS_Union_Projects.up_Curr = q_Second_Budget_RT_Grouped_Projects.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_Second_Budget_RT_Grouped_Projects.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_Second_Budget_RT_Grouped_Projects.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_Second_Budget_RT_Grouped_Projects.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_Second_Budget_RT_Grouped_Projects.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_Second_Budget_RT_Grouped_Projects.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_Second_Budget_RT_Grouped_Projects.L_1)) LEFT JOIN q_First_Budget_RT_Grouped_Projects ON (q_Budget_WBS_Union_Projects.PC = q_First_Budget_RT_Grouped_Projects.PC) AND (q_Budget_WBS_Union_Projects.up_Curr = q_First_Budget_RT_Grouped_Projects.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_First_Budget_RT_Grouped_Projects.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_First_Budget_RT_Grouped_Projects.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_First_Budget_RT_Grouped_Projects.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_First_Budget_RT_Grouped_Projects.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_First_Budget_RT_Grouped_Projects.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_First_Budget_RT_Grouped_Projects.L_1)) LEFT JOIN C4_Code ON (q_Budget_WBS_Union_Projects.L_4 = C4_Code.c_L4) AND (q_Budget_WBS_Union_Projects.L_3 = C4_Code.c_L3) AND (q_Budget_WBS_Union_Projects.L_2 = C4_Code.c_L2) AND (q_Budget_WBS_Union_Projects.L_1 = C4_Code.c_L1)) LEFT JOIN C5_Code ON (q_Budget_WBS_Union_Projects.L_5 = C5_Code.c_L5) AND (q_Budget_WBS_Union_Projects.L_4 = C5_Code.c_L4) AND (q_Budget_WBS_Union_Projects.L_3 = C5_Code.c_L3) AND (q_Budget_WBS_Union_Projects.L_2 = C5_Code.c_L2) AND (q_Budget_WBS_Union_Projects.L_1 = C5_Code.c_L1)
GROUP BY q_Budget_WBS_Union_Projects.PC, q_Budget_WBS_Union_Projects.L_1, q_Budget_WBS_Union_Projects.L_2, q_Budget_WBS_Union_Projects.L_3, q_Budget_WBS_Union_Projects.L_4, q_Budget_WBS_Union_Projects.L_5, q_Budget_WBS_Union_Projects.L_6, q_Budget_WBS_Union_Projects.up_Curr, q_Budget_WBS_Union_Projects.Desc_TR_L3, q_Budget_WBS_Union_Projects.Desc_TR_L2, q_Budget_WBS_Union_Projects.Desc_TR_L6, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data
SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
IncomeGT_Second AS Second_Data_GT,
IncomeRT_Second AS Second_Data_RT,
IncomeGT_First AS First_Data_GT,
IncomeRT_First AS First_Data_RT,
IncomeREM_Second AS Second_Data_REM,
IncomeREM_First AS First_Data_REM,
IncomeGT_Second - IncomeGT_First AS GT_REM,
IncomeRT_Second - IncomeRT_First AS RT_REM,
IncomeREM_Second - IncomeREM_First AS REM_REM,
"1 - GELİR" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5

	FROM 
		 q_CB_Sum_Projects_Data

WHERE (IncomeGT_Second + IncomeRT_Second + IncomeGT_First + IncomeRT_First) <> 0


UNION

SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ExpenseGT_Second,
ExpenseRT_Second,
ExpenseGT_First,
ExpenseRT_First,
ExpenseREM_Second,
ExpenseREM_First,
ExpenseGT_Second - ExpenseGT_First,
ExpenseRT_Second - ExpenseRT_First AS RT_REM,
ExpenseREM_Second - ExpenseREM_First AS REM_REM,
"2 - GİDER" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5


	FROM 
		 q_CB_Sum_Projects_Data


WHERE  (ExpenseGT_Second + ExpenseRT_Second + ExpenseGT_First + ExpenseRT_First) <>0


UNION SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ProfitGT_Second,
ProfitRT_Second,
ProfitGT_First,
ProfitRT_First,
ProfitREM_Second,
ProfitREM_First,
ProfitGT_Second - ProfitGT_First,
ProfitRT_Second - ProfitRT_First AS RT_REM,
ProfitREM_Second - ProfitREM_First AS REM_REM,
"3 - BRÜT KAR" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5


	FROM 
		 q_CB_Sum_Projects_Data

WHERE  (ProfitGT_Second + ProfitRT_Second + ProfitGT_First + ProfitRT_First) <>0;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data_Lvl_4
SELECT q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Projects_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, Sum(q_CB_Sum_Projects_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Projects_Report_Data
GROUP BY q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Projects_Report_Data.L_1)='D') AND ((q_CB_Sum_Projects_Report_Data.L_2)='01') AND ((q_CB_Sum_Projects_Report_Data.PC)='MBE') AND ((q_CB_Sum_Projects_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Projects_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data_Lvl_5
SELECT q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Projects_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, Sum(q_CB_Sum_Projects_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Projects_Report_Data
GROUP BY q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Projects_Report_Data.L_1)='D') AND ((q_CB_Sum_Projects_Report_Data.L_2)='01') AND ((q_CB_Sum_Projects_Report_Data.PC)='MBE') AND ((q_CB_Sum_Projects_Report_Data.L_4)='14') AND ((q_CB_Sum_Projects_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Projects_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Summary_Report_CurrMonth_Data_Group
SELECT q_CB_AllProjects_Report_CurrMonth_Data.rep_Month, q_CB_AllProjects_Report_CurrMonth_Data.PC, q_CB_AllProjects_Report_CurrMonth_Data.L_1, q_CB_AllProjects_Report_CurrMonth_Data.L_2, q_CB_AllProjects_Report_CurrMonth_Data.L_3, q_CB_AllProjects_Report_CurrMonth_Data.L_4, q_CB_AllProjects_Report_CurrMonth_Data.L_5, q_CB_AllProjects_Report_CurrMonth_Data.L_6, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L2, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L3, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L6, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Income) AS Income, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Expense) AS Expense, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Profit) AS Profit, q_CB_AllProjects_Report_CurrMonth_Data.Currency
FROM q_CB_AllProjects_Report_CurrMonth_Data
GROUP BY q_CB_AllProjects_Report_CurrMonth_Data.rep_Month, q_CB_AllProjects_Report_CurrMonth_Data.PC, q_CB_AllProjects_Report_CurrMonth_Data.L_1, q_CB_AllProjects_Report_CurrMonth_Data.L_2, q_CB_AllProjects_Report_CurrMonth_Data.L_3, q_CB_AllProjects_Report_CurrMonth_Data.L_4, q_CB_AllProjects_Report_CurrMonth_Data.L_5, q_CB_AllProjects_Report_CurrMonth_Data.L_6, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L2, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L3, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L6, q_CB_AllProjects_Report_CurrMonth_Data.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Summary_Report_Union
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency
	FROM 
		q_CB_AllProjects_Report_CurrMonth_Data

UNION SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency

	FROM 
		q_CB_AllProjects_Report_EndProject_Data;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price
SELECT q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code AS P01_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month AS [Month], q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_CB_UP_Coeff.Key_R_PC_L6
FROM q_CB_UP_Coeff
GROUP BY q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.rs_Currency, q_CB_UP_Coeff.Key_R_PC_L6, q_CB_UP_Coeff.g_Month
ORDER BY q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Crosstab
TRANSFORM Sum(q_CB_Unit_Price.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.up_Curr, q_CB_Unit_Price.P01_Code
FROM q_CB_Unit_Price
GROUP BY q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.up_Curr, q_CB_Unit_Price.P01_Code
PIVOT q_CB_Unit_Price.Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Crosstab_Mod
TRANSFORM Sum(q_CB_Unit_Price_Mod.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.P01_Code
FROM q_CB_Unit_Price_Mod
GROUP BY q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.P01_Code
PIVOT q_CB_Unit_Price_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Diff
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Month, q_CB_Unit_Price.Unit_Price_Planned_Coeff AS UP_Orj, q_CB_Unit_Price_Mod.Unit_Price_Planned_Coeff AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Unit_Price_Mod LEFT JOIN q_CB_Unit_Price ON (q_CB_Unit_Price_Mod.up_Curr = q_CB_Unit_Price.up_Curr) AND (q_CB_Unit_Price_Mod.Month = q_CB_Unit_Price.Month) AND (q_CB_Unit_Price_Mod.L_6 = q_CB_Unit_Price.L_6) AND (q_CB_Unit_Price_Mod.L_5 = q_CB_Unit_Price.L_5) AND (q_CB_Unit_Price_Mod.L_4 = q_CB_Unit_Price.L_4) AND (q_CB_Unit_Price_Mod.L_3 = q_CB_Unit_Price.L_3) AND (q_CB_Unit_Price_Mod.L_2 = q_CB_Unit_Price.L_2) AND (q_CB_Unit_Price_Mod.L_1 = q_CB_Unit_Price.L_1) AND (q_CB_Unit_Price_Mod.P01_Code = q_CB_Unit_Price.P01_Code) AND (q_CB_Unit_Price_Mod.rep_Month = q_CB_Unit_Price.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Mod
SELECT q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code AS P01_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month, q_CB_UP_Coeff_Mod.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_CB_UP_Coeff_Mod.Key_R_PC_L6
FROM q_CB_UP_Coeff_Mod
GROUP BY q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month, q_CB_UP_Coeff_Mod.rs_Currency, q_CB_UP_Coeff_Mod.Key_R_PC_L6
ORDER BY q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_Check
SELECT q_PL_Exp.rep_Month, q_PL_Exp.P01_Code, q_PL_Exp.L_1, q_PL_Exp.L_2, q_PL_Exp.L_3, q_PL_Exp.L_4, q_PL_Exp.L_5, q_PL_Exp.L_6, q_PL_Exp.up_Curr, Sum(q_PL_Exp.Total_Expense) AS [Total Expense], Sum(q_CB_Qty.Exp_CB_Qty) AS Quantity, C6_Code.Unit, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Without_Coeff, [Total Expense]/[Quantity] AS UP_Average_With_Coeff, [UP_Average_With_Coeff]/[UP_Without_Coeff] AS UP_Average_Coeff
FROM ((q_PL_Exp LEFT JOIN C6_Code ON (q_PL_Exp.L_1 = C6_Code.c_L1) AND (q_PL_Exp.L_2 = C6_Code.c_L2) AND (q_PL_Exp.L_3 = C6_Code.c_L3) AND (q_PL_Exp.L_4 = C6_Code.c_L4) AND (q_PL_Exp.L_5 = C6_Code.c_L5) AND (q_PL_Exp.L_6 = C6_Code.c_L6)) LEFT JOIN q_CB_Qty ON (q_PL_Exp.rep_Month = q_CB_Qty.rep_Month) AND (q_PL_Exp.P01_Code = q_CB_Qty.PC) AND (q_PL_Exp.L_1 = q_CB_Qty.L_1) AND (q_PL_Exp.L_2 = q_CB_Qty.L_2) AND (q_PL_Exp.L_3 = q_CB_Qty.L_3) AND (q_PL_Exp.L_4 = q_CB_Qty.L_4) AND (q_PL_Exp.L_5 = q_CB_Qty.L_5) AND (q_PL_Exp.L_6 = q_CB_Qty.L_6)) LEFT JOIN q_CB_Work_UP_without_Coeff ON (q_PL_Exp.rep_Month = q_CB_Work_UP_without_Coeff.rep_Month) AND (q_PL_Exp.P01_Code = q_CB_Work_UP_without_Coeff.PC) AND (q_PL_Exp.L_1 = q_CB_Work_UP_without_Coeff.L_1) AND (q_PL_Exp.L_2 = q_CB_Work_UP_without_Coeff.L_2) AND (q_PL_Exp.L_3 = q_CB_Work_UP_without_Coeff.L_3) AND (q_PL_Exp.L_4 = q_CB_Work_UP_without_Coeff.L_4) AND (q_PL_Exp.L_5 = q_CB_Work_UP_without_Coeff.L_5) AND (q_PL_Exp.L_6 = q_CB_Work_UP_without_Coeff.L_6)
GROUP BY q_PL_Exp.rep_Month, q_PL_Exp.P01_Code, q_PL_Exp.L_1, q_PL_Exp.L_2, q_PL_Exp.L_3, q_PL_Exp.L_4, q_PL_Exp.L_5, q_PL_Exp.L_6, q_PL_Exp.up_Curr, C6_Code.Unit, q_CB_Work_UP_without_Coeff.Unit_Price_Planned;

----------------------------------------------------------------------------------------------------
q_CB_UP_Coeff
SELECT q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.PC AS up_pr_Code, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.R_1_Code AS up_rs_L1, q_CB_Res_UP_Market_Coeff.R_2_Code AS up_rs_L2, q_CB_Res_UP_Market_Coeff.R_3_Code AS up_rs_L3, q_CB_Res_UP_Market_Coeff.R_4_Code AS up_rs_L4, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.up_Cost_Coeff, q_CB_Curr_Escalation_Rates.k_USD, q_CB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_CB_Res_UP_Market_Coeff.up_Cost, q_CB_Res_UP_Market_Coeff.Currency AS rs_Currency, q_CB_Res_UP_Market_Coeff.Key_Full, q_CB_Res_UP_Market_Coeff.An_rs_quantity, q_CB_Res_UP_Market_Coeff.Key_R_PC_L6
FROM q_CB_Res_UP_Market_Coeff LEFT JOIN q_CB_Curr_Escalation_Rates ON q_CB_Res_UP_Market_Coeff.Key_Full_Comb = q_CB_Curr_Escalation_Rates.Key_Full_Comb
GROUP BY q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.R_1_Code, q_CB_Res_UP_Market_Coeff.R_2_Code, q_CB_Res_UP_Market_Coeff.R_3_Code, q_CB_Res_UP_Market_Coeff.R_4_Code, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.up_Cost_Coeff, q_CB_Curr_Escalation_Rates.k_USD, q_CB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_CB_Res_UP_Market_Coeff.up_Cost, q_CB_Res_UP_Market_Coeff.Currency, q_CB_Res_UP_Market_Coeff.Key_Full, q_CB_Res_UP_Market_Coeff.An_rs_quantity, q_CB_Res_UP_Market_Coeff.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_UP_Coeff_Mod
SELECT q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.PC AS up_pr_Code, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.R_1_Code AS up_rs_L1, q_CB_Res_UP_Market_Coeff_Mod.R_2_Code AS up_rs_L2, q_CB_Res_UP_Market_Coeff_Mod.R_3_Code AS up_rs_L3, q_CB_Res_UP_Market_Coeff_Mod.R_4_Code AS up_rs_L4, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.up_Cost_Coeff, q_CB_Curr_Escalation_Rates_Mod.k_USD, q_CB_Curr_Escalation_Rates_Mod.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_CB_Res_UP_Market_Coeff_Mod.up_Cost, q_CB_Res_UP_Market_Coeff_Mod.Currency AS rs_Currency, q_CB_Res_UP_Market_Coeff_Mod.Key_Full, q_CB_Res_UP_Market_Coeff_Mod.An_rs_quantity, q_CB_Res_UP_Market_Coeff_Mod.Key_R_PC_L6, q_CB_Res_UP_Market_Coeff_Mod.g_Month AS [Month]
FROM q_CB_Res_UP_Market_Coeff_Mod LEFT JOIN q_CB_Curr_Escalation_Rates_Mod ON q_CB_Res_UP_Market_Coeff_Mod.Key_Full_Comb = q_CB_Curr_Escalation_Rates_Mod.Key_Full_Comb
GROUP BY q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.R_1_Code, q_CB_Res_UP_Market_Coeff_Mod.R_2_Code, q_CB_Res_UP_Market_Coeff_Mod.R_3_Code, q_CB_Res_UP_Market_Coeff_Mod.R_4_Code, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.up_Cost_Coeff, q_CB_Curr_Escalation_Rates_Mod.k_USD, q_CB_Curr_Escalation_Rates_Mod.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_CB_Res_UP_Market_Coeff_Mod.up_Cost, q_CB_Res_UP_Market_Coeff_Mod.Currency, q_CB_Res_UP_Market_Coeff_Mod.Key_Full, q_CB_Res_UP_Market_Coeff_Mod.An_rs_quantity, q_CB_Res_UP_Market_Coeff_Mod.Key_R_PC_L6, q_CB_Res_UP_Market_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_Pre_Coeff_ActiveM_Indexes
SELECT q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices.rs_L1, q_CB_Analysis_ActiveM_With_Prices.rs_L2, q_CB_Analysis_ActiveM_With_Prices.rs_L3, q_CB_Analysis_ActiveM_With_Prices.rs_L4, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Electricity, q_CB_Analysis_ActiveM_With_Prices.Currency AS rs_Currency, q_CB_Analysis_ActiveM_With_Prices.An_rs_quantity, q_CB_Analysis_ActiveM_With_Prices.up_Cost, q_CB_Analysis_ActiveM_With_Prices.Key_R4_Simple, q_CB_Analysis_ActiveM_With_Prices.Key_R4, q_CB_Analysis_ActiveM_With_Prices.Key_R_PC_L6, q_CB_Analysis_ActiveM_With_Prices.Key_Full
FROM q_CB_Analysis_ActiveM_With_Prices LEFT JOIN t_CB_Indexes ON (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = t_CB_Indexes.g_Month) AND (q_CB_Analysis_ActiveM_With_Prices.rep_Month = t_CB_Indexes.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod
SELECT q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R4, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R_PC_L6, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_Full, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R4_Simple, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L1, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L2, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L3, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L4, t_AC_Indexes_Mod.bb_UFE, t_AC_Indexes_Mod.bb_TUFE, t_AC_Indexes_Mod.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_EUR, t_AC_Indexes_Mod.bb_Metal, t_AC_Indexes_Mod.bb_Petrol, t_AC_Indexes_Mod.bb_Cement, t_AC_Indexes_Mod.bb_Electricity, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_Currency, q_CB_Analysis_ActiveM_With_Prices_Mod.An_rs_quantity, q_CB_Analysis_ActiveM_With_Prices_Mod.up_Cost
FROM q_CB_Analysis_ActiveM_With_Prices_Mod LEFT JOIN t_AC_Indexes_Mod ON (q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon = t_AC_Indexes_Mod.g_Month) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month = t_AC_Indexes_Mod.rep_Month)
ORDER BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Curr_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_with_Curr_Coeff.UP) AS SumOfUP
SELECT q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.rs_Currency
FROM q_CB_Work_UP_with_Curr_Coeff
GROUP BY q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.rs_Currency
ORDER BY q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.Month
PIVOT q_CB_Work_UP_with_Curr_Coeff.Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Curr_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_with_Curr_Coeff_Mod.UP) AS SumOfUP
SELECT q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency
FROM q_CB_Work_UP_with_Curr_Coeff_Mod
GROUP BY q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency
ORDER BY q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.Month
PIVOT q_CB_Work_UP_with_Curr_Coeff_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Market_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_CB_Work_UP_with_Market_Coeff.rep_Month, q_CB_Work_UP_with_Market_Coeff.PC, q_CB_Work_UP_with_Market_Coeff.L_1, q_CB_Work_UP_with_Market_Coeff.L_2, q_CB_Work_UP_with_Market_Coeff.L_3, q_CB_Work_UP_with_Market_Coeff.L_4, q_CB_Work_UP_with_Market_Coeff.L_5, q_CB_Work_UP_with_Market_Coeff.L_6, q_CB_Work_UP_with_Market_Coeff.Currency
FROM q_CB_Work_UP_with_Market_Coeff
GROUP BY q_CB_Work_UP_with_Market_Coeff.rep_Month, q_CB_Work_UP_with_Market_Coeff.PC, q_CB_Work_UP_with_Market_Coeff.L_1, q_CB_Work_UP_with_Market_Coeff.L_2, q_CB_Work_UP_with_Market_Coeff.L_3, q_CB_Work_UP_with_Market_Coeff.L_4, q_CB_Work_UP_with_Market_Coeff.L_5, q_CB_Work_UP_with_Market_Coeff.L_6, q_CB_Work_UP_with_Market_Coeff.Currency
PIVOT q_CB_Work_UP_with_Market_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Market_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_with_Market_Coeff_Mod.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency
FROM q_CB_Work_UP_with_Market_Coeff_Mod
GROUP BY q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency
PIVOT q_CB_Work_UP_with_Market_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_without_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_without_Coeff.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_CB_Work_UP_without_Coeff.rep_Month, q_CB_Work_UP_without_Coeff.PC, q_CB_Work_UP_without_Coeff.L_1, q_CB_Work_UP_without_Coeff.L_2, q_CB_Work_UP_without_Coeff.L_3, q_CB_Work_UP_without_Coeff.L_4, q_CB_Work_UP_without_Coeff.L_5, q_CB_Work_UP_without_Coeff.L_6, q_CB_Work_UP_without_Coeff.rs_Currency
FROM q_CB_Work_UP_without_Coeff
GROUP BY q_CB_Work_UP_without_Coeff.rep_Month, q_CB_Work_UP_without_Coeff.PC, q_CB_Work_UP_without_Coeff.L_1, q_CB_Work_UP_without_Coeff.L_2, q_CB_Work_UP_without_Coeff.L_3, q_CB_Work_UP_without_Coeff.L_4, q_CB_Work_UP_without_Coeff.L_5, q_CB_Work_UP_without_Coeff.L_6, q_CB_Work_UP_without_Coeff.rs_Currency
PIVOT q_CB_Work_UP_without_Coeff.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_UP_without_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_without_Coeff_Mod.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency
FROM q_CB_Work_UP_without_Coeff_Mod
GROUP BY q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency
PIVOT q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff
SELECT q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_CB_Curr_Escalation_Rates.rs_currency
FROM q_CB_Analysis_ActiveM_With_Prices LEFT JOIN q_CB_Curr_Escalation_Rates ON (q_CB_Analysis_ActiveM_With_Prices.rep_Month = q_CB_Curr_Escalation_Rates.rep_Month) AND (q_CB_Analysis_ActiveM_With_Prices.PC = q_CB_Curr_Escalation_Rates.PC) AND (q_CB_Analysis_ActiveM_With_Prices.L_1 = q_CB_Curr_Escalation_Rates.L_1) AND (q_CB_Analysis_ActiveM_With_Prices.L_2 = q_CB_Curr_Escalation_Rates.L_2) AND (q_CB_Analysis_ActiveM_With_Prices.L_3 = q_CB_Curr_Escalation_Rates.L_3) AND (q_CB_Analysis_ActiveM_With_Prices.L_4 = q_CB_Curr_Escalation_Rates.L_4) AND (q_CB_Analysis_ActiveM_With_Prices.L_5 = q_CB_Curr_Escalation_Rates.L_5) AND (q_CB_Analysis_ActiveM_With_Prices.L_6 = q_CB_Curr_Escalation_Rates.L_6) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L1 = q_CB_Curr_Escalation_Rates.rs_L1) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L2 = q_CB_Curr_Escalation_Rates.rs_L2) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L3 = q_CB_Curr_Escalation_Rates.rs_L3) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L4 = q_CB_Curr_Escalation_Rates.rs_L4) AND (q_CB_Analysis_ActiveM_With_Prices.currency = q_CB_Curr_Escalation_Rates.rs_currency) AND (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = q_CB_Curr_Escalation_Rates.Month)
GROUP BY q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, q_CB_Curr_Escalation_Rates.rs_currency
ORDER BY q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff_Diff
SELECT q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency, q_CB_Work_UP_with_Curr_Coeff_Mod.Month, q_CB_Work_UP_with_Curr_Coeff.UP AS UP_Orj, q_CB_Work_UP_with_Curr_Coeff_Mod.UP AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_with_Curr_Coeff_Mod LEFT JOIN q_CB_Work_UP_with_Curr_Coeff ON (q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency = q_CB_Work_UP_with_Curr_Coeff.rs_Currency) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.Month = q_CB_Work_UP_with_Curr_Coeff.Month) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_6 = q_CB_Work_UP_with_Curr_Coeff.L_6) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_5 = q_CB_Work_UP_with_Curr_Coeff.L_5) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_4 = q_CB_Work_UP_with_Curr_Coeff.L_4) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_3 = q_CB_Work_UP_with_Curr_Coeff.L_3) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_2 = q_CB_Work_UP_with_Curr_Coeff.L_2) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_1 = q_CB_Work_UP_with_Curr_Coeff.L_1) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.PC = q_CB_Work_UP_with_Curr_Coeff.PC) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month = q_CB_Work_UP_with_Curr_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff_Mod
SELECT q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_CB_Curr_Escalation_Rates_Mod.rs_Currency
FROM q_CB_Analysis_ActiveM_With_Prices_Mod LEFT JOIN q_CB_Curr_Escalation_Rates_Mod ON (q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month = q_CB_Curr_Escalation_Rates_Mod.rep_Month) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.PC = q_CB_Curr_Escalation_Rates_Mod.PC) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_1 = q_CB_Curr_Escalation_Rates_Mod.L_1) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_2 = q_CB_Curr_Escalation_Rates_Mod.L_2) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_3 = q_CB_Curr_Escalation_Rates_Mod.L_3) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_4 = q_CB_Curr_Escalation_Rates_Mod.L_4) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_5 = q_CB_Curr_Escalation_Rates_Mod.L_5) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_6 = q_CB_Curr_Escalation_Rates_Mod.L_6) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L1 = q_CB_Curr_Escalation_Rates_Mod.rs_L1) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L2 = q_CB_Curr_Escalation_Rates_Mod.rs_L2) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L3 = q_CB_Curr_Escalation_Rates_Mod.rs_L3) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L4 = q_CB_Curr_Escalation_Rates_Mod.rs_L4) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_Currency = q_CB_Curr_Escalation_Rates_Mod.rs_Currency) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon = q_CB_Curr_Escalation_Rates_Mod.Month)
GROUP BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Curr_Escalation_Rates_Mod.rs_Currency
ORDER BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff
SELECT q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_CB_Res_UP_Market_Coeff.Currency
FROM q_CB_Res_UP_Market_Coeff
GROUP BY q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff_Diff
SELECT q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency, q_CB_Work_UP_with_Market_Coeff_Mod.g_Month, q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff AS UP_Orj, q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_with_Market_Coeff_Mod LEFT JOIN q_CB_Work_UP_with_Market_Coeff ON (q_CB_Work_UP_with_Market_Coeff_Mod.g_Month = q_CB_Work_UP_with_Market_Coeff.g_Month) AND (q_CB_Work_UP_with_Market_Coeff_Mod.Currency = q_CB_Work_UP_with_Market_Coeff.Currency) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_6 = q_CB_Work_UP_with_Market_Coeff.L_6) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_5 = q_CB_Work_UP_with_Market_Coeff.L_5) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_4 = q_CB_Work_UP_with_Market_Coeff.L_4) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_3 = q_CB_Work_UP_with_Market_Coeff.L_3) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_2 = q_CB_Work_UP_with_Market_Coeff.L_2) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_1 = q_CB_Work_UP_with_Market_Coeff.L_1) AND (q_CB_Work_UP_with_Market_Coeff_Mod.PC = q_CB_Work_UP_with_Market_Coeff.PC) AND (q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month = q_CB_Work_UP_with_Market_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff_Mod
SELECT q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_CB_Res_UP_Market_Coeff_Mod.Currency
FROM q_CB_Res_UP_Market_Coeff_Mod
GROUP BY q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff_Diff
SELECT q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency, q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Orj, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_without_Coeff_Mod LEFT JOIN q_CB_Work_UP_without_Coeff ON (q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon = q_CB_Work_UP_without_Coeff.Exp_CB_Mon) AND (q_CB_Work_UP_without_Coeff_Mod.rs_Currency = q_CB_Work_UP_without_Coeff.rs_Currency) AND (q_CB_Work_UP_without_Coeff_Mod.L_6 = q_CB_Work_UP_without_Coeff.L_6) AND (q_CB_Work_UP_without_Coeff_Mod.L_5 = q_CB_Work_UP_without_Coeff.L_5) AND (q_CB_Work_UP_without_Coeff_Mod.L_4 = q_CB_Work_UP_without_Coeff.L_4) AND (q_CB_Work_UP_without_Coeff_Mod.L_3 = q_CB_Work_UP_without_Coeff.L_3) AND (q_CB_Work_UP_without_Coeff_Mod.L_2 = q_CB_Work_UP_without_Coeff.L_2) AND (q_CB_Work_UP_without_Coeff_Mod.L_1 = q_CB_Work_UP_without_Coeff.L_1) AND (q_CB_Work_UP_without_Coeff_Mod.PC = q_CB_Work_UP_without_Coeff.PC) AND (q_CB_Work_UP_without_Coeff_Mod.rep_Month = q_CB_Work_UP_without_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff_Mod
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency;

----------------------------------------------------------------------------------------------------
q_Date_Selected
SELECT TOP 1 *
FROM (SELECT TOP 18 * FROM [t_Rnd_Budget_Active_Dates] ORDER BY t_Rnd_Budget_Active_Dates.Date_Active DESC )  AS t
ORDER BY t_Rnd_Budget_Active_Dates.Date_Active;

----------------------------------------------------------------------------------------------------
q_Exp_Diff_Curr
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr, Sum([q_CB_Exp].[Total_Expense]-[q_BB_Exp].[Total_Expense]) AS Diff
FROM q_CB_Exp LEFT JOIN q_BB_Exp ON (q_CB_Exp.up_Curr = q_BB_Exp.up_Curr) AND (q_CB_Exp.Month = q_BB_Exp.Exp_Base_Mon) AND (q_CB_Exp.L_6 = q_BB_Exp.L_6) AND (q_CB_Exp.L_5 = q_BB_Exp.L_5) AND (q_CB_Exp.L_4 = q_BB_Exp.L_4) AND (q_CB_Exp.L_3 = q_BB_Exp.L_3) AND (q_CB_Exp.L_2 = q_BB_Exp.L_2) AND (q_CB_Exp.L_1 = q_BB_Exp.L_1) AND (q_CB_Exp.P01_Code = q_BB_Exp.PC) AND (q_CB_Exp.rep_Month = q_BB_Exp.rep_Month)
WHERE (((q_CB_Exp.Month)<=DLookUp("[Last_Month]","[q_Rep_Month_Max]")))
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr;

----------------------------------------------------------------------------------------------------
q_Exp_Diff_Full
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr, Sum([q_CB_Exp].[Total_Expense]-[q_BB_Exp].[Total_Expense]) AS Diff
FROM q_CB_Exp LEFT JOIN q_BB_Exp ON (q_CB_Exp.up_Curr = q_BB_Exp.up_Curr) AND (q_CB_Exp.Month = q_BB_Exp.Exp_Base_Mon) AND (q_CB_Exp.L_6 = q_BB_Exp.L_6) AND (q_CB_Exp.L_5 = q_BB_Exp.L_5) AND (q_CB_Exp.L_4 = q_BB_Exp.L_4) AND (q_CB_Exp.L_3 = q_BB_Exp.L_3) AND (q_CB_Exp.L_2 = q_BB_Exp.L_2) AND (q_CB_Exp.L_1 = q_BB_Exp.L_1) AND (q_CB_Exp.P01_Code = q_BB_Exp.PC) AND (q_CB_Exp.rep_Month = q_BB_Exp.rep_Month)
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr;

----------------------------------------------------------------------------------------------------
q_First_Budget_GT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeGT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseGT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitGT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency
HAVING t_CB_Profit_USD_ST.rep_Month="2206";

----------------------------------------------------------------------------------------------------
q_First_Budget_RT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeRT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseRT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitRT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.rep_Month="2206"AND t_CB_Profit_USD_ST.Month<=[Forms]![Comparison_Screen]![cmb_AllProject_Curr_Month];

----------------------------------------------------------------------------------------------------
q_First_Budget_RT_Grouped
SELECT q_First_Budget_RT.rep_Month, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr, Sum(q_First_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_First_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_First_Budget_RT.ProfitRT) AS ProfitRT
FROM q_First_Budget_RT
GROUP BY q_First_Budget_RT.rep_Month, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_First_Budget_RT_Grouped_Projects
SELECT q_First_Budget_RT.rep_Month, q_First_Budget_RT.PC, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr, Sum(q_First_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_First_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_First_Budget_RT.ProfitRT) AS ProfitRT
FROM q_First_Budget_RT
GROUP BY q_First_Budget_RT.rep_Month, q_First_Budget_RT.PC, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_L6_Code_Selection
SELECT TOP 1 *
FROM (SELECT TOP 2597 * FROM [C6_Code] ORDER BY [Code_L6] )  AS t
ORDER BY [Code_L6] DESC;

----------------------------------------------------------------------------------------------------
q_L6_Selected
SELECT TOP 1 *
FROM (SELECT TOP 5 * FROM [t_Rnd_Budget_L6] ORDER BY t_Rnd_Budget_L6.L_1 DESC,t_Rnd_Budget_L6.L_2 DESC,t_Rnd_Budget_L6.L_3 DESC,t_Rnd_Budget_L6.L_4 DESC,t_Rnd_Budget_L6.L_5 DESC,t_Rnd_Budget_L6.L_6 DESC)  AS t
ORDER BY t_Rnd_Budget_L6.L_1, t_Rnd_Budget_L6.L_2, t_Rnd_Budget_L6.L_3, t_Rnd_Budget_L6.L_4, t_Rnd_Budget_L6.L_5, t_Rnd_Budget_L6.L_6;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates
SELECT
		*

	FROM 
		q_Monthly_Rates_EUR_TRY

	

UNION SELECT
		*

	FROM 
		q_Monthly_Rates_USD_TRY;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_AP
INSERT INTO t_Monthly_Curr_Rates_Mod ( [Month], Constant, Rate, Budget_Curr, rep_Month )
SELECT q_Monthly_Curr_Rates.Month, q_Monthly_Curr_Rates.Constant, q_Monthly_Curr_Rates.Rate, q_Monthly_Curr_Rates.Budget_Curr, q_Monthly_Curr_Rates.rep_Month
FROM q_Monthly_Curr_Rates
WHERE (((q_Monthly_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Diff
SELECT q_Monthly_Curr_Rates_Mod_CrossTab.Month, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_EUR_TRY-Mon_Curr_Rates.r_EUR_TRY) AS EUR_TRY, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_TRY_EUR-Mon_Curr_Rates.r_TRY_EUR) AS TRY_EUR, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_USD_TRY-Mon_Curr_Rates.r_USD_TRY) AS USD_TRY, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_TRY_USD-Mon_Curr_Rates.r_TRY_USD) AS TRY_USD, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_EUR_USD-Mon_Curr_Rates.r_EUR_USD) AS EUR_USD, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_USD_EUR-Mon_Curr_Rates.r_USD_EUR) AS USD_EUR, Mon_Curr_Rates.rep_Month
FROM q_Monthly_Curr_Rates_Mod_CrossTab INNER JOIN Mon_Curr_Rates ON q_Monthly_Curr_Rates_Mod_CrossTab.Month = Mon_Curr_Rates.Month
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_CrossTab
TRANSFORM Sum(q_Monthly_Curr_Rates_Mod_Union.Rate) AS SumOfRate
SELECT q_Monthly_Curr_Rates_Mod_Union.Month
FROM q_Monthly_Curr_Rates_Mod_Union
GROUP BY q_Monthly_Curr_Rates_Mod_Union.Month
PIVOT q_Monthly_Curr_Rates_Mod_Union.Constant;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_Delete
DELETE t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.rep_Month, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_EUR_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_TRY
SELECT t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod
WHERE (((t_Monthly_Curr_Rates_Mod.Constant)="r_EUR_TRY") AND ((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_TRY_Graph
SELECT t_Monthly_Curr_Rates_ST.Constant, t_Monthly_Curr_Rates_ST.Rate, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_ST.Budget_Curr, t_Monthly_Curr_Rates_ST.Month
FROM t_Monthly_Curr_Rates_ST INNER JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant)
WHERE (((t_Monthly_Curr_Rates_ST.Constant)="r_EUR_TRY") AND ((t_Monthly_Curr_Rates_ST.Month)>=#1/1/2022#));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_EUR_TRY.Month, Round([q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate]/[q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate],6) AS Rate, "r_EUR_USD" AS Constant, q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_EUR_TRY INNER JOIN q_Monthly_Curr_Rates_Mod_USD_TRY ON q_Monthly_Curr_Rates_Mod_EUR_TRY.Month = q_Monthly_Curr_Rates_Mod_USD_TRY.Month
WHERE (((q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_EUR_TRY.Month, Round(1/[q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate],6) AS Rate, "r_TRY_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_EUR_TRY
WHERE (((q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_TRY
SELECT "TRY" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_TRY_TRY" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_USD_TRY.Month, Round(1/[q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate],6) AS Rate, "r_TRY_USD" AS Constant, q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_USD_TRY
WHERE (((q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_Union
SELECT 
		*
	FROM 
q_Monthly_Curr_Rates_Mod_EUR_EUR
		
UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_EUR_TRY

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_EUR_USD


UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_EUR

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_TRY

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_USD

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_EUR

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_TRY

UNION SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_USD;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_USD_TRY.Month, Round([q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate]/[q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate],6) AS Rate, "r_USD_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_USD_TRY LEFT JOIN q_Monthly_Curr_Rates_Mod_EUR_TRY ON q_Monthly_Curr_Rates_Mod_USD_TRY.Month = q_Monthly_Curr_Rates_Mod_EUR_TRY.Month
WHERE (((q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_TRY
SELECT t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod
WHERE (((t_Monthly_Curr_Rates_Mod.Constant)="r_USD_TRY") AND ((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_TRY_Graph
SELECT t_Monthly_Curr_Rates_ST.Constant, t_Monthly_Curr_Rates_ST.Rate, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_ST.Budget_Curr, t_Monthly_Curr_Rates_ST.Month
FROM t_Monthly_Curr_Rates_ST INNER JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant)
WHERE (((t_Monthly_Curr_Rates_ST.Constant)="r_USD_TRY") AND ((t_Monthly_Curr_Rates_ST.Month)>=#1/1/2022#));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_USD_USD" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_MT
SELECT q_Monthly_Curr_Rates.Constant, q_Monthly_Curr_Rates.Budget_Curr, q_Monthly_Curr_Rates.Month, q_Monthly_Curr_Rates.Rate, q_Monthly_Curr_Rates.rep_Month INTO t_Monthly_Curr_Rates_ST
FROM q_Monthly_Curr_Rates
WHERE (((q_Monthly_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_EUR_TRY
SELECT Mon_Curr_Rates.Month, "r_EUR_TRY" AS Constant, Mon_Curr_Rates.r_EUR_TRY AS Rate, "TRY" AS Budget_Curr, Mon_Curr_Rates.rep_Month
FROM Mon_Curr_Rates
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_Upd_Mod
UPDATE t_Monthly_Curr_Rates_ST LEFT JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.Budget_Curr = t_Monthly_Curr_Rates_Mod.Budget_Curr) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) SET t_Monthly_Curr_Rates_Mod.Constant = [t_Monthly_Curr_Rates_ST].[Constant], t_Monthly_Curr_Rates_Mod.Budget_Curr = [t_Monthly_Curr_Rates_ST].[Budget_Curr], t_Monthly_Curr_Rates_Mod.[Month] = [t_Monthly_Curr_Rates_ST].[Month], t_Monthly_Curr_Rates_Mod.Rate = [t_Monthly_Curr_Rates_ST].[Rate], t_Monthly_Curr_Rates_Mod.rep_Month = [t_Monthly_Curr_Rates_ST].[rep_Month]
WHERE (((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_USD_TRY
SELECT Mon_Curr_Rates.Month, "r_USD_TRY" AS Constant, Mon_Curr_Rates.r_USD_TRY AS Rate, "TRY" AS Budget_Curr, Mon_Curr_Rates.rep_Month
FROM Mon_Curr_Rates
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_PL_Analysis_Comp
SELECT t_BB_Analysis_Add.P01_Code, t_BB_Analysis_Add.rs_L1, t_BB_Analysis_Add.rs_L2, t_BB_Analysis_Add.rs_L3, t_BB_Analysis_Add.rs_L4, t_BB_Analysis_Add.Analysis_Date, t_BB_Analysis.P01_Code
FROM t_BB_Analysis_Add LEFT JOIN t_BB_Analysis ON (t_BB_Analysis_Add.Analysis_Date = t_BB_Analysis.Analysis_Date) AND (t_BB_Analysis_Add.rs_L4 = t_BB_Analysis.rs_L4) AND (t_BB_Analysis_Add.rs_L3 = t_BB_Analysis.rs_L3) AND (t_BB_Analysis_Add.rs_L2 = t_BB_Analysis.rs_L2) AND (t_BB_Analysis_Add.rs_L1 = t_BB_Analysis.rs_L1) AND (t_BB_Analysis_Add.P01_Code = t_BB_Analysis.P01_Code)
WHERE (((t_BB_Analysis.P01_Code) Is Null));

----------------------------------------------------------------------------------------------------
q_PL_Coeff_Export
SELECT t_PL_Analysis.P01_Code, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
FROM R4_Code LEFT JOIN t_PL_Analysis ON (R4_Code.R_1_Code = t_PL_Analysis.rs_L1) AND (R4_Code.R_2_Code = t_PL_Analysis.rs_L2) AND (R4_Code.R_3_Code = t_PL_Analysis.rs_L3) AND (R4_Code.R_4_Code = t_PL_Analysis.rs_L4)
GROUP BY t_PL_Analysis.P01_Code, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
HAVING (((t_PL_Analysis.P01_Code) Is Not Null));

----------------------------------------------------------------------------------------------------
q_PL_Exp
SELECT q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.P01_Code, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.Month, Sum(([Exp_CB_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_CB_Unit_Price.up_Curr, t_CB_qty.Key_R_PC_L6
FROM q_CB_Unit_Price LEFT JOIN t_CB_qty ON (q_CB_Unit_Price.Key_R_PC_L6 = t_CB_qty.Key_R_PC_L6) AND (q_CB_Unit_Price.Month = t_CB_qty.Exp_CB_Mon)
GROUP BY q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.P01_Code, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.Month, q_CB_Unit_Price.up_Curr, t_CB_qty.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_PL_Exp_Mod
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.Month, Sum(([Exp_CB_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Key_R_PC_L6
FROM q_CB_Unit_Price_Mod LEFT JOIN t_CB_Qty ON (q_CB_Unit_Price_Mod.g_Month = t_CB_Qty.Exp_CB_Mon) AND (q_CB_Unit_Price_Mod.Key_R_PC_L6 = t_CB_Qty.Key_R_PC_L6)
GROUP BY q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.Month, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_PL_Indexes
SELECT t_CB_Indexes.rep_Month, t_CB_Indexes.g_Month, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Electricity, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE
FROM t_CB_Indexes
WHERE (((t_CB_Indexes.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_R4_Code_Pool
SELECT R4_Code.R_1_Code, R4_Code.R_2_Code, R4_Code.R_3_Code, R4_Code.R_4_Code, R4_Code.Currency
FROM R4_Code
ORDER BY R4_Code.R_1_Code DESC , R4_Code.R_2_Code DESC , R4_Code.R_3_Code DESC , R4_Code.R_4_Code DESC;

----------------------------------------------------------------------------------------------------
q_R4_Code_Selection
SELECT TOP 1 *
FROM (SELECT TOP 297 * FROM [q_R4_Code_Pool] ORDER BY R4_Code.R_1_Code ,R4_Code.R_2_Code ,R4_Code.R_3_Code ,R4_Code.R_4_Code )  AS t
ORDER BY R4_Code.R_1_Code DESC , R4_Code.R_2_Code DESC , R4_Code.R_3_Code DESC , R4_Code.R_4_Code DESC;

----------------------------------------------------------------------------------------------------
q_R4_Filtered
SELECT t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4
FROM t_Rnd_Budget_R4
GROUP BY t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4
ORDER BY t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4;

----------------------------------------------------------------------------------------------------
q_R4_Selected_For_Up
SELECT TOP 1 *
FROM (SELECT TOP 5 * FROM [q_R4_Filtered] ORDER BY q_R4_Filtered.R_1 DESC,q_R4_Filtered.R_2 DESC,q_R4_Filtered.R_3 DESC,q_R4_Filtered.R_4 DESC)  AS t
ORDER BY q_R4_Filtered.R_1, q_R4_Filtered.R_2, q_R4_Filtered.R_3, q_R4_Filtered.R_4;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Max
SELECT Max(t_Rep_Month.rep_Month_Date) AS Last_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Max_Val
SELECT Max(t_Rep_Month.rep_Month) AS rep_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Order
SELECT t_Rep_Month.rep_Month, t_Rep_Month.rep_Month_Date, DCount("[rep_Month]","[t_Rep_Month]","int([rep_Month])<=" & Int([rep_Month])) AS RowNum
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC , t_Rep_Month.rep_Month_Date DESC;

----------------------------------------------------------------------------------------------------
q_Second_Budget_GT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeGT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseGT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitGT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency
HAVING t_CB_Profit_USD_ST.rep_Month="2207";

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeRT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseRT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitRT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.rep_Month="2207"AND t_CB_Profit_USD_ST.Month<=[Forms]![Comparison_Screen]![cmb_AllProject_Curr_Month];

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT_Grouped
SELECT q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr, Sum(q_Second_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_Second_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_Second_Budget_RT.ProfitRT) AS ProfitRT
FROM q_Second_Budget_RT
GROUP BY q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT_Grouped_Projects
SELECT q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.PC, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr, Sum(q_Second_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_Second_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_Second_Budget_RT.ProfitRT) AS ProfitRT
FROM q_Second_Budget_RT
GROUP BY q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.PC, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
~sq_c01_Login~sq_ccbx_Project
SELECT [01_P01_Projects_Full].P01_S_Name
FROM 01_P01_Projects_Full;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr2
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr3
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Pr4
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c11_Main_Menu_old~sq_ccbx_Project
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_c99_Menu Assets~sq_ccbx_Project
SELECT [Obsolete_P01_Projects].P01_Code, [Obsolete_P01_Projects].P01_S_Name
FROM Obsolete_P01_Projects
ORDER BY [Obsolete_P01_Projects].P01_Code;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_010
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_03
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_04
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_05
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_06
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_07
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_08
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Commodity_09
SELECT t_Coeff_Desc.Description
FROM t_Coeff_Desc
WHERE (((t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_07] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_06] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_05] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_04] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_03] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_02] And (t_Coeff_Desc.Description)<>[Forms]![Analysis_Screen]![cbo_Commodity_01]))
ORDER BY t_Coeff_Desc.Order;

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_010
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_03
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_04
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_05
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_06
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_07
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_08
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_End_09
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_010
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_03
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_04
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_05
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_06
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_07
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_08
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cAnalysis_Screen~sq_ccbo_Date_Start_09
SELECT t_Months.g_Month
FROM t_Months
WHERE (((t_Months.g_Month)>DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_ccbo_date_By_Project
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo578
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo587
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo590
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cBaz Bütçe~sq_cCombo596
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_By_Project
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_Date_Compare_Cons
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_Consolidated
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_date_Project_Based_All
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_cCombo554
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement_Test~sq_cCombo555
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_date_Consolidated
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_date_Project_Based_All
SELECT t_Rep_Month.rep_Month
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC;

----------------------------------------------------------------------------------------------------
~sq_cManagement~sq_ccbo_Project
SELECT q_Budget_Project_Months.Name AS r03_S_Name, q_Budget_Project_Months.PC AS P_Code
FROM q_Budget_Project_Months
GROUP BY q_Budget_Project_Months.Name, q_Budget_Project_Months.PC;

----------------------------------------------------------------------------------------------------
~sq_cScenario_Screen~sq_ccbo_Project
SELECT [t_001_Projects].[r03_S_Name], [t_001_Projects].[p_Code]
FROM t_001_Projects;

----------------------------------------------------------------------------------------------------
~sq_cTech_Office~sq_ccmb_Project_Name
SELECT t_001_Projects.r03_S_Name
FROM q_Budget_Project_Months LEFT JOIN t_001_Projects ON q_Budget_Project_Months.PC = t_001_Projects.p_Code;

----------------------------------------------------------------------------------------------------
~sq_dReport1~sq_dc_bb_Metal
SELECT DISTINCTROW *
FROM t_AC_Indexes_Mod;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_AllProjects_Compare_Detailed
SELECT q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L2, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Second_Data_GT, q_CB_Sum_Projects_Report_Data.Second_Data_RT, q_CB_Sum_Projects_Report_Data.First_Data_GT, q_CB_Sum_Projects_Report_Data.First_Data_RT, q_CB_Sum_Projects_Report_Data.Second_Data_REM, q_CB_Sum_Projects_Report_Data.First_Data_REM, q_CB_Sum_Projects_Report_Data.GT_REM, q_CB_Sum_Projects_Report_Data.RT_REM, q_CB_Sum_Projects_Report_Data.REM_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, t_001_Projects.r03_S_Name, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb
FROM q_CB_Sum_Projects_Report_Data LEFT JOIN t_001_Projects ON q_CB_Sum_Projects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L2, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Second_Data_GT, q_CB_Sum_Projects_Report_Data.Second_Data_RT, q_CB_Sum_Projects_Report_Data.First_Data_GT, q_CB_Sum_Projects_Report_Data.First_Data_RT, q_CB_Sum_Projects_Report_Data.Second_Data_REM, q_CB_Sum_Projects_Report_Data.First_Data_REM, q_CB_Sum_Projects_Report_Data.GT_REM, q_CB_Sum_Projects_Report_Data.RT_REM, q_CB_Sum_Projects_Report_Data.REM_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, t_001_Projects.r03_S_Name, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6];

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_AllProjects_Compare_Lvl_5
SELECT q_CB_Sum_Projects_Report_Data_Lvl_5.PC, q_CB_Sum_Projects_Report_Data_Lvl_5.L_1, q_CB_Sum_Projects_Report_Data_Lvl_5.L_2, q_CB_Sum_Projects_Report_Data_Lvl_5.L_3, q_CB_Sum_Projects_Report_Data_Lvl_5.L_4, q_CB_Sum_Projects_Report_Data_Lvl_5.L_5, q_CB_Sum_Projects_Report_Data_Lvl_5.L_6, q_CB_Sum_Projects_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.GT_REM, [First_Data_RT]-[Second_Data_RT] AS RT_REM, [First_Data_REM]-[Second_Data_REM] AS REM_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L5
FROM q_CB_Sum_Projects_Report_Data_Lvl_5 LEFT JOIN t_001_Projects ON q_CB_Sum_Projects_Report_Data_Lvl_5.PC = t_001_Projects.p_Code
GROUP BY q_CB_Sum_Projects_Report_Data_Lvl_5.PC, q_CB_Sum_Projects_Report_Data_Lvl_5.L_1, q_CB_Sum_Projects_Report_Data_Lvl_5.L_2, q_CB_Sum_Projects_Report_Data_Lvl_5.L_3, q_CB_Sum_Projects_Report_Data_Lvl_5.L_4, q_CB_Sum_Projects_Report_Data_Lvl_5.L_5, q_CB_Sum_Projects_Report_Data_Lvl_5.L_6, q_CB_Sum_Projects_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L3, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L6, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_GT, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_RT, q_CB_Sum_Projects_Report_Data_Lvl_5.Second_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.First_Data_REM, q_CB_Sum_Projects_Report_Data_Lvl_5.GT_REM, [First_Data_RT]-[Second_Data_RT], [First_Data_REM]-[Second_Data_REM], q_CB_Sum_Projects_Report_Data_Lvl_5.Budget_Type, t_001_Projects.r03_S_Name, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Projects_Report_Data_Lvl_5.Desc_TR_L5;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.up_Curr, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data.GT_REM) AS GT_REM, Sum(q_CB_Sum_Cons_Report_Data.RT_REM) AS RT_REM, Sum(q_CB_Sum_Cons_Report_Data.REM_REM) AS REM_REM, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] AS L5_Comb
FROM q_CB_Sum_Cons_Report_Data
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Budget_Type, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5]
ORDER BY Sum(q_CB_Sum_Cons_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Lvl_4
SELECT q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) AS GT_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4
FROM q_CB_Sum_Cons_Report_Data_Lvl_4
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Compare_Lvl_5
SELECT q_CB_Sum_Cons_Report_Data_Lvl_5.L_1, q_CB_Sum_Cons_Report_Data_Lvl_5.L_2, q_CB_Sum_Cons_Report_Data_Lvl_5.L_3, q_CB_Sum_Cons_Report_Data_Lvl_5.L_4, q_CB_Sum_Cons_Report_Data_Lvl_5.up_Curr, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_5.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.GT_REM) AS GT_REM, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_5.L_5, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L5
FROM q_CB_Sum_Cons_Report_Data_Lvl_5
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_5.L_1, q_CB_Sum_Cons_Report_Data_Lvl_5.L_2, q_CB_Sum_Cons_Report_Data_Lvl_5.L_3, q_CB_Sum_Cons_Report_Data_Lvl_5.L_4, q_CB_Sum_Cons_Report_Data_Lvl_5.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_5.Budget_Type, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_5.L_5, q_CB_Sum_Cons_Report_Data_Lvl_5.Desc_TR_L5
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_5.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_Cons_Report_Data.Currency AS up_Curr, q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.L_6, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.L_6, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L6, [IncomeGT]-[IncomeRT], [ExpenseGT]-[ExpenseRT], [ProfitGT]-[ProfitRT];

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Lvl_4
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, C4_Code.Desc_TR_L4
FROM q_CB_Cons_Report_Data LEFT JOIN C4_Code ON (q_CB_Cons_Report_Data.L_4 = C4_Code.c_L4) AND (q_CB_Cons_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Data.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4
ORDER BY Sum(q_CB_Cons_Report_Data.ProfitGT) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Sum_Cons_Lvl_5
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency AS up_Curr, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, q_CB_Cons_Report_Data.L_5, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM (q_CB_Cons_Report_Data LEFT JOIN C5_Code ON (q_CB_Cons_Report_Data.L_5 = C5_Code.c_L5) AND (q_CB_Cons_Report_Data.L_4 = C5_Code.c_L4) AND (q_CB_Cons_Report_Data.L_3 = C5_Code.c_L3) AND (q_CB_Cons_Report_Data.L_2 = C5_Code.c_L2) AND (q_CB_Cons_Report_Data.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_CB_Cons_Report_Data.L_1 = C4_Code.c_L1) AND (q_CB_Cons_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Data.L_4 = C4_Code.c_L4)
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.Currency, q_CB_Cons_Report_Data.Desc_TR_L2, q_CB_Cons_Report_Data.Desc_TR_L3, q_CB_Cons_Report_Data.L_5, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
ORDER BY Sum(q_CB_Cons_Report_Data.ProfitGT) DESC;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Detailed
SELECT [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS L6_Comb, q_CB_AllProjects_Report_Data.Currency AS up_Curr, q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.L_6, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.Desc_TR_L6, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], q_CB_AllProjects_Report_Data.Currency, q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.L_6, q_CB_AllProjects_Report_Data.Desc_TR_L2, q_CB_AllProjects_Report_Data.Desc_TR_L3, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Lvl_4
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM (q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code) LEFT JOIN C4_Code ON (q_CB_AllProjects_Report_Data.L_4 = C4_Code.c_L4) AND (q_CB_AllProjects_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_1 = C4_Code.c_L1)
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, q_CB_AllProjects_Report_Data.Desc_TR_L3, C4_Code.Desc_TR_L4, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_CB_Summary_Lvl_5
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM ((q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code) LEFT JOIN C4_Code ON (q_CB_AllProjects_Report_Data.L_1 = C4_Code.c_L1) AND (q_CB_AllProjects_Report_Data.L_2 = C4_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_3 = C4_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_4 = C4_Code.c_L4)) LEFT JOIN C5_Code ON (q_CB_AllProjects_Report_Data.L_1 = C5_Code.c_L1) AND (q_CB_AllProjects_Report_Data.L_2 = C5_Code.c_L2) AND (q_CB_AllProjects_Report_Data.L_3 = C5_Code.c_L3) AND (q_CB_AllProjects_Report_Data.L_4 = C5_Code.c_L4) AND (q_CB_AllProjects_Report_Data.L_5 = C5_Code.c_L5)
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.PC, t_001_Projects.r03_S_Name, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency;

----------------------------------------------------------------------------------------------------
~sq_rr_Updates
SELECT t_Update_Data.ID, t_Update_Data.Update_Ver, t_Update_Data.Update_Topic, t_Update_Data.Update_Data, t_Update_Data.Update_Date
FROM t_Update_Data;

----------------------------------------------------------------------------------------------------
~TMPCLP51753
SELECT t_BB_Indexes.g_Month, Log([r_UFE]+1) AS rr_UFE, Log([r_TUFE]+1) AS rr_TUFE, Log([r_INF_USD]+1) AS rr_INF_USD, Log([r_INF_EUR]+1) AS rr_INF_EUR, Log([r_Metal]+1) AS rr_Metal, Log([r_Petrol]+1) AS rr_Petrol, Log([r_Cement]+1) AS rr_Cement, Log([r_Electricity]+1) AS rr_Electricity, t_BB_Indexes.e_Year AS Expr1
FROM t_BB_Indexes;

----------------------------------------------------------------------------------------------------
~TMPCLP51901
SELECT t_Months.g_Month, IIf(Year([g_Month])>2022,(1+[r_Metal])^(Month([g_Month])/12)*[fr_Metal],(1+[r_Metal])^(Month([g_Month])/12))-1 AS bb_Metal, IIf(Year([g_Month])>2022,(1+[r_Electricity])^(Month([g_Month])/12)*[fr_Electricity],(1+[r_Electricity])^(Month([g_Month])/12))-1 AS bb_Electricity, IIf(Year([g_Month])>2022,(1+[r_Cement])^(Month([g_Month])/12)*[fr_Cement],(1+[r_Cement])^(Month([g_Month])/12))-1 AS bb_Cement, IIf(Year([g_Month])>2022,(1+[r_Petrol])^(Month([g_Month])/12)*[fr_Petrol],(1+[r_Petrol])^(Month([g_Month])/12))-1 AS bb_Petrol, IIf(Year([g_Month])>2022,(1+[r_INF_USD])^(Month([g_Month])/12)*[fr_INF_USD],(1+[r_INF_USD])^(Month([g_Month])/12))-1 AS bb_INF_USD, IIf(Year([g_Month])>2022,(1+[r_INF_EUR])^(Month([g_Month])/12)*[fr_INF_EUR],(1+[r_INF_EUR])^(Month([g_Month])/12))-1 AS bb_INF_EUR, IIf(Year([g_Month])>2022,(1+[r_UFE])^(Month([g_Month])/12)*[fr_UFE],(1+[r_UFE])^(Month([g_Month])/12))-1 AS bb_UFE, IIf(Year([g_Month])>2022,(1+[r_TUFE])^(Month([g_Month])/12)*[fr_TUFE],(1+[r_TUFE])^(Month([g_Month])/12))-1 AS bb_TUFE
FROM (t_Months LEFT JOIN t_BB_Indexes ON t_Months.g_Year=t_BB_Indexes.[g_Month]) LEFT JOIN q_BB_Indexes_P ON t_Months.g_Year = q_BB_Indexes_P.e_Year;

----------------------------------------------------------------------------------------------------
q_AC_BB_Exp_Crosstab
TRANSFORM Sum(t_AC_BB_Exp.Exp_AC_Exp) AS SumOfExp_AC_Exp
SELECT t_AC_BB_Exp.rep_Month, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.up_curr
FROM t_AC_BB_Exp
GROUP BY t_AC_BB_Exp.rep_Month, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.up_curr
PIVOT t_AC_BB_Exp.Exp_AC_Mon;

----------------------------------------------------------------------------------------------------
q_AC_BB_Exp_LastM
SELECT Max(t_AC_BB_Exp.Exp_AC_Mon) AS LastM, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.rep_Month
FROM t_AC_BB_Exp
GROUP BY t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.rep_Month;

----------------------------------------------------------------------------------------------------
q_AC_Exp_Crosstab
TRANSFORM Sum(t_AC_Exp.Exp_AC_Exp) AS SumOfExp_AC_Exp
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.up_curr
FROM t_AC_Exp
GROUP BY t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.up_curr
PIVOT t_AC_Exp.Exp_AC_Mon;

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Delete_Mod
DELETE t_AC_Indexes_Mod.rep_Month, t_AC_Indexes_Mod.g_Month, t_AC_Indexes_Mod.bb_Metal, t_AC_Indexes_Mod.bb_Electricity, t_AC_Indexes_Mod.bb_Cement, t_AC_Indexes_Mod.bb_Petrol, t_AC_Indexes_Mod.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_EUR, t_AC_Indexes_Mod.bb_UFE, t_AC_Indexes_Mod.bb_TUFE
FROM t_AC_Indexes_Mod;

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Graph
SELECT t_CB_Indexes.bb_Metal, t_AC_Indexes_Mod.bb_Metal, t_CB_Indexes.bb_Electricity, t_AC_Indexes_Mod.bb_Electricity, t_CB_Indexes.bb_Cement, t_AC_Indexes_Mod.bb_Cement, t_CB_Indexes.bb_Petrol, t_AC_Indexes_Mod.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_AC_Indexes_Mod.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_AC_Indexes_Mod.bb_UFE, t_CB_Indexes.bb_TUFE, t_AC_Indexes_Mod.bb_TUFE, t_CB_Indexes.g_Month
FROM t_CB_Indexes RIGHT JOIN t_AC_Indexes_Mod ON (t_CB_Indexes.rep_Month = t_AC_Indexes_Mod.rep_Month) AND (t_CB_Indexes.g_Month = t_AC_Indexes_Mod.g_Month)
WHERE (((t_CB_Indexes.g_Month)>#1/1/2022#) AND ((t_AC_Indexes_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Mod_AP
INSERT INTO t_AC_Indexes_Mod ( rep_Month, g_Month, bb_Metal, bb_Electricity, bb_Cement, bb_Petrol, bb_INF_USD, bb_INF_EUR, bb_UFE, bb_TUFE )
SELECT t_CB_Indexes.rep_Month, t_CB_Indexes.g_Month, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Electricity, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE
FROM t_CB_Indexes
WHERE (((t_CB_Indexes.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_AC_Indexes_Reset
UPDATE t_AC_Indexes_Mod LEFT JOIN t_CB_Indexes ON (t_AC_Indexes_Mod.rep_Month = t_CB_Indexes.rep_Month) AND (t_AC_Indexes_Mod.g_Month = t_CB_Indexes.g_Month) SET t_AC_Indexes_Mod.g_Month = [t_CB_Indexes].[g_Month], t_AC_Indexes_Mod.bb_Metal = [t_CB_Indexes].[bb_Metal], t_AC_Indexes_Mod.bb_Electricity = [t_CB_Indexes].[bb_Electricity], t_AC_Indexes_Mod.bb_Cement = [t_CB_Indexes].[bb_Cement], t_AC_Indexes_Mod.bb_Petrol = [t_CB_Indexes].[bb_Petrol], t_AC_Indexes_Mod.bb_INF_USD = [t_CB_Indexes].[bb_INF_USD], t_AC_Indexes_Mod.bb_INF_EUR = [t_CB_Indexes].[bb_INF_EUR], t_AC_Indexes_Mod.bb_UFE = [t_CB_Indexes].[bb_UFE], t_AC_Indexes_Mod.bb_TUFE = [t_CB_Indexes].[bb_TUFE], t_AC_Indexes_Mod.rep_Month = [t_CB_Indexes].[rep_Month]
WHERE (((t_AC_Indexes_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Active_Rep_Month
SELECT Max(t_Rep_Month.rep_Month) AS Active_rep_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_BB_Active_Months_Res_Qty
SELECT t_BB_Analysis.rep_Month, t_BB_Analysis.P01_Code AS PC, q_BB_Qty_ActiveM_Works.Exp_Base_Mon, (1+[r_loss])*[t_BB_Analysis].[An_rs_quantity] AS An_rs_quantity, t_BB_Analysis.Key_R4, q_BB_Qty_ActiveM_Works.Key_R_PC_L6, t_BB_Analysis.Key_Full, t_BB_Analysis.L_1, t_BB_Analysis.L_2, t_BB_Analysis.L_3, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, t_BB_Analysis.L_4, t_BB_Analysis.L_5, t_BB_Analysis.L_6, t_BB_Analysis.Key_R4_Simple, t_BB_Analysis.r_loss
FROM q_BB_Qty_ActiveM_Works LEFT JOIN t_BB_Analysis ON q_BB_Qty_ActiveM_Works.Key_R_PC_L6 = t_BB_Analysis.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Analysis_ActiveM_With_Prices
SELECT q_BB_Active_Months_Res_Qty.rep_Month, q_BB_Active_Months_Res_Qty.PC, q_BB_Active_Months_Res_Qty.Exp_Base_Mon, q_BB_Active_Months_Res_Qty.An_rs_quantity, q_BB_Active_Months_Res_Qty.Key_R4, q_BB_Active_Months_Res_Qty.Key_R_PC_L6, q_BB_Active_Months_Res_Qty.Key_Full, t_PL_Res_UP.up_Cost, q_BB_Active_Months_Res_Qty.L_1, q_BB_Active_Months_Res_Qty.L_2, q_BB_Active_Months_Res_Qty.L_3, q_BB_Active_Months_Res_Qty.L_4, q_BB_Active_Months_Res_Qty.L_5, q_BB_Active_Months_Res_Qty.L_6, q_BB_Active_Months_Res_Qty.rs_L1, q_BB_Active_Months_Res_Qty.rs_L2, q_BB_Active_Months_Res_Qty.rs_L3, q_BB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency, q_BB_Active_Months_Res_Qty.Key_R4_Simple
FROM (q_BB_Active_Months_Res_Qty LEFT JOIN t_PL_Res_UP ON q_BB_Active_Months_Res_Qty.Key_R4 = t_PL_Res_UP.Key_R4) LEFT JOIN R4_Code ON q_BB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_BB_Analysis_Comp
SELECT t_BB_Analysis_Add.P01_Code, t_BB_Analysis_Add.rs_L1, t_BB_Analysis_Add.rs_L2, t_BB_Analysis_Add.rs_L3, t_BB_Analysis_Add.rs_L4, t_BB_Analysis_Add.Analysis_Date, t_BB_Analysis.P01_Code
FROM t_BB_Analysis_Add LEFT JOIN t_BB_Analysis ON (t_BB_Analysis_Add.Analysis_Date = t_BB_Analysis.Analysis_Date) AND (t_BB_Analysis_Add.rs_L4 = t_BB_Analysis.rs_L4) AND (t_BB_Analysis_Add.rs_L3 = t_BB_Analysis.rs_L3) AND (t_BB_Analysis_Add.rs_L2 = t_BB_Analysis.rs_L2) AND (t_BB_Analysis_Add.rs_L1 = t_BB_Analysis.rs_L1) AND (t_BB_Analysis_Add.P01_Code = t_BB_Analysis.P01_Code)
WHERE (((t_BB_Analysis.P01_Code) Is Null));

----------------------------------------------------------------------------------------------------
q_BB_Coeff_Export
SELECT t_BB_Analysis.P01_Code, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
FROM R4_Code LEFT JOIN t_BB_Analysis ON (R4_Code.R_4_Code = t_BB_Analysis.rs_L4) AND (R4_Code.R_3_Code = t_BB_Analysis.rs_L3) AND (R4_Code.R_2_Code = t_BB_Analysis.rs_L2) AND (R4_Code.R_1_Code = t_BB_Analysis.rs_L1)
GROUP BY t_BB_Analysis.P01_Code, t_BB_Analysis.rs_L1, t_BB_Analysis.rs_L2, t_BB_Analysis.rs_L3, t_BB_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
HAVING (((t_BB_Analysis.P01_Code) Is Not Null));

----------------------------------------------------------------------------------------------------
q_BB_Curr_Base_Month
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_BB_Curr_Base_Val
SELECT q_BB_Curr_Base_Month.rep_Month, q_BB_Curr_Base_Month.rep_Month_Date, t_BB_Mon_Curr_Rates.r_EUR_EUR, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_TRY_EUR, t_BB_Mon_Curr_Rates.r_TRY_TRY, t_BB_Mon_Curr_Rates.r_TRY_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, t_BB_Mon_Curr_Rates.r_USD_USD, q_BB_Curr_Base_Month.PC
FROM q_BB_Curr_Base_Month LEFT JOIN t_BB_Mon_Curr_Rates ON (q_BB_Curr_Base_Month.PC = t_BB_Mon_Curr_Rates.P_Code) AND (q_BB_Curr_Base_Month.rep_Month_Date = t_BB_Mon_Curr_Rates.Month) AND (q_BB_Curr_Base_Month.rep_Month = t_BB_Mon_Curr_Rates.rep_Month)
GROUP BY q_BB_Curr_Base_Month.rep_Month, q_BB_Curr_Base_Month.rep_Month_Date, t_BB_Mon_Curr_Rates.r_EUR_EUR, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_TRY_EUR, t_BB_Mon_Curr_Rates.r_TRY_TRY, t_BB_Mon_Curr_Rates.r_TRY_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, t_BB_Mon_Curr_Rates.r_USD_USD, q_BB_Curr_Base_Month.PC;

----------------------------------------------------------------------------------------------------
q_BB_Curr_Escalation_Rates
SELECT q_BB_Active_Months_Res_Qty.rep_Month, q_BB_Active_Months_Res_Qty.PC, q_BB_Active_Months_Res_Qty.L_1, q_BB_Active_Months_Res_Qty.L_2, q_BB_Active_Months_Res_Qty.L_3, q_BB_Active_Months_Res_Qty.L_4, q_BB_Active_Months_Res_Qty.L_5, q_BB_Active_Months_Res_Qty.L_6, q_BB_Active_Months_Res_Qty.Exp_Base_Mon AS [Month], q_BB_Active_Months_Res_Qty.rs_L1, q_BB_Active_Months_Res_Qty.rs_L2, q_BB_Active_Months_Res_Qty.rs_L3, q_BB_Active_Months_Res_Qty.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_BB_Active_Months_Res_Qty.Key_R4_Simple, q_BB_Active_Months_Res_Qty.Key_Full, q_BB_Active_Months_Res_Qty.Key_R_PC_L6, q_BB_Active_Months_Res_Qty.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_BB_Active_Months_Res_Qty LEFT JOIN q_BB_Monthly_Curr_Rates_Inc ON (q_BB_Active_Months_Res_Qty.Exp_Base_Mon = q_BB_Monthly_Curr_Rates_Inc.Exp_Base_Mon) AND (q_BB_Active_Months_Res_Qty.PC = q_BB_Monthly_Curr_Rates_Inc.PC) AND (q_BB_Active_Months_Res_Qty.rep_Month = q_BB_Monthly_Curr_Rates_Inc.rep_Month)) LEFT JOIN R4_Code ON q_BB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_BB_Exp
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6, q_BB_Unit_Price.g_Month AS Exp_Base_Mon, Sum(([Exp_Base_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.Key_R_PC_L6
FROM t_BB_Qty RIGHT JOIN q_BB_Unit_Price ON (t_BB_Qty.PC = q_BB_Unit_Price.P01_Code) AND (t_BB_Qty.L_1 = q_BB_Unit_Price.L_1) AND (t_BB_Qty.L_2 = q_BB_Unit_Price.L_2) AND (t_BB_Qty.L_3 = q_BB_Unit_Price.L_3) AND (t_BB_Qty.L_4 = q_BB_Unit_Price.L_4) AND (t_BB_Qty.L_5 = q_BB_Unit_Price.L_5) AND (t_BB_Qty.L_6 = q_BB_Unit_Price.L_6) AND (t_BB_Qty.Exp_Base_Mon = q_BB_Unit_Price.g_Month) AND (t_BB_Qty.rep_Month = q_BB_Unit_Price.rep_Month)
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6, q_BB_Unit_Price.g_Month, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Exp_EUR_With_Dummy.EUR_Expense) AS SumOfEUR_Expense
SELECT q_BB_Exp_EUR_With_Dummy.rep_Month, q_BB_Exp_EUR_With_Dummy.PC, q_BB_Exp_EUR_With_Dummy.L_1, q_BB_Exp_EUR_With_Dummy.L_2, q_BB_Exp_EUR_With_Dummy.L_3, q_BB_Exp_EUR_With_Dummy.L_4, q_BB_Exp_EUR_With_Dummy.L_5, q_BB_Exp_EUR_With_Dummy.L_6, q_BB_Exp_EUR_With_Dummy.up_curr_Conv
FROM q_BB_Exp_EUR_With_Dummy
GROUP BY q_BB_Exp_EUR_With_Dummy.rep_Month, q_BB_Exp_EUR_With_Dummy.PC, q_BB_Exp_EUR_With_Dummy.L_1, q_BB_Exp_EUR_With_Dummy.L_2, q_BB_Exp_EUR_With_Dummy.L_3, q_BB_Exp_EUR_With_Dummy.L_4, q_BB_Exp_EUR_With_Dummy.L_5, q_BB_Exp_EUR_With_Dummy.L_6, q_BB_Exp_EUR_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Exp_TRY_With_Dummy.TRY_Expense) AS SumOfTRY_Expense
SELECT q_BB_Exp_TRY_With_Dummy.rep_Month, q_BB_Exp_TRY_With_Dummy.PC, q_BB_Exp_TRY_With_Dummy.L_1, q_BB_Exp_TRY_With_Dummy.L_2, q_BB_Exp_TRY_With_Dummy.L_3, q_BB_Exp_TRY_With_Dummy.L_4, q_BB_Exp_TRY_With_Dummy.L_5, q_BB_Exp_TRY_With_Dummy.L_6, q_BB_Exp_TRY_With_Dummy.up_curr_Conv
FROM q_BB_Exp_TRY_With_Dummy
GROUP BY q_BB_Exp_TRY_With_Dummy.rep_Month, q_BB_Exp_TRY_With_Dummy.PC, q_BB_Exp_TRY_With_Dummy.L_1, q_BB_Exp_TRY_With_Dummy.L_2, q_BB_Exp_TRY_With_Dummy.L_3, q_BB_Exp_TRY_With_Dummy.L_4, q_BB_Exp_TRY_With_Dummy.L_5, q_BB_Exp_TRY_With_Dummy.L_6, q_BB_Exp_TRY_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Exp_USD_With_Dummy.USD_Expense) AS SumOfUSD_Expense
SELECT q_BB_Exp_USD_With_Dummy.rep_Month, q_BB_Exp_USD_With_Dummy.PC, q_BB_Exp_USD_With_Dummy.L_1, q_BB_Exp_USD_With_Dummy.L_2, q_BB_Exp_USD_With_Dummy.L_3, q_BB_Exp_USD_With_Dummy.L_4, q_BB_Exp_USD_With_Dummy.L_5, q_BB_Exp_USD_With_Dummy.L_6, q_BB_Exp_USD_With_Dummy.up_curr_Conv
FROM q_BB_Exp_USD_With_Dummy
GROUP BY q_BB_Exp_USD_With_Dummy.rep_Month, q_BB_Exp_USD_With_Dummy.PC, q_BB_Exp_USD_With_Dummy.L_1, q_BB_Exp_USD_With_Dummy.L_2, q_BB_Exp_USD_With_Dummy.L_3, q_BB_Exp_USD_With_Dummy.L_4, q_BB_Exp_USD_With_Dummy.L_5, q_BB_Exp_USD_With_Dummy.L_6, q_BB_Exp_USD_With_Dummy.up_curr_Conv
PIVOT q_BB_Exp_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Dist_With_Dummy
TRANSFORM Sum(q_BB_Exp_With_Dummy.Total_Expense) AS SumOfTotal_Expense
SELECT q_BB_Exp_With_Dummy.rep_Month, q_BB_Exp_With_Dummy.PC, q_BB_Exp_With_Dummy.L_1, q_BB_Exp_With_Dummy.L_2, q_BB_Exp_With_Dummy.L_3, q_BB_Exp_With_Dummy.L_4, q_BB_Exp_With_Dummy.L_5, q_BB_Exp_With_Dummy.L_6, q_BB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_BB_Exp_With_Dummy
GROUP BY q_BB_Exp_With_Dummy.rep_Month, q_BB_Exp_With_Dummy.PC, q_BB_Exp_With_Dummy.L_1, q_BB_Exp_With_Dummy.L_2, q_BB_Exp_With_Dummy.L_3, q_BB_Exp_With_Dummy.L_4, q_BB_Exp_With_Dummy.L_5, q_BB_Exp_With_Dummy.L_6, q_BB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_BB_Exp_With_Dummy.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR_MT
SELECT q_BB_Exp_EUR.rep_Month, q_BB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_EUR.Month, q_BB_Exp_EUR.L_1, q_BB_Exp_EUR.L_2, q_BB_Exp_EUR.L_3, q_BB_Exp_EUR.L_4, q_BB_Exp_EUR.L_5, q_BB_Exp_EUR.L_6, q_BB_Exp_EUR.EUR_Expense, q_BB_Exp_EUR.up_Curr_Conv, q_BB_Exp_EUR.Key_R_PC_L6 INTO t_BB_Exp_EUR_ST
FROM q_BB_Exp_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Exp_EUR.L_1 = C3_Code.c_L1) AND (q_BB_Exp_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Exp_EUR.L_3 = C3_Code.c_L3)
GROUP BY q_BB_Exp_EUR.rep_Month, q_BB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_EUR.Month, q_BB_Exp_EUR.L_1, q_BB_Exp_EUR.L_2, q_BB_Exp_EUR.L_3, q_BB_Exp_EUR.L_4, q_BB_Exp_EUR.L_5, q_BB_Exp_EUR.L_6, q_BB_Exp_EUR.EUR_Expense, q_BB_Exp_EUR.up_Curr_Conv, q_BB_Exp_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_EUR_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_EUR

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Total
SELECT 
		*
	FROM 
q_BB_Exp
		
UNION ALL SELECT 
		*
	FROM 
		t_AC_BB_Exp;

----------------------------------------------------------------------------------------------------
q_BB_Exp_Total_MT
SELECT q_BB_Exp_Total.rep_Month, q_BB_Exp_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_Total.Exp_Base_Mon AS [Month], q_BB_Exp_Total.Total_Expense, q_BB_Exp_Total.up_Curr, q_BB_Exp_Total.L_1, q_BB_Exp_Total.L_2, q_BB_Exp_Total.L_3, q_BB_Exp_Total.L_4, q_BB_Exp_Total.L_5, q_BB_Exp_Total.L_6, q_BB_Exp_Total.Key_R_PC_L6 INTO t_BB_Exp_Total_ST
FROM q_BB_Exp_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Exp_Total.L_1 = C3_Code.c_L1) AND (q_BB_Exp_Total.L_2 = C3_Code.c_L2) AND (q_BB_Exp_Total.L_3 = C3_Code.c_L3)
GROUP BY q_BB_Exp_Total.rep_Month, q_BB_Exp_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_Total.Exp_Base_Mon, q_BB_Exp_Total.Total_Expense, q_BB_Exp_Total.up_Curr, q_BB_Exp_Total.L_1, q_BB_Exp_Total.L_2, q_BB_Exp_Total.L_3, q_BB_Exp_Total.L_4, q_BB_Exp_Total.L_5, q_BB_Exp_Total.L_6, q_BB_Exp_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY_MT
SELECT q_BB_Exp_TRY.rep_Month, q_BB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_TRY.Month, q_BB_Exp_TRY.L_1, q_BB_Exp_TRY.L_2, q_BB_Exp_TRY.L_3, q_BB_Exp_TRY.L_4, q_BB_Exp_TRY.L_5, q_BB_Exp_TRY.L_6, q_BB_Exp_TRY.TRY_Expense, q_BB_Exp_TRY.up_Curr_Conv, q_BB_Exp_TRY.Key_R_PC_L6 INTO t_BB_Exp_TRY_ST
FROM q_BB_Exp_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Exp_TRY.L_3 = C3_Code.c_L3) AND (q_BB_Exp_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Exp_TRY.L_1 = C3_Code.c_L1)
GROUP BY q_BB_Exp_TRY.rep_Month, q_BB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_TRY.Month, q_BB_Exp_TRY.L_1, q_BB_Exp_TRY.L_2, q_BB_Exp_TRY.L_3, q_BB_Exp_TRY.L_4, q_BB_Exp_TRY.L_5, q_BB_Exp_TRY.L_6, q_BB_Exp_TRY.TRY_Expense, q_BB_Exp_TRY.up_Curr_Conv, q_BB_Exp_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD
SELECT t_BB_Exp_Total_ST.rep_Month, t_BB_Exp_Total_ST.PC, t_BB_Exp_Total_ST.L_1, t_BB_Exp_Total_ST.L_2, t_BB_Exp_Total_ST.L_3, t_BB_Exp_Total_ST.L_4, t_BB_Exp_Total_ST.L_5, t_BB_Exp_Total_ST.L_6, t_BB_Exp_Total_ST.Total_Expense, t_BB_Exp_Total_ST.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="TRY",[Total_Expense]*[r_TRY_USD],[Total_Expense]*[r_EUR_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_BB_Exp_Total_ST.Month AS [Month], t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST LEFT JOIN t_BB_Mon_Curr_Rates ON (t_BB_Exp_Total_ST.Month = t_BB_Mon_Curr_Rates.Month) AND (t_BB_Exp_Total_ST.PC = t_BB_Mon_Curr_Rates.P_Code) AND (t_BB_Exp_Total_ST.rep_Month = t_BB_Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD_MT
SELECT q_BB_Exp_USD.rep_Month, q_BB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_USD.Month, q_BB_Exp_USD.L_1, q_BB_Exp_USD.L_2, q_BB_Exp_USD.L_3, q_BB_Exp_USD.L_4, q_BB_Exp_USD.L_5, q_BB_Exp_USD.L_6, q_BB_Exp_USD.USD_Expense, q_BB_Exp_USD.up_Curr_Conv, q_BB_Exp_USD.Key_R_PC_L6 INTO t_BB_Exp_USD_ST
FROM q_BB_Exp_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Exp_USD.L_3 = C3_Code.c_L3) AND (q_BB_Exp_USD.L_2 = C3_Code.c_L2) AND (q_BB_Exp_USD.L_1 = C3_Code.c_L1)
GROUP BY q_BB_Exp_USD.rep_Month, q_BB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Exp_USD.Month, q_BB_Exp_USD.L_1, q_BB_Exp_USD.L_2, q_BB_Exp_USD.L_3, q_BB_Exp_USD.L_4, q_BB_Exp_USD.L_5, q_BB_Exp_USD.L_6, q_BB_Exp_USD.USD_Expense, q_BB_Exp_USD.up_Curr_Conv, q_BB_Exp_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Exp_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Exp_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Exp_With_Dummy
SELECT 
		*
	FROM 
		q_BB_Exp_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Calculation
SELECT t_BB_Inc_Qty.rep_Month, t_BB_Inc_Qty.PC, t_BB_Inc_Qty.L_1, t_BB_Inc_Qty.L_2, t_BB_Inc_Qty.L_3, t_BB_Inc_Qty.L_4, t_BB_Inc_Qty.L_5, t_BB_Inc_Qty.L_6, t_BB_Inc_Qty.Inc_Base_Mon, IIf([Inc_Rate] Is Null,1,1+[Inc_Rate]) AS Inc_Rate_1, IIf([Inc_Rate_Pcode] Is Null,1,1+[Inc_Rate_Pcode]) AS Inc_Rate_2, t_BB_Inc_WBS.UP, t_BB_Inc_WBS.Currency, [UP]*[Inc_Rate_1]*[Inc_Rate_2] AS UP_Total, t_BB_Inc_Qty.Inc_Base_Qty, [UP_Total]*[Inc_Base_Qty] AS Inc_Total, t_BB_Inc_Qty.Key_R_PC_L6
FROM ((t_BB_Inc_Qty LEFT JOIN t_BB_Inc_Esc_Rates_L6 ON (t_BB_Inc_Qty.rep_Month = t_BB_Inc_Esc_Rates_L6.rep_Month) AND (t_BB_Inc_Qty.PC = t_BB_Inc_Esc_Rates_L6.P01_Code) AND (t_BB_Inc_Qty.L_1 = t_BB_Inc_Esc_Rates_L6.c_L1) AND (t_BB_Inc_Qty.L_2 = t_BB_Inc_Esc_Rates_L6.c_L2) AND (t_BB_Inc_Qty.L_3 = t_BB_Inc_Esc_Rates_L6.c_L3) AND (t_BB_Inc_Qty.L_4 = t_BB_Inc_Esc_Rates_L6.c_L4) AND (t_BB_Inc_Qty.L_5 = t_BB_Inc_Esc_Rates_L6.c_L5) AND (t_BB_Inc_Qty.L_6 = t_BB_Inc_Esc_Rates_L6.c_L6) AND (t_BB_Inc_Qty.Inc_Base_Mon = t_BB_Inc_Esc_Rates_L6.Month)) LEFT JOIN t_BB_Inc_Esc_Rates_Pcode ON (t_BB_Inc_Qty.rep_Month = t_BB_Inc_Esc_Rates_Pcode.rep_Month) AND (t_BB_Inc_Qty.PC = t_BB_Inc_Esc_Rates_Pcode.P01_Code) AND (t_BB_Inc_Qty.Inc_Base_Mon = t_BB_Inc_Esc_Rates_Pcode.Month)) LEFT JOIN t_BB_Inc_WBS ON t_BB_Inc_Qty.Key_R_PC_L6 = t_BB_Inc_WBS.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Inc_EUR_With_Dummy.EUR_Income) AS EUR_Income
SELECT q_BB_Inc_EUR_With_Dummy.rep_Month, q_BB_Inc_EUR_With_Dummy.PC, q_BB_Inc_EUR_With_Dummy.L_1, q_BB_Inc_EUR_With_Dummy.L_2, q_BB_Inc_EUR_With_Dummy.L_3, q_BB_Inc_EUR_With_Dummy.L_4, q_BB_Inc_EUR_With_Dummy.L_5, q_BB_Inc_EUR_With_Dummy.L_6, q_BB_Inc_EUR_With_Dummy.up_curr_Conv
FROM q_BB_Inc_EUR_With_Dummy
GROUP BY q_BB_Inc_EUR_With_Dummy.rep_Month, q_BB_Inc_EUR_With_Dummy.PC, q_BB_Inc_EUR_With_Dummy.L_1, q_BB_Inc_EUR_With_Dummy.L_2, q_BB_Inc_EUR_With_Dummy.L_3, q_BB_Inc_EUR_With_Dummy.L_4, q_BB_Inc_EUR_With_Dummy.L_5, q_BB_Inc_EUR_With_Dummy.L_6, q_BB_Inc_EUR_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Inc_TRY_With_Dummy.TRY_Income) AS TRY_Income
SELECT q_BB_Inc_TRY_With_Dummy.rep_Month, q_BB_Inc_TRY_With_Dummy.PC, q_BB_Inc_TRY_With_Dummy.L_1, q_BB_Inc_TRY_With_Dummy.L_2, q_BB_Inc_TRY_With_Dummy.L_3, q_BB_Inc_TRY_With_Dummy.L_4, q_BB_Inc_TRY_With_Dummy.L_5, q_BB_Inc_TRY_With_Dummy.L_6, q_BB_Inc_TRY_With_Dummy.up_curr_Conv
FROM q_BB_Inc_TRY_With_Dummy
GROUP BY q_BB_Inc_TRY_With_Dummy.rep_Month, q_BB_Inc_TRY_With_Dummy.PC, q_BB_Inc_TRY_With_Dummy.L_1, q_BB_Inc_TRY_With_Dummy.L_2, q_BB_Inc_TRY_With_Dummy.L_3, q_BB_Inc_TRY_With_Dummy.L_4, q_BB_Inc_TRY_With_Dummy.L_5, q_BB_Inc_TRY_With_Dummy.L_6, q_BB_Inc_TRY_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Inc_USD_With_Dummy.USD_Income) AS USD_Income
SELECT q_BB_Inc_USD_With_Dummy.rep_Month, q_BB_Inc_USD_With_Dummy.PC, q_BB_Inc_USD_With_Dummy.L_1, q_BB_Inc_USD_With_Dummy.L_2, q_BB_Inc_USD_With_Dummy.L_3, q_BB_Inc_USD_With_Dummy.L_4, q_BB_Inc_USD_With_Dummy.L_5, q_BB_Inc_USD_With_Dummy.L_6, q_BB_Inc_USD_With_Dummy.up_curr_Conv
FROM q_BB_Inc_USD_With_Dummy
GROUP BY q_BB_Inc_USD_With_Dummy.rep_Month, q_BB_Inc_USD_With_Dummy.PC, q_BB_Inc_USD_With_Dummy.L_1, q_BB_Inc_USD_With_Dummy.L_2, q_BB_Inc_USD_With_Dummy.L_3, q_BB_Inc_USD_With_Dummy.L_4, q_BB_Inc_USD_With_Dummy.L_5, q_BB_Inc_USD_With_Dummy.L_6, q_BB_Inc_USD_With_Dummy.up_curr_Conv
PIVOT q_BB_Inc_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Dist_With_Dummy
TRANSFORM Sum(q_BB_Inc_With_Dummy.Inc_Total) AS Total_Income
SELECT q_BB_Inc_With_Dummy.rep_Month, q_BB_Inc_With_Dummy.PC, q_BB_Inc_With_Dummy.L_1, q_BB_Inc_With_Dummy.L_2, q_BB_Inc_With_Dummy.L_3, q_BB_Inc_With_Dummy.L_4, q_BB_Inc_With_Dummy.L_5, q_BB_Inc_With_Dummy.L_6, q_BB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_BB_Inc_With_Dummy
GROUP BY q_BB_Inc_With_Dummy.rep_Month, q_BB_Inc_With_Dummy.PC, q_BB_Inc_With_Dummy.L_1, q_BB_Inc_With_Dummy.L_2, q_BB_Inc_With_Dummy.L_3, q_BB_Inc_With_Dummy.L_4, q_BB_Inc_With_Dummy.L_5, q_BB_Inc_With_Dummy.L_6, q_BB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_BB_Inc_With_Dummy.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month) AND (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR_MT
SELECT q_BB_Inc_EUR.rep_Month, q_BB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_EUR.Month, q_BB_Inc_EUR.EUR_Income, q_BB_Inc_EUR.up_Curr_Conv, q_BB_Inc_EUR.L_1, q_BB_Inc_EUR.L_2, q_BB_Inc_EUR.L_3, q_BB_Inc_EUR.L_4, q_BB_Inc_EUR.L_5, q_BB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_EUR.Key_R_PC_L6 INTO t_BB_Inc_EUR_ST
FROM (q_BB_Inc_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_BB_Inc_EUR.L_3 = C3_Code.c_L3) AND (q_BB_Inc_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Inc_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Inc_EUR.L_6 = C6_Code.c_L6) AND (q_BB_Inc_EUR.L_5 = C6_Code.c_L5) AND (q_BB_Inc_EUR.L_4 = C6_Code.c_L4) AND (q_BB_Inc_EUR.L_3 = C6_Code.c_L3) AND (q_BB_Inc_EUR.L_2 = C6_Code.c_L2) AND (q_BB_Inc_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Inc_EUR.rep_Month, q_BB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_EUR.Month, q_BB_Inc_EUR.EUR_Income, q_BB_Inc_EUR.up_Curr_Conv, q_BB_Inc_EUR.L_1, q_BB_Inc_EUR.L_2, q_BB_Inc_EUR.L_3, q_BB_Inc_EUR.L_4, q_BB_Inc_EUR.L_5, q_BB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6


FROM 
q_BB_Inc_EUR

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Qty
SELECT *
FROM t_BB_Inc_Qty;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Qty_Crosstab
TRANSFORM Sum(q_BB_Inc_Qty.Inc_Base_Qty) AS Inc_Base_Qty
SELECT q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
FROM q_BB_Inc_Qty
GROUP BY q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
ORDER BY q_BB_Inc_Qty.rep_Month, q_BB_Inc_Qty.PC, q_BB_Inc_Qty.L_1, q_BB_Inc_Qty.L_2, q_BB_Inc_Qty.L_3, q_BB_Inc_Qty.L_4, q_BB_Inc_Qty.L_5, q_BB_Inc_Qty.L_6
PIVOT q_BB_Inc_Qty.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Total
SELECT q_BB_Inc_Calculation.rep_Month, q_BB_Inc_Calculation.PC, q_BB_Inc_Calculation.L_1, q_BB_Inc_Calculation.L_2, q_BB_Inc_Calculation.L_3, q_BB_Inc_Calculation.L_4, q_BB_Inc_Calculation.L_5, q_BB_Inc_Calculation.L_6, q_BB_Inc_Calculation.Inc_Base_Mon, Sum(q_BB_Inc_Calculation.Inc_Total) AS Inc_Total, q_BB_Inc_Calculation.Currency, q_BB_Inc_Calculation.Key_R_PC_L6
FROM q_BB_Inc_Calculation
GROUP BY q_BB_Inc_Calculation.rep_Month, q_BB_Inc_Calculation.PC, q_BB_Inc_Calculation.L_1, q_BB_Inc_Calculation.L_2, q_BB_Inc_Calculation.L_3, q_BB_Inc_Calculation.L_4, q_BB_Inc_Calculation.L_5, q_BB_Inc_Calculation.L_6, q_BB_Inc_Calculation.Inc_Base_Mon, q_BB_Inc_Calculation.Currency, q_BB_Inc_Calculation.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_Total_MT
SELECT q_BB_Inc_Total.rep_Month, q_BB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_Total.Inc_Base_Mon, q_BB_Inc_Total.Inc_Total, q_BB_Inc_Total.Currency, q_BB_Inc_Total.L_1, q_BB_Inc_Total.L_2, q_BB_Inc_Total.L_3, q_BB_Inc_Total.L_4, q_BB_Inc_Total.L_5, q_BB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_Total.Key_R_PC_L6 INTO t_BB_Inc_Total_ST
FROM (q_BB_Inc_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_Total.L_1 = C3_Code.c_L1) AND (q_BB_Inc_Total.L_2 = C3_Code.c_L2) AND (q_BB_Inc_Total.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_Total.L_1 = C6_Code.c_L1) AND (q_BB_Inc_Total.L_2 = C6_Code.c_L2) AND (q_BB_Inc_Total.L_3 = C6_Code.c_L3) AND (q_BB_Inc_Total.L_4 = C6_Code.c_L4) AND (q_BB_Inc_Total.L_5 = C6_Code.c_L5) AND (q_BB_Inc_Total.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_Total.rep_Month, q_BB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_Total.Inc_Base_Mon, q_BB_Inc_Total.Inc_Total, q_BB_Inc_Total.Currency, q_BB_Inc_Total.L_1, q_BB_Inc_Total.L_2, q_BB_Inc_Total.L_3, q_BB_Inc_Total.L_4, q_BB_Inc_Total.L_5, q_BB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_TRY],[Inc_Total]*[r_TRY_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY_MT
SELECT q_BB_Inc_TRY.rep_Month, q_BB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_TRY.Month, q_BB_Inc_TRY.TRY_Income, q_BB_Inc_TRY.up_Curr_Conv, q_BB_Inc_TRY.L_1, q_BB_Inc_TRY.L_2, q_BB_Inc_TRY.L_3, q_BB_Inc_TRY.L_4, q_BB_Inc_TRY.L_5, q_BB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_TRY.Key_R_PC_L6 INTO t_BB_Inc_TRY_ST
FROM (q_BB_Inc_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_TRY.L_1 = C3_Code.c_L1) AND (q_BB_Inc_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Inc_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_TRY.L_1 = C6_Code.c_L1) AND (q_BB_Inc_TRY.L_2 = C6_Code.c_L2) AND (q_BB_Inc_TRY.L_3 = C6_Code.c_L3) AND (q_BB_Inc_TRY.L_4 = C6_Code.c_L4) AND (q_BB_Inc_TRY.L_5 = C6_Code.c_L5) AND (q_BB_Inc_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_TRY.rep_Month, q_BB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_TRY.Month, q_BB_Inc_TRY.TRY_Income, q_BB_Inc_TRY.up_Curr_Conv, q_BB_Inc_TRY.L_1, q_BB_Inc_TRY.L_2, q_BB_Inc_TRY.L_3, q_BB_Inc_TRY.L_4, q_BB_Inc_TRY.L_5, q_BB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Inc_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD
SELECT t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6, t_BB_Inc_Total_ST.Inc_Total, t_BB_Inc_Total_ST.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_USD],[Inc_Total]*[r_USD_USD])) AS USD_Income, "USD" AS up_Curr_Conv, t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month)
ORDER BY t_BB_Inc_Total_ST.rep_Month, t_BB_Inc_Total_ST.PC, t_BB_Inc_Total_ST.L_1, t_BB_Inc_Total_ST.L_2, t_BB_Inc_Total_ST.L_3, t_BB_Inc_Total_ST.L_4, t_BB_Inc_Total_ST.L_5, t_BB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD_MT
SELECT q_BB_Inc_USD.rep_Month, q_BB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_USD.Month, q_BB_Inc_USD.USD_Income, q_BB_Inc_USD.up_Curr_Conv, q_BB_Inc_USD.L_1, q_BB_Inc_USD.L_2, q_BB_Inc_USD.L_3, q_BB_Inc_USD.L_4, q_BB_Inc_USD.L_5, q_BB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_USD.Key_R_PC_L6 INTO t_BB_Inc_USD_ST
FROM (q_BB_Inc_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_BB_Inc_USD.L_1 = C3_Code.c_L1) AND (q_BB_Inc_USD.L_2 = C3_Code.c_L2) AND (q_BB_Inc_USD.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_BB_Inc_USD.L_1 = C6_Code.c_L1) AND (q_BB_Inc_USD.L_2 = C6_Code.c_L2) AND (q_BB_Inc_USD.L_3 = C6_Code.c_L3) AND (q_BB_Inc_USD.L_4 = C6_Code.c_L4) AND (q_BB_Inc_USD.L_5 = C6_Code.c_L5) AND (q_BB_Inc_USD.L_6 = C6_Code.c_L6)
GROUP BY q_BB_Inc_USD.rep_Month, q_BB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Inc_USD.Month, q_BB_Inc_USD.USD_Income, q_BB_Inc_USD.up_Curr_Conv, q_BB_Inc_USD.L_1, q_BB_Inc_USD.L_2, q_BB_Inc_USD.L_3, q_BB_Inc_USD.L_4, q_BB_Inc_USD.L_5, q_BB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_BB_Inc_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Inc_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_BB_Inc_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Inc_With_Dummy
SELECT 
		*
	FROM 
		q_BB_Inc_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Monthly_Curr_Rates_ActiveM
SELECT q_BB_Qty_ActiveM_Works_Monthly.rep_Month, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon
FROM q_BB_Qty_ActiveM_Works_Monthly LEFT JOIN t_BB_Mon_Curr_Rates ON (q_BB_Qty_ActiveM_Works_Monthly.PC = t_BB_Mon_Curr_Rates.P_Code) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = t_BB_Mon_Curr_Rates.rep_Month) AND (q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon = t_BB_Mon_Curr_Rates.Month)
GROUP BY q_BB_Qty_ActiveM_Works_Monthly.rep_Month, t_BB_Mon_Curr_Rates.r_EUR_TRY, t_BB_Mon_Curr_Rates.r_EUR_USD, t_BB_Mon_Curr_Rates.r_USD_EUR, t_BB_Mon_Curr_Rates.r_USD_TRY, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Monthly_Curr_Rates_Inc
SELECT q_BB_Qty_ActiveM_Works_Monthly.rep_Month, q_BB_Qty_ActiveM_Works_Monthly.PC, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_BB_Curr_Base_Val].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_BB_Curr_Base_Val].[r_EUR_USD]-1 AS rt_EUR_USD, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_BB_Curr_Base_Val].[r_USD_TRY]-1 AS rt_USD_TRY, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_BB_Curr_Base_Val].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_BB_Qty_ActiveM_Works_Monthly LEFT JOIN q_BB_Monthly_Curr_Rates_ActiveM ON (q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon = q_BB_Monthly_Curr_Rates_ActiveM.Exp_Base_Mon) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = q_BB_Monthly_Curr_Rates_ActiveM.rep_Month)) LEFT JOIN q_BB_Curr_Base_Val ON (q_BB_Qty_ActiveM_Works_Monthly.PC = q_BB_Curr_Base_Val.PC) AND (q_BB_Qty_ActiveM_Works_Monthly.rep_Month = q_BB_Curr_Base_Val.rep_Month)
GROUP BY q_BB_Qty_ActiveM_Works_Monthly.rep_Month, q_BB_Qty_ActiveM_Works_Monthly.PC, q_BB_Qty_ActiveM_Works_Monthly.Exp_Base_Mon, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_BB_Curr_Base_Val].[r_EUR_TRY]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_BB_Curr_Base_Val].[r_EUR_USD]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_BB_Curr_Base_Val].[r_USD_TRY]-1, [q_BB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_BB_Curr_Base_Val].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_BB_PR_WBS
SELECT t_BB_Inc_Total_ST.rep_Month
	,t_BB_Inc_Total_ST.PC
	,t_BB_Inc_Total_ST.L_1
	,t_BB_Inc_Total_ST.L_2
	,t_BB_Inc_Total_ST.L_3
	,t_BB_Inc_Total_ST.L_4
	,t_BB_Inc_Total_ST.L_5
	,t_BB_Inc_Total_ST.L_6
	,t_BB_Inc_Total_ST.Currency
	,t_BB_Inc_Total_ST.Inc_Base_Mon AS [Month] 
	,t_BB_Inc_Total_ST.Key_R_PC_L6
FROM t_BB_Inc_Total_ST 
GROUP BY t_BB_Inc_Total_ST.rep_Month
	,t_BB_Inc_Total_ST.PC
	,t_BB_Inc_Total_ST.L_1
	,t_BB_Inc_Total_ST.L_2
	,t_BB_Inc_Total_ST.L_3
	,t_BB_Inc_Total_ST.L_4
	,t_BB_Inc_Total_ST.L_5
	,t_BB_Inc_Total_ST.L_6
	,t_BB_Inc_Total_ST.Currency
	,t_BB_Inc_Total_ST.Inc_Base_Mon 
	,t_BB_Inc_Total_ST.Key_R_PC_L6
HAVING (((Sum(t_BB_Inc_Total_ST.[Inc_Total]))<>0)) 
UNION SELECT t_BB_Exp_Total_ST.rep_Month
	,t_BB_Exp_Total_ST.PC
	,t_BB_Exp_Total_ST.L_1
	,t_BB_Exp_Total_ST.L_2
	,t_BB_Exp_Total_ST.L_3
	,t_BB_Exp_Total_ST.L_4
	,t_BB_Exp_Total_ST.L_5
	,t_BB_Exp_Total_ST.L_6
	,t_BB_Exp_Total_ST.up_Curr
	,t_BB_Exp_Total_ST.Month AS [Month] 
	,t_BB_Exp_Total_ST.Key_R_PC_L6
FROM t_BB_Exp_Total_ST 
GROUP BY t_BB_Exp_Total_ST.rep_Month
	,t_BB_Exp_Total_ST.PC
	,t_BB_Exp_Total_ST.L_1
	,t_BB_Exp_Total_ST.L_2
	,t_BB_Exp_Total_ST.L_3
	,t_BB_Exp_Total_ST.L_4
	,t_BB_Exp_Total_ST.L_5
	,t_BB_Exp_Total_ST.L_6
	,t_BB_Exp_Total_ST.up_Curr
	,t_BB_Exp_Total_ST.Month 
	,t_BB_Exp_Total_ST.Key_R_PC_L6	
HAVING (((Sum(t_BB_Exp_Total_ST.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_BB_Profit
SELECT q_BB_PR_WBS.rep_Month, q_BB_PR_WBS.PC, q_BB_PR_WBS.L_1, q_BB_PR_WBS.L_2, q_BB_PR_WBS.L_3, q_BB_PR_WBS.L_4, q_BB_PR_WBS.L_5, q_BB_PR_WBS.L_6, q_BB_PR_WBS.Currency, q_BB_PR_WBS.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_BB_PR_WBS.Key_R_PC_L6
FROM (q_BB_PR_WBS LEFT JOIN t_BB_Inc_Total_ST ON (q_BB_PR_WBS.Currency = t_BB_Inc_Total_ST.Currency) AND (q_BB_PR_WBS.Month = t_BB_Inc_Total_ST.Inc_Base_Mon) AND (q_BB_PR_WBS.Key_R_PC_L6 = t_BB_Inc_Total_ST.Key_R_PC_L6)) LEFT JOIN t_bb_Exp_Total_ST ON (q_BB_PR_WBS.Currency = t_bb_Exp_Total_ST.up_Curr) AND (q_BB_PR_WBS.Month = t_bb_Exp_Total_ST.Month) AND (q_BB_PR_WBS.Key_R_PC_L6 = t_bb_Exp_Total_ST.Key_R_PC_L6)
ORDER BY q_BB_PR_WBS.rep_Month, q_BB_PR_WBS.PC, q_BB_PR_WBS.L_1, q_BB_PR_WBS.L_2, q_BB_PR_WBS.L_3, q_BB_PR_WBS.L_4, q_BB_PR_WBS.L_5, q_BB_PR_WBS.L_6, q_BB_PR_WBS.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_EUR_With_Dummy
TRANSFORM Sum(q_BB_Profit_EUR_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6, q_BB_Profit_EUR_With_Dummy.Curr
FROM q_BB_Profit_EUR_With_Dummy
GROUP BY q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6, q_BB_Profit_EUR_With_Dummy.Curr
ORDER BY q_BB_Profit_EUR_With_Dummy.rep_Month, q_BB_Profit_EUR_With_Dummy.PC, q_BB_Profit_EUR_With_Dummy.L_1, q_BB_Profit_EUR_With_Dummy.L_2, q_BB_Profit_EUR_With_Dummy.L_3, q_BB_Profit_EUR_With_Dummy.L_4, q_BB_Profit_EUR_With_Dummy.L_5, q_BB_Profit_EUR_With_Dummy.L_6
PIVOT q_BB_Profit_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_TRY_With_Dummy
TRANSFORM Sum(q_BB_Profit_TRY_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6, q_BB_Profit_TRY_With_Dummy.Curr
FROM q_BB_Profit_TRY_With_Dummy
GROUP BY q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6, q_BB_Profit_TRY_With_Dummy.Curr
ORDER BY q_BB_Profit_TRY_With_Dummy.rep_Month, q_BB_Profit_TRY_With_Dummy.PC, q_BB_Profit_TRY_With_Dummy.L_1, q_BB_Profit_TRY_With_Dummy.L_2, q_BB_Profit_TRY_With_Dummy.L_3, q_BB_Profit_TRY_With_Dummy.L_4, q_BB_Profit_TRY_With_Dummy.L_5, q_BB_Profit_TRY_With_Dummy.L_6
PIVOT q_BB_Profit_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_USD_With_Dummy
TRANSFORM Sum(q_BB_Profit_USD_With_Dummy.Profit) AS Profit
SELECT q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6, q_BB_Profit_USD_With_Dummy.Curr
FROM q_BB_Profit_USD_With_Dummy
GROUP BY q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6, q_BB_Profit_USD_With_Dummy.Curr
ORDER BY q_BB_Profit_USD_With_Dummy.rep_Month, q_BB_Profit_USD_With_Dummy.PC, q_BB_Profit_USD_With_Dummy.L_1, q_BB_Profit_USD_With_Dummy.L_2, q_BB_Profit_USD_With_Dummy.L_3, q_BB_Profit_USD_With_Dummy.L_4, q_BB_Profit_USD_With_Dummy.L_5, q_BB_Profit_USD_With_Dummy.L_6
PIVOT q_BB_Profit_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Dist_With_Dummy
TRANSFORM Sum(q_BB_Profit_With_Dummy.Profit) AS SumOfProfit
SELECT q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Curr
FROM q_BB_Profit_With_Dummy
GROUP BY q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Curr
ORDER BY q_BB_Profit_With_Dummy.rep_Month, q_BB_Profit_With_Dummy.PC, q_BB_Profit_With_Dummy.L_1, q_BB_Profit_With_Dummy.L_2, q_BB_Profit_With_Dummy.L_3, q_BB_Profit_With_Dummy.L_4, q_BB_Profit_With_Dummy.L_5, q_BB_Profit_With_Dummy.L_6, q_BB_Profit_With_Dummy.Month
PIVOT q_BB_Profit_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "EUR" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Income]*[r_USD_EUR],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Income]*[r_TRY_EUR],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Expense]*[r_USD_EUR],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Expense]*[r_TRY_EUR],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR_MT
SELECT q_BB_Profit_EUR.rep_Month, q_BB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_EUR.Month, q_BB_Profit_EUR.Expense, q_BB_Profit_EUR.Income, q_BB_Profit_EUR.Currency, q_BB_Profit_EUR.L_1, q_BB_Profit_EUR.L_2, q_BB_Profit_EUR.L_3, q_BB_Profit_EUR.L_4, q_BB_Profit_EUR.L_5, q_BB_Profit_EUR.L_6, q_BB_Profit_EUR.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_EUR.Key_R_PC_L6 INTO t_BB_Profit_EUR_ST
FROM ((q_BB_Profit_EUR LEFT JOIN C3_Code ON (q_BB_Profit_EUR.L_3 = C3_Code.c_L3) AND (q_BB_Profit_EUR.L_2 = C3_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_EUR.L_2 = C2_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_EUR.L_6 = C6_Code.c_L6) AND (q_BB_Profit_EUR.L_5 = C6_Code.c_L5) AND (q_BB_Profit_EUR.L_4 = C6_Code.c_L4) AND (q_BB_Profit_EUR.L_3 = C6_Code.c_L3) AND (q_BB_Profit_EUR.L_2 = C6_Code.c_L2) AND (q_BB_Profit_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_EUR.rep_Month, q_BB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_EUR.Month, q_BB_Profit_EUR.Expense, q_BB_Profit_EUR.Income, q_BB_Profit_EUR.Currency, q_BB_Profit_EUR.L_1, q_BB_Profit_EUR.L_2, q_BB_Profit_EUR.L_3, q_BB_Profit_EUR.L_4, q_BB_Profit_EUR.L_5, q_BB_Profit_EUR.L_6, q_BB_Profit_EUR.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_EUR

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_Total_MT
SELECT q_BB_Profit.rep_Month, q_BB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit.Month, q_BB_Profit.Expense, q_BB_Profit.Income, q_BB_Profit.Currency, q_BB_Profit.L_1, q_BB_Profit.L_2, q_BB_Profit.L_3, q_BB_Profit.L_4, q_BB_Profit.L_5, q_BB_Profit.L_6, q_BB_Profit.Profit, C6_Code.Desc_TR_L6, q_BB_Profit.Key_R_PC_L6 INTO t_BB_Profit_Total_ST
FROM ((q_BB_Profit LEFT JOIN C3_Code ON (q_BB_Profit.L_3 = C3_Code.c_L3) AND (q_BB_Profit.L_2 = C3_Code.c_L2) AND (q_BB_Profit.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit.L_2 = C2_Code.c_L2) AND (q_BB_Profit.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit.L_6 = C6_Code.c_L6) AND (q_BB_Profit.L_5 = C6_Code.c_L5) AND (q_BB_Profit.L_4 = C6_Code.c_L4) AND (q_BB_Profit.L_3 = C6_Code.c_L3) AND (q_BB_Profit.L_2 = C6_Code.c_L2) AND (q_BB_Profit.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit.rep_Month, q_BB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit.Month, q_BB_Profit.Expense, q_BB_Profit.Income, q_BB_Profit.Currency, q_BB_Profit.L_1, q_BB_Profit.L_2, q_BB_Profit.L_3, q_BB_Profit.L_4, q_BB_Profit.L_5, q_BB_Profit.L_6, q_BB_Profit.Profit, C6_Code.Desc_TR_L6, q_BB_Profit.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "TRY" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Income]*[r_USD_TRY],IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Income]*[r_EUR_TRY],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="USD",[t_BB_Profit_Total_ST].[Expense]*[r_USD_TRY],IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Expense]*[r_EUR_TRY],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY_MT
SELECT q_BB_Profit_TRY.rep_Month, q_BB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_TRY.Month, q_BB_Profit_TRY.Expense, q_BB_Profit_TRY.Income, q_BB_Profit_TRY.Currency, q_BB_Profit_TRY.L_1, q_BB_Profit_TRY.L_2, q_BB_Profit_TRY.L_3, q_BB_Profit_TRY.L_4, q_BB_Profit_TRY.L_5, q_BB_Profit_TRY.L_6, q_BB_Profit_TRY.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_TRY.Key_R_PC_L6 INTO t_BB_Profit_TRY_ST
FROM ((q_BB_Profit_TRY LEFT JOIN C3_Code ON (q_BB_Profit_TRY.L_3 = C3_Code.c_L3) AND (q_BB_Profit_TRY.L_2 = C3_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_TRY.L_2 = C2_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_TRY.L_6 = C6_Code.c_L6) AND (q_BB_Profit_TRY.L_5 = C6_Code.c_L5) AND (q_BB_Profit_TRY.L_4 = C6_Code.c_L4) AND (q_BB_Profit_TRY.L_3 = C6_Code.c_L3) AND (q_BB_Profit_TRY.L_2 = C6_Code.c_L2) AND (q_BB_Profit_TRY.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_TRY.rep_Month, q_BB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_TRY.Month, q_BB_Profit_TRY.Expense, q_BB_Profit_TRY.Income, q_BB_Profit_TRY.Currency, q_BB_Profit_TRY.L_1, q_BB_Profit_TRY.L_2, q_BB_Profit_TRY.L_3, q_BB_Profit_TRY.L_4, q_BB_Profit_TRY.L_5, q_BB_Profit_TRY.L_6, q_BB_Profit_TRY.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_TRY_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_TRY

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6, t_BB_Profit_Total_ST.Month, "USD" AS [Currency], IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Income]*[r_EUR_USD],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Income]*[r_TRY_USD],[t_BB_Profit_Total_ST].[Income])) AS Income, IIf([t_BB_Profit_Total_ST].[Currency]="EUR",[t_BB_Profit_Total_ST].[Expense]*[r_EUR_USD],IIf([t_BB_Profit_Total_ST].[Currency]="TRY",[t_BB_Profit_Total_ST].[Expense]*[r_TRY_USD],[t_BB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_BB_Profit_Total_ST.Key_R_PC_L6
FROM t_BB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_BB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_BB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_BB_Profit_Total_ST.L_1, t_BB_Profit_Total_ST.L_2, t_BB_Profit_Total_ST.L_3, t_BB_Profit_Total_ST.L_4, t_BB_Profit_Total_ST.L_5, t_BB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD_MT
SELECT q_BB_Profit_USD.rep_Month, q_BB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_USD.Month, q_BB_Profit_USD.Expense, q_BB_Profit_USD.Income, q_BB_Profit_USD.Currency, q_BB_Profit_USD.L_1, q_BB_Profit_USD.L_2, q_BB_Profit_USD.L_3, q_BB_Profit_USD.L_4, q_BB_Profit_USD.L_5, q_BB_Profit_USD.L_6, q_BB_Profit_USD.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_USD.Key_R_PC_L6 INTO t_BB_Profit_USD_ST
FROM ((q_BB_Profit_USD LEFT JOIN C3_Code ON (q_BB_Profit_USD.L_3 = C3_Code.c_L3) AND (q_BB_Profit_USD.L_2 = C3_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_BB_Profit_USD.L_2 = C2_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_BB_Profit_USD.L_6 = C6_Code.c_L6) AND (q_BB_Profit_USD.L_5 = C6_Code.c_L5) AND (q_BB_Profit_USD.L_4 = C6_Code.c_L4) AND (q_BB_Profit_USD.L_3 = C6_Code.c_L3) AND (q_BB_Profit_USD.L_2 = C6_Code.c_L2) AND (q_BB_Profit_USD.L_1 = C6_Code.c_L1)
GROUP BY q_BB_Profit_USD.rep_Month, q_BB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_BB_Profit_USD.Month, q_BB_Profit_USD.Expense, q_BB_Profit_USD.Income, q_BB_Profit_USD.Currency, q_BB_Profit_USD.L_1, q_BB_Profit_USD.L_2, q_BB_Profit_USD.L_3, q_BB_Profit_USD.L_4, q_BB_Profit_USD.L_5, q_BB_Profit_USD.L_6, q_BB_Profit_USD.Profit, C6_Code.Desc_TR_L6, q_BB_Profit_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_Profit_USD_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_BB_Profit_USD

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Profit_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_BB_Profit

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_BB_Project_Months
SELECT t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name AS Name
FROM t_BB_Profit_Total_ST LEFT JOIN t_001_Projects ON t_BB_Profit_Total_ST.PC = t_001_Projects.p_Code
GROUP BY t_BB_Profit_Total_ST.rep_Month, t_BB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name
ORDER BY t_BB_Profit_Total_ST.rep_Month DESC;

----------------------------------------------------------------------------------------------------
q_BB_Qty_ActiveM_Works
SELECT t_BB_Qty.Key_R_PC_L6, t_BB_Qty.Exp_Base_Mon
FROM t_BB_Qty LEFT JOIN t_Rep_Month ON t_BB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_BB_Qty.Exp_Base_Mon)>t_Rep_Month.rep_Month_Date) And ((t_BB_Qty.Exp_Base_Qty)<>0))
ORDER BY t_BB_Qty.Key_R_PC_L6, t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_ActiveM_Works_Monthly
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon
FROM t_BB_Qty LEFT JOIN t_Rep_Month ON t_BB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_BB_Qty.Exp_Base_Mon)>t_Rep_Month.rep_Month_Date) And ((t_BB_Qty.Exp_Base_Qty)<>0))
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon
ORDER BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_Crosstab
TRANSFORM Sum(t_BB_Qty.Exp_Base_Qty) AS SumOfExp_Base_Qty
SELECT t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
FROM t_BB_Qty
GROUP BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
ORDER BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6
PIVOT t_BB_Qty.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Qty_Dummy_Full
SELECT t_Rep_Month.rep_Month, q_Budget_Project_Months.PC AS p_Code, t_BB_Exp_Dummy_Part.L_1, t_BB_Exp_Dummy_Part.L_2, t_BB_Exp_Dummy_Part.L_3, t_BB_Exp_Dummy_Part.L_4, t_BB_Exp_Dummy_Part.L_5, t_BB_Exp_Dummy_Part.L_6, t_Months.g_Month, t_BB_Exp_Dummy_Part.Total_Expense, t_BB_Exp_Dummy_Part.up_Curr, [q_Budget_Project_Months].[rep_Month]+'.'+[PC]+'.'+[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS Key_R_PC_L6
FROM t_Months, t_BB_Exp_Dummy_Part, t_Rep_Month INNER JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY t_Rep_Month.rep_Month, q_Budget_Project_Months.PC, t_BB_Exp_Dummy_Part.L_1, t_BB_Exp_Dummy_Part.L_2, t_BB_Exp_Dummy_Part.L_3, t_BB_Exp_Dummy_Part.L_4, t_BB_Exp_Dummy_Part.L_5, t_BB_Exp_Dummy_Part.L_6, t_Months.g_Month, t_BB_Exp_Dummy_Part.Total_Expense, t_BB_Exp_Dummy_Part.up_Curr, [q_Budget_Project_Months].[rep_Month]+'.'+[PC]+'.'+[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6];

----------------------------------------------------------------------------------------------------
q_BB_Res_UP_Market_Coeff
SELECT q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1 AS R_1_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2 AS R_2_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3 AS R_3_Code, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4 AS R_4_Code, (1+[w_UFE]*[r_UFE])*(1+[w_TUFE]*[r_TUFE])*(1+[w_INF_USD]*[r_INF_USD])*(1+[w_INF_EUR]*[r_INF_EUR])*(1+[w_Metal]*[r_Metal])*(1+[w_Petrol]*[r_Petrol])*(1+[w_Cement]*[r_Cement])*(1+[w_Electricity]*[r_Electricity]) AS up_Cost_Coeff, q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon AS g_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_BB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[exp_base_mon] AS Key_Full_Comb
FROM q_BB_UP_Pre_Coeff_ActiveM_Indexes LEFT JOIN R4_Code ON q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, (1+[w_UFE]*[r_UFE])*(1+[w_TUFE]*[r_TUFE])*(1+[w_INF_USD]*[r_INF_USD])*(1+[w_INF_EUR]*[r_INF_EUR])*(1+[w_Metal]*[r_Metal])*(1+[w_Petrol]*[r_Petrol])*(1+[w_Cement]*[r_Cement])*(1+[w_Electricity]*[r_Electricity]), q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_BB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_BB_UP_Pre_Coeff_ActiveM_Indexes].[exp_base_mon]
ORDER BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.exp_base_mon;

----------------------------------------------------------------------------------------------------
q_BB_Unit_Price
SELECT q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code AS P01_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month AS [Month], q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_BB_UP_Coeff.Key_R_PC_L6
FROM q_BB_UP_Coeff
GROUP BY q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.rs_Currency, q_BB_UP_Coeff.Key_R_PC_L6, q_BB_UP_Coeff.g_Month
ORDER BY q_BB_UP_Coeff.rep_Month, q_BB_UP_Coeff.up_pr_Code, q_BB_UP_Coeff.L_1, q_BB_UP_Coeff.L_2, q_BB_UP_Coeff.L_3, q_BB_UP_Coeff.L_4, q_BB_UP_Coeff.L_5, q_BB_UP_Coeff.L_6, q_BB_UP_Coeff.g_Month, q_BB_UP_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_BB_Unit_Price_Crosstab
TRANSFORM Sum(q_BB_Unit_Price.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_BB_Unit_Price.rep_Month, q_BB_Unit_Price.L_1, q_BB_Unit_Price.L_2, q_BB_Unit_Price.L_3, q_BB_Unit_Price.L_4, q_BB_Unit_Price.L_5, q_BB_Unit_Price.L_6, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.P01_Code
FROM q_BB_Unit_Price
GROUP BY q_BB_Unit_Price.rep_Month, q_BB_Unit_Price.L_1, q_BB_Unit_Price.L_2, q_BB_Unit_Price.L_3, q_BB_Unit_Price.L_4, q_BB_Unit_Price.L_5, q_BB_Unit_Price.L_6, q_BB_Unit_Price.up_Curr, q_BB_Unit_Price.P01_Code
PIVOT q_BB_Unit_Price.Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_Check
SELECT q_BB_Exp.rep_Month, q_BB_Exp.PC, q_BB_Exp.L_1, q_BB_Exp.L_2, q_BB_Exp.L_3, q_BB_Exp.L_4, q_BB_Exp.L_5, q_BB_Exp.L_6, q_BB_Exp.up_Curr, Sum(q_BB_Exp.Total_Expense) AS [Total Expense], Sum(q_BB_Qty.Exp_Base_Qty) AS Quantity, C6_Code.Unit, q_BB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Without_Coeff, [Total Expense]/[Quantity] AS UP_Average_With_Coeff, [UP_Average_With_Coeff]/[UP_Without_Coeff] AS UP_Average_Coeff
FROM ((q_BB_Exp LEFT JOIN q_BB_Qty ON (q_BB_Exp.L_6 = q_BB_Qty.L_6) AND (q_BB_Exp.L_5 = q_BB_Qty.L_5) AND (q_BB_Exp.L_4 = q_BB_Qty.L_4) AND (q_BB_Exp.L_3 = q_BB_Qty.L_3) AND (q_BB_Exp.L_2 = q_BB_Qty.L_2) AND (q_BB_Exp.L_1 = q_BB_Qty.L_1) AND (q_BB_Exp.PC = q_BB_Qty.PC) AND (q_BB_Exp.rep_Month = q_BB_Qty.rep_Month)) LEFT JOIN q_BB_Work_UP_without_Coeff ON (q_BB_Exp.L_6 = q_BB_Work_UP_without_Coeff.L_6) AND (q_BB_Exp.L_5 = q_BB_Work_UP_without_Coeff.L_5) AND (q_BB_Exp.L_4 = q_BB_Work_UP_without_Coeff.L_4) AND (q_BB_Exp.L_3 = q_BB_Work_UP_without_Coeff.L_3) AND (q_BB_Exp.L_2 = q_BB_Work_UP_without_Coeff.L_2) AND (q_BB_Exp.L_1 = q_BB_Work_UP_without_Coeff.L_1) AND (q_BB_Exp.PC = q_BB_Work_UP_without_Coeff.PC) AND (q_BB_Exp.rep_Month = q_BB_Work_UP_without_Coeff.rep_Month)) LEFT JOIN C6_Code ON (q_BB_Exp.L_6 = C6_Code.[c_L6]) AND (q_BB_Exp.L_5 = C6_Code.[c_L5]) AND (q_BB_Exp.L_4 = C6_Code.[c_L4]) AND (q_BB_Exp.L_3 = C6_Code.[c_L3]) AND (q_BB_Exp.L_2 = C6_Code.[c_L2]) AND (q_BB_Exp.L_1 = C6_Code.[c_L1])
GROUP BY q_BB_Exp.rep_Month, q_BB_Exp.PC, q_BB_Exp.L_1, q_BB_Exp.L_2, q_BB_Exp.L_3, q_BB_Exp.L_4, q_BB_Exp.L_5, q_BB_Exp.L_6, q_BB_Exp.up_Curr, C6_Code.Unit, q_BB_Work_UP_without_Coeff.Unit_Price_Planned;

----------------------------------------------------------------------------------------------------
q_BB_UP_Coeff
SELECT q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.PC AS up_pr_Code, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.R_1_Code AS up_rs_L1, q_BB_Res_UP_Market_Coeff.R_2_Code AS up_rs_L2, q_BB_Res_UP_Market_Coeff.R_3_Code AS up_rs_L3, q_BB_Res_UP_Market_Coeff.R_4_Code AS up_rs_L4, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.up_Cost_Coeff, q_BB_Curr_Escalation_Rates.k_USD, q_BB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_BB_Res_UP_Market_Coeff.up_Cost, q_BB_Res_UP_Market_Coeff.Currency AS rs_Currency, q_BB_Res_UP_Market_Coeff.Key_Full, q_BB_Res_UP_Market_Coeff.An_rs_quantity, q_BB_Res_UP_Market_Coeff.Key_R_PC_L6
FROM q_BB_Res_UP_Market_Coeff LEFT JOIN q_BB_Curr_Escalation_Rates ON q_BB_Res_UP_Market_Coeff.Key_Full_Comb = q_BB_Curr_Escalation_Rates.Key_Full_Comb
GROUP BY q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.R_1_Code, q_BB_Res_UP_Market_Coeff.R_2_Code, q_BB_Res_UP_Market_Coeff.R_3_Code, q_BB_Res_UP_Market_Coeff.R_4_Code, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.up_Cost_Coeff, q_BB_Curr_Escalation_Rates.k_USD, q_BB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_BB_Res_UP_Market_Coeff.up_Cost, q_BB_Res_UP_Market_Coeff.Currency, q_BB_Res_UP_Market_Coeff.Key_Full, q_BB_Res_UP_Market_Coeff.An_rs_quantity, q_BB_Res_UP_Market_Coeff.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_BB_UP_Comp
SELECT t_BB_Res_UP_Add.rep_Month, t_BB_Res_UP_Add.up_pr_Code, t_BB_Res_UP_Add.up_rs_L1, t_BB_Res_UP_Add.up_rs_L2, t_BB_Res_UP_Add.up_rs_L3, t_BB_Res_UP_Add.up_rs_L4, t_BB_Res_UP_Add.UP_Date, t_BB_Res_UP_Add.up_Cost, t_BB_Res_UP_Add.up_Curr
FROM t_BB_Res_UP_Add LEFT JOIN t_BB_Res_UP ON (t_BB_Res_UP_Add.rep_Month = t_BB_Res_UP.rep_Month) AND (t_BB_Res_UP_Add.up_pr_Code = t_BB_Res_UP.up_pr_Code) AND (t_BB_Res_UP_Add.up_rs_L1 = t_BB_Res_UP.up_rs_L1) AND (t_BB_Res_UP_Add.up_rs_L2 = t_BB_Res_UP.up_rs_L2) AND (t_BB_Res_UP_Add.up_rs_L3 = t_BB_Res_UP.up_rs_L3) AND (t_BB_Res_UP_Add.up_rs_L4 = t_BB_Res_UP.up_rs_L4) AND (t_BB_Res_UP_Add.UP_Date = t_BB_Res_UP.UP_Date) AND (t_BB_Res_UP_Add.up_Cost = t_BB_Res_UP.up_Cost) AND (t_BB_Res_UP_Add.up_Curr = t_BB_Res_UP.up_Curr)
WHERE (((t_BB_Res_UP.up_pr_Code) Is Null))
ORDER BY t_BB_Res_UP_Add.rep_Month, t_BB_Res_UP_Add.up_pr_Code, t_BB_Res_UP_Add.up_rs_L1, t_BB_Res_UP_Add.up_rs_L2, t_BB_Res_UP_Add.up_rs_L3, t_BB_Res_UP_Add.up_rs_L4, t_BB_Res_UP_Add.UP_Date, t_BB_Res_UP_Add.up_Cost, t_BB_Res_UP_Add.up_Curr;

----------------------------------------------------------------------------------------------------
q_BB_UP_Pre_Coeff_ActiveM_Indexes
SELECT q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.Exp_Base_Mon, q_BB_Analysis_ActiveM_With_Prices.rs_L1, q_BB_Analysis_ActiveM_With_Prices.rs_L2, q_BB_Analysis_ActiveM_With_Prices.rs_L3, q_BB_Analysis_ActiveM_With_Prices.rs_L4, t_BB_Indexes.r_UFE, t_BB_Indexes.r_TUFE, t_BB_Indexes.r_INF_USD, t_BB_Indexes.r_INF_EUR, t_BB_Indexes.r_Metal, t_BB_Indexes.r_Petrol, t_BB_Indexes.r_Cement, t_BB_Indexes.r_Electricity, q_BB_Analysis_ActiveM_With_Prices.Currency AS rs_Currency, q_BB_Analysis_ActiveM_With_Prices.An_rs_quantity, q_BB_Analysis_ActiveM_With_Prices.up_Cost, q_BB_Analysis_ActiveM_With_Prices.Key_R4_Simple, q_BB_Analysis_ActiveM_With_Prices.Key_R4, q_BB_Analysis_ActiveM_With_Prices.Key_R_PC_L6, q_BB_Analysis_ActiveM_With_Prices.Key_Full
FROM q_BB_Analysis_ActiveM_With_Prices LEFT JOIN t_BB_Indexes ON (q_BB_Analysis_ActiveM_With_Prices.PC = t_BB_Indexes.p_Code) AND (q_BB_Analysis_ActiveM_With_Prices.rep_Month = t_BB_Indexes.rep_Month) AND (q_BB_Analysis_ActiveM_With_Prices.Exp_base_mon = t_BB_Indexes.g_Month);

----------------------------------------------------------------------------------------------------
q_BB_UP_with_Curr_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_with_Curr_Coeff.UP) AS SumOfUP
SELECT q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.rs_Currency
FROM q_BB_Work_UP_with_Curr_Coeff
GROUP BY q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.rs_Currency
ORDER BY q_BB_Work_UP_with_Curr_Coeff.rep_Month, q_BB_Work_UP_with_Curr_Coeff.PC, q_BB_Work_UP_with_Curr_Coeff.L_1, q_BB_Work_UP_with_Curr_Coeff.L_2, q_BB_Work_UP_with_Curr_Coeff.L_3, q_BB_Work_UP_with_Curr_Coeff.L_4, q_BB_Work_UP_with_Curr_Coeff.L_5, q_BB_Work_UP_with_Curr_Coeff.L_6, q_BB_Work_UP_with_Curr_Coeff.Month
PIVOT q_BB_Work_UP_with_Curr_Coeff.Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_with_Market_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_with_Market_Coeff.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_BB_Work_UP_with_Market_Coeff.rep_Month, q_BB_Work_UP_with_Market_Coeff.PC, q_BB_Work_UP_with_Market_Coeff.L_1, q_BB_Work_UP_with_Market_Coeff.L_2, q_BB_Work_UP_with_Market_Coeff.L_3, q_BB_Work_UP_with_Market_Coeff.L_4, q_BB_Work_UP_with_Market_Coeff.L_5, q_BB_Work_UP_with_Market_Coeff.L_6, q_BB_Work_UP_with_Market_Coeff.Currency
FROM q_BB_Work_UP_with_Market_Coeff
GROUP BY q_BB_Work_UP_with_Market_Coeff.rep_Month, q_BB_Work_UP_with_Market_Coeff.PC, q_BB_Work_UP_with_Market_Coeff.L_1, q_BB_Work_UP_with_Market_Coeff.L_2, q_BB_Work_UP_with_Market_Coeff.L_3, q_BB_Work_UP_with_Market_Coeff.L_4, q_BB_Work_UP_with_Market_Coeff.L_5, q_BB_Work_UP_with_Market_Coeff.L_6, q_BB_Work_UP_with_Market_Coeff.Currency
PIVOT q_BB_Work_UP_with_Market_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_BB_UP_without_Coeff_Crosstab
TRANSFORM Sum(q_BB_Work_UP_without_Coeff.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_BB_Work_UP_without_Coeff.rep_Month, q_BB_Work_UP_without_Coeff.PC, q_BB_Work_UP_without_Coeff.L_1, q_BB_Work_UP_without_Coeff.L_2, q_BB_Work_UP_without_Coeff.L_3, q_BB_Work_UP_without_Coeff.L_4, q_BB_Work_UP_without_Coeff.L_5, q_BB_Work_UP_without_Coeff.L_6, q_BB_Work_UP_without_Coeff.rs_Currency
FROM q_BB_Work_UP_without_Coeff
GROUP BY q_BB_Work_UP_without_Coeff.rep_Month, q_BB_Work_UP_without_Coeff.PC, q_BB_Work_UP_without_Coeff.L_1, q_BB_Work_UP_without_Coeff.L_2, q_BB_Work_UP_without_Coeff.L_3, q_BB_Work_UP_without_Coeff.L_4, q_BB_Work_UP_without_Coeff.L_5, q_BB_Work_UP_without_Coeff.L_6, q_BB_Work_UP_without_Coeff.rs_Currency
PIVOT q_BB_Work_UP_without_Coeff.Exp_Base_Mon;

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_with_Curr_Coeff
SELECT q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_BB_Curr_Escalation_Rates.rs_currency
FROM q_BB_Analysis_ActiveM_With_Prices LEFT JOIN q_BB_Curr_Escalation_Rates ON (q_BB_Analysis_ActiveM_With_Prices.rep_Month = q_BB_Curr_Escalation_Rates.rep_Month) AND (q_BB_Analysis_ActiveM_With_Prices.PC = q_BB_Curr_Escalation_Rates.PC) AND (q_BB_Analysis_ActiveM_With_Prices.L_1 = q_BB_Curr_Escalation_Rates.L_1) AND (q_BB_Analysis_ActiveM_With_Prices.L_2 = q_BB_Curr_Escalation_Rates.L_2) AND (q_BB_Analysis_ActiveM_With_Prices.L_3 = q_BB_Curr_Escalation_Rates.L_3) AND (q_BB_Analysis_ActiveM_With_Prices.L_4 = q_BB_Curr_Escalation_Rates.L_4) AND (q_BB_Analysis_ActiveM_With_Prices.L_5 = q_BB_Curr_Escalation_Rates.L_5) AND (q_BB_Analysis_ActiveM_With_Prices.L_6 = q_BB_Curr_Escalation_Rates.L_6) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L1 = q_BB_Curr_Escalation_Rates.rs_L1) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L2 = q_BB_Curr_Escalation_Rates.rs_L2) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L3 = q_BB_Curr_Escalation_Rates.rs_L3) AND (q_BB_Analysis_ActiveM_With_Prices.rs_L4 = q_BB_Curr_Escalation_Rates.rs_L4) AND (q_BB_Analysis_ActiveM_With_Prices.currency = q_BB_Curr_Escalation_Rates.rs_currency) AND (q_BB_Analysis_ActiveM_With_Prices.exp_base_mon = q_BB_Curr_Escalation_Rates.Month)
GROUP BY q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon, q_BB_Curr_Escalation_Rates.rs_currency
ORDER BY q_BB_Analysis_ActiveM_With_Prices.rep_Month, q_BB_Analysis_ActiveM_With_Prices.PC, q_BB_Analysis_ActiveM_With_Prices.L_1, q_BB_Analysis_ActiveM_With_Prices.L_2, q_BB_Analysis_ActiveM_With_Prices.L_3, q_BB_Analysis_ActiveM_With_Prices.L_4, q_BB_Analysis_ActiveM_With_Prices.L_5, q_BB_Analysis_ActiveM_With_Prices.L_6, q_BB_Analysis_ActiveM_With_Prices.exp_base_mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_with_Market_Coeff
SELECT q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_BB_Res_UP_Market_Coeff.Currency
FROM q_BB_Res_UP_Market_Coeff
GROUP BY q_BB_Res_UP_Market_Coeff.PC, q_BB_Res_UP_Market_Coeff.L_1, q_BB_Res_UP_Market_Coeff.L_2, q_BB_Res_UP_Market_Coeff.L_3, q_BB_Res_UP_Market_Coeff.L_4, q_BB_Res_UP_Market_Coeff.L_5, q_BB_Res_UP_Market_Coeff.L_6, q_BB_Res_UP_Market_Coeff.rep_Month, q_BB_Res_UP_Market_Coeff.g_Month, q_BB_Res_UP_Market_Coeff.Currency;

----------------------------------------------------------------------------------------------------
q_BB_Work_UP_without_Coeff
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Exp_Base_Mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency
FROM q_BB_UP_Pre_Coeff_ActiveM_Indexes
GROUP BY q_BB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_BB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_BB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_BB_UP_Pre_Coeff_ActiveM_Indexes.Exp_Base_Mon, q_BB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency;

----------------------------------------------------------------------------------------------------
q_Budget_AllProjects_Detailed_Report
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5] AS L5_Comb, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS L_Comb, q_CB_AllProjects_Report_Data.Desc_TR_L6, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM, t_001_Projects.r03_S_Name
FROM q_CB_AllProjects_Report_Data LEFT JOIN t_001_Projects ON q_CB_AllProjects_Report_Data.PC = t_001_Projects.p_Code
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5], [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6], q_CB_AllProjects_Report_Data.Desc_TR_L6, q_CB_AllProjects_Report_Data.Currency, t_001_Projects.r03_S_Name
HAVING ((q_CB_AllProjects_Report_Data.rep_Month)=[reports]![r_cb_summary_lvl_5]![Text200]) AND q_CB_AllProjects_Report_Data.[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]='D.01.01.15.81' AND ((q_CB_AllProjects_Report_Data.PC)=[reports]![r_cb_summary_lvl_5]![Text193]);

----------------------------------------------------------------------------------------------------
q_Budget_AllProjects_Report
SELECT q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency, Sum(q_CB_AllProjects_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_AllProjects_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_AllProjects_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_AllProjects_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_AllProjects_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_AllProjects_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_AllProjects_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_AllProjects_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_AllProjects_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_AllProjects_Report_Data
GROUP BY q_CB_AllProjects_Report_Data.rep_Month, q_CB_AllProjects_Report_Data.PC, q_CB_AllProjects_Report_Data.L_1, q_CB_AllProjects_Report_Data.L_2, q_CB_AllProjects_Report_Data.L_3, q_CB_AllProjects_Report_Data.L_4, q_CB_AllProjects_Report_Data.L_5, q_CB_AllProjects_Report_Data.Desc_TR_L5, q_CB_AllProjects_Report_Data.Currency
HAVING q_CB_AllProjects_Report_Data.rep_Month=[Reports]![r_CB_Summary_Lvl_5]![Text200] AND q_CB_AllProjects_Report_Data.PC=[Reports]![r_CB_Summary_Lvl_5]![Text193] AND q_CB_AllProjects_Report_Data.L_1=[Reports]![r_CB_Summary_Lvl_5]![Text61] AND q_CB_AllProjects_Report_Data.L_2=[Reports]![r_CB_Summary_Lvl_5]![Text110] AND q_CB_AllProjects_Report_Data.L_3=[Reports]![r_CB_Summary_Lvl_5]![Text111] AND q_CB_AllProjects_Report_Data.L_4=[Reports]![r_CB_Summary_Lvl_5]![Text194];

----------------------------------------------------------------------------------------------------
q_Budget_Comp_Report
SELECT q_CB_Sum_Projects_Data.PC, q_CB_Sum_Projects_Data.L_1, q_CB_Sum_Projects_Data.L_2, q_CB_Sum_Projects_Data.L_3, q_CB_Sum_Projects_Data.Desc_TR_L2, q_CB_Sum_Projects_Data.Desc_TR_L3, q_CB_Sum_Projects_Data.up_Curr, Sum(q_CB_Sum_Projects_Data.IncomeGT_First) AS IncomeGT_First, Sum(q_CB_Sum_Projects_Data.ExpenseGT_First) AS ExpenseGT_First, Sum(q_CB_Sum_Projects_Data.ProfitGT_First) AS ProfitGT_First, Sum(q_CB_Sum_Projects_Data.IncomeGT_Second) AS IncomeGT_Second, Sum(q_CB_Sum_Projects_Data.ExpenseGT_Second) AS ExpenseGT_Second, Sum(q_CB_Sum_Projects_Data.ProfitGT_Second) AS ProfitGT_Second, Sum(q_CB_Sum_Projects_Data.IncomeDiffGT) AS IncomeDiffGT, Sum(q_CB_Sum_Projects_Data.ExpenseDiff_GT) AS ExpenseDiff_GT, Sum(q_CB_Sum_Projects_Data.ProfitDiff_GT) AS ProfitDiff_GT, Sum(q_CB_Sum_Projects_Data.IncomeRT_First) AS IncomeRT_First, Sum(q_CB_Sum_Projects_Data.ExpenseRT_First) AS ExpenseRT_First, Sum(q_CB_Sum_Projects_Data.ProfitRT_First) AS ProfitRT_First, Sum(q_CB_Sum_Projects_Data.IncomeRT_Second) AS IncomeRT_Second, Sum(q_CB_Sum_Projects_Data.ExpenseRT_Second) AS ExpenseRT_Second, Sum(q_CB_Sum_Projects_Data.ProfitRT_Second) AS ProfitRT_Second, Sum(q_CB_Sum_Projects_Data.IncomeDiffRT) AS IncomeDiffRT, Sum(q_CB_Sum_Projects_Data.ExpenseDiff_RT) AS ExpenseDiff_RT, Sum(q_CB_Sum_Projects_Data.ProfitDiff_RT) AS ProfitDiff_RT, Sum(q_CB_Sum_Projects_Data.IncomeREM_First) AS IncomeREM_First, Sum(q_CB_Sum_Projects_Data.ExpenseREM_First) AS ExpenseREM_First, Sum(q_CB_Sum_Projects_Data.ProfitREM_First) AS ProfitREM_First, Sum(q_CB_Sum_Projects_Data.IncomeREM_Second) AS IncomeREM_Second, Sum(q_CB_Sum_Projects_Data.ExpenseREM_Second) AS ExpenseREM_Second, Sum(q_CB_Sum_Projects_Data.ProfitREM_Second) AS ProfitREM_Second, Sum(q_CB_Sum_Projects_Data.IncomeREM_Diff) AS IncomeREM_Diff, Sum(q_CB_Sum_Projects_Data.ExpenseREM_Diff) AS ExpenseREM_Diff, Sum(q_CB_Sum_Projects_Data.ProfitREM_Diff) AS ProfitREM_Diff
FROM q_CB_Sum_Projects_Data
GROUP BY q_CB_Sum_Projects_Data.PC, q_CB_Sum_Projects_Data.L_1, q_CB_Sum_Projects_Data.L_2, q_CB_Sum_Projects_Data.L_3, q_CB_Sum_Projects_Data.Desc_TR_L2, q_CB_Sum_Projects_Data.Desc_TR_L3, q_CB_Sum_Projects_Data.up_Curr;

----------------------------------------------------------------------------------------------------
q_Budget_Comp_Report_Detailed
SELECT [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6] AS L6_Comb, q_CB_Sum_Projects_Data.PC, q_CB_Sum_Projects_Data.Desc_TR_L6, q_CB_Sum_Projects_Data.up_Curr, Sum(q_CB_Sum_Projects_Data.IncomeGT_First) AS IncomeGT_First, Sum(q_CB_Sum_Projects_Data.ExpenseGT_First) AS ExpenseGT_First, Sum(q_CB_Sum_Projects_Data.ProfitGT_First) AS ProfitGT_First, Sum(q_CB_Sum_Projects_Data.IncomeGT_Second) AS IncomeGT_Second, Sum(q_CB_Sum_Projects_Data.ExpenseGT_Second) AS ExpenseGT_Second, Sum(q_CB_Sum_Projects_Data.ProfitGT_Second) AS ProfitGT_Second, Sum(q_CB_Sum_Projects_Data.IncomeDiffGT) AS IncomeDiffGT, Sum(q_CB_Sum_Projects_Data.ExpenseDiff_GT) AS ExpenseDiff_GT, Sum(q_CB_Sum_Projects_Data.ProfitDiff_GT) AS ProfitDiff_GT, Sum(q_CB_Sum_Projects_Data.IncomeRT_First) AS IncomeRT_First, Sum(q_CB_Sum_Projects_Data.ExpenseRT_First) AS ExpenseRT_First, Sum(q_CB_Sum_Projects_Data.ProfitRT_First) AS ProfitRT_First, Sum(q_CB_Sum_Projects_Data.IncomeRT_Second) AS IncomeRT_Second, Sum(q_CB_Sum_Projects_Data.ExpenseRT_Second) AS ExpenseRT_Second, Sum(q_CB_Sum_Projects_Data.ProfitRT_Second) AS ProfitRT_Second, Sum(q_CB_Sum_Projects_Data.IncomeDiffRT) AS IncomeDiffRT, Sum(q_CB_Sum_Projects_Data.ExpenseDiff_RT) AS ExpenseDiff_RT, Sum(q_CB_Sum_Projects_Data.ProfitDiff_RT) AS ProfitDiff_RT, Sum(q_CB_Sum_Projects_Data.IncomeREM_First) AS IncomeREM_First, Sum(q_CB_Sum_Projects_Data.ExpenseREM_First) AS ExpenseREM_First, Sum(q_CB_Sum_Projects_Data.ProfitREM_First) AS ProfitREM_First, Sum(q_CB_Sum_Projects_Data.IncomeREM_Second) AS IncomeREM_Second, Sum(q_CB_Sum_Projects_Data.ExpenseREM_Second) AS ExpenseREM_Second, Sum(q_CB_Sum_Projects_Data.ProfitREM_Second) AS ProfitREM_Second, Sum(q_CB_Sum_Projects_Data.IncomeREM_Diff) AS IncomeREM_Diff, Sum(q_CB_Sum_Projects_Data.ExpenseREM_Diff) AS ExpenseREM_Diff, Sum(q_CB_Sum_Projects_Data.ProfitREM_Diff) AS ProfitREM_Diff
FROM q_CB_Sum_Projects_Data
GROUP BY [L_1] + '.' + [L_2] + '.' + [L_3] + '.' + [L_4] + '.' + [L_5] + '.' + [L_6], [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5], q_CB_Sum_Projects_Data.PC, q_CB_Sum_Projects_Data.Desc_TR_L6, q_CB_Sum_Projects_Data.up_Curr
HAVING q_CB_Sum_Projects_Data.[L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]='D.01.02.21.12'AND (q_CB_Sum_Projects_Data.PC)=[Reports]![r_CB_Sum_AllProjects_Compare_Detailed]![Text175];

----------------------------------------------------------------------------------------------------
q_Budget_Cons_Detailed_Report
SELECT q_CB_Cons_Report_Data.rep_Month, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6] AS L_Comb, q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5] AS L5_Comb
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]+'.'+[L_6], q_CB_Cons_Report_Data.Desc_TR_L6, q_CB_Cons_Report_Data.Currency, [L_1]+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5]
HAVING (((q_CB_Cons_Report_Data.rep_Month)=Forms!Management!cbo_date_Consolidated) And ((q_CB_Cons_Report_Data.L_1+'.'+[L_2]+'.'+[L_3]+'.'+[L_4]+'.'+[L_5])='D.01.01.12.21'));

----------------------------------------------------------------------------------------------------
q_Budget_Cons_Report
SELECT q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.Desc_TR_L5, q_CB_Cons_Report_Data.Currency, Sum(q_CB_Cons_Report_Data.IncomeGT) AS IncomeGT, Sum(q_CB_Cons_Report_Data.ExpenseGT) AS ExpenseGT, Sum(q_CB_Cons_Report_Data.ProfitGT) AS ProfitGT, Sum(q_CB_Cons_Report_Data.IncomeRT) AS IncomeRT, Sum(q_CB_Cons_Report_Data.ExpenseRT) AS ExpenseRT, Sum(q_CB_Cons_Report_Data.ProfitRT) AS ProfitRT, Sum(q_CB_Cons_Report_Data.IncomeREM) AS IncomeREM, Sum(q_CB_Cons_Report_Data.ExpenseREM) AS ExpenseREM, Sum(q_CB_Cons_Report_Data.ProfitREM) AS ProfitREM
FROM q_CB_Cons_Report_Data
GROUP BY q_CB_Cons_Report_Data.rep_Month, q_CB_Cons_Report_Data.L_1, q_CB_Cons_Report_Data.L_2, q_CB_Cons_Report_Data.L_3, q_CB_Cons_Report_Data.L_4, q_CB_Cons_Report_Data.L_5, q_CB_Cons_Report_Data.Desc_TR_L5, q_CB_Cons_Report_Data.Currency
HAVING (((q_CB_Cons_Report_Data.rep_Month)=Forms!Management!cbo_date_Consolidated) And ((q_CB_Cons_Report_Data.L_1)=Reports!r_CB_Sum_Cons_Lvl_5!Text61) And ((q_CB_Cons_Report_Data.L_2)=Reports!r_CB_Sum_Cons_Lvl_5!Text110) And ((q_CB_Cons_Report_Data.L_3)=Reports!r_CB_Sum_Cons_Lvl_5!Text111) And ((q_CB_Cons_Report_Data.L_4)=Reports!r_CB_Sum_Cons_Lvl_5!Text180));

----------------------------------------------------------------------------------------------------
q_Budget_Project_Months
Select 
rep_Month,
PC,
Name,
'GÜNCEL' AS Budget_Type
From q_CB_Project_Months

UNION Select
rep_Month,
PC,
Name,
'BAZ' AS Budget_Type
From q_BB_Project_Months;

----------------------------------------------------------------------------------------------------
q_Budget_WBS_Union
SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_GT

UNION

SELECT 
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_GT

UNION

SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_RT

UNION SELECT 
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_RT;

----------------------------------------------------------------------------------------------------
q_Budget_WBS_Union_Projects
SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_GT

UNION

SELECT 
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_GT

UNION

SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_First_Budget_RT

UNION SELECT 
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6

	FROM 
		q_Second_Budget_RT;

----------------------------------------------------------------------------------------------------
q_CB_Active_Months_Res_Qty
SELECT t_PL_Analysis.rep_Month, t_PL_Analysis.P01_Code AS PC, q_CB_Qty_ActiveM_Works.Exp_CB_Mon, t_PL_Analysis.Key_R4, q_CB_Qty_ActiveM_Works.Key_R_PC_L6, t_PL_Analysis.Key_Full, t_PL_Analysis.L_1, t_PL_Analysis.L_2, t_PL_Analysis.L_3, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, t_PL_Analysis.L_4, t_PL_Analysis.L_5, t_PL_Analysis.L_6, t_PL_Analysis.Key_R4_Simple, (1+[r_loss])*([t_PL_Analysis].[An_rs_quantity]) AS An_rs_quantity, t_PL_Analysis.r_loss
FROM q_CB_Qty_ActiveM_Works LEFT JOIN t_PL_Analysis ON q_CB_Qty_ActiveM_Works.Key_R_PC_L6 = t_PL_Analysis.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Active_Months_Res_Qty_Mod
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.Exp_CB_Mon, q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty.An_rs_quantity, q_CB_Active_Months_Res_Qty.Key_R4_Simple, q_CB_Active_Months_Res_Qty.Key_Full, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_R4
FROM q_CB_Active_Months_Res_Qty LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple
WHERE (((q_CB_Active_Months_Res_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_CurrMonth_Data
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Desc_TR_L2, t_CB_Profit_Total_ST.Desc_TR_L3, t_CB_Profit_Total_ST.Desc_TR_L6, Sum(t_CB_Profit_Total_ST.Income) AS Income, Sum(t_CB_Profit_Total_ST.Expense) AS Expense, Sum(t_CB_Profit_Total_ST.Profit) AS Profit, t_CB_Profit_Total_ST.Currency
FROM t_CB_Profit_Total_ST
GROUP BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, t_CB_Profit_Total_ST.Desc_TR_L2, t_CB_Profit_Total_ST.Desc_TR_L3, t_CB_Profit_Total_ST.Desc_TR_L6, t_CB_Profit_Total_ST.Currency
HAVING (((t_CB_Profit_Total_ST.PC)="MBE" )) AND t_CB_Profit_Total_ST.Month<=#2022/07/01#;

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_Data
SELECT q_CB_Summary_Report_Union.rep_Month, q_CB_Summary_Report_Union.PC, q_CB_Summary_Report_Union.L_1, q_CB_Summary_Report_Union.L_2, q_CB_Summary_Report_Union.L_3, q_CB_Summary_Report_Union.L_4, q_CB_Summary_Report_Union.L_5, q_CB_Summary_Report_Union.L_6, q_CB_Summary_Report_Union.Currency, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(IIf([q_CB_AllProjects_Report_EndProject_Data].[Income] Is Null,"0",[q_CB_AllProjects_Report_EndProject_Data].[Income])) AS IncomeGT, Sum(IIf([q_CB_AllProjects_Report_EndProject_Data].[Expense] Is Null,"0",[q_CB_AllProjects_Report_EndProject_Data].[Expense])) AS ExpenseGT, [IncomeGT]-[ExpenseGT] AS ProfitGT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Income] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Income])) AS IncomeRT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Expense] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Expense])) AS ExpenseRT, Sum(IIf([q_CB_Summary_Report_CurrMonth_Data_Group].[Profit] Is Null,"0",[q_CB_Summary_Report_CurrMonth_Data_Group].[Profit])) AS ProfitRT, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM, C6_Code.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM ((((((q_CB_Summary_Report_Union LEFT JOIN q_CB_AllProjects_Report_EndProject_Data ON (q_CB_Summary_Report_Union.Currency = q_CB_AllProjects_Report_EndProject_Data.Currency) AND (q_CB_Summary_Report_Union.L_6 = q_CB_AllProjects_Report_EndProject_Data.L_6) AND (q_CB_Summary_Report_Union.L_5 = q_CB_AllProjects_Report_EndProject_Data.L_5) AND (q_CB_Summary_Report_Union.L_4 = q_CB_AllProjects_Report_EndProject_Data.L_4) AND (q_CB_Summary_Report_Union.L_3 = q_CB_AllProjects_Report_EndProject_Data.L_3) AND (q_CB_Summary_Report_Union.L_2 = q_CB_AllProjects_Report_EndProject_Data.L_2) AND (q_CB_Summary_Report_Union.L_1 = q_CB_AllProjects_Report_EndProject_Data.L_1) AND (q_CB_Summary_Report_Union.PC = q_CB_AllProjects_Report_EndProject_Data.PC) AND (q_CB_Summary_Report_Union.rep_Month = q_CB_AllProjects_Report_EndProject_Data.rep_Month)) LEFT JOIN C6_Code ON (q_CB_Summary_Report_Union.L_6 = C6_Code.c_L6) AND (q_CB_Summary_Report_Union.L_5 = C6_Code.c_L5) AND (q_CB_Summary_Report_Union.L_4 = C6_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C6_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C6_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C6_Code.c_L1)) LEFT JOIN C3_Code ON (q_CB_Summary_Report_Union.L_3 = C3_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C3_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Summary_Report_Union.L_2 = C2_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C2_Code.c_L1)) LEFT JOIN q_CB_Summary_Report_CurrMonth_Data_Group ON (q_CB_Summary_Report_Union.Currency = q_CB_Summary_Report_CurrMonth_Data_Group.Currency) AND (q_CB_Summary_Report_Union.L_6 = q_CB_Summary_Report_CurrMonth_Data_Group.L_6) AND (q_CB_Summary_Report_Union.L_5 = q_CB_Summary_Report_CurrMonth_Data_Group.L_5) AND (q_CB_Summary_Report_Union.L_4 = q_CB_Summary_Report_CurrMonth_Data_Group.L_4) AND (q_CB_Summary_Report_Union.L_3 = q_CB_Summary_Report_CurrMonth_Data_Group.L_3) AND (q_CB_Summary_Report_Union.L_2 = q_CB_Summary_Report_CurrMonth_Data_Group.L_2) AND (q_CB_Summary_Report_Union.L_1 = q_CB_Summary_Report_CurrMonth_Data_Group.L_1) AND (q_CB_Summary_Report_Union.PC = q_CB_Summary_Report_CurrMonth_Data_Group.PC) AND (q_CB_Summary_Report_Union.rep_Month = q_CB_Summary_Report_CurrMonth_Data_Group.rep_Month)) LEFT JOIN C5_Code ON (q_CB_Summary_Report_Union.L_5 = C5_Code.c_L5) AND (q_CB_Summary_Report_Union.L_4 = C5_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C5_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C5_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_CB_Summary_Report_Union.L_4 = C4_Code.c_L4) AND (q_CB_Summary_Report_Union.L_3 = C4_Code.c_L3) AND (q_CB_Summary_Report_Union.L_2 = C4_Code.c_L2) AND (q_CB_Summary_Report_Union.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Summary_Report_Union.rep_Month, q_CB_Summary_Report_Union.PC, q_CB_Summary_Report_Union.L_1, q_CB_Summary_Report_Union.L_2, q_CB_Summary_Report_Union.L_3, q_CB_Summary_Report_Union.L_4, q_CB_Summary_Report_Union.L_5, q_CB_Summary_Report_Union.L_6, q_CB_Summary_Report_Union.Currency, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, C6_Code.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_AllProjects_Report_EndProject_Data
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Desc_TR_L2, t_CB_Profit_Total_ST.Desc_TR_L3, t_CB_Profit_Total_ST.Desc_TR_L6, Sum(t_CB_Profit_Total_ST.Income) AS Income, Sum(t_CB_Profit_Total_ST.Expense) AS Expense, Sum(t_CB_Profit_Total_ST.Profit) AS Profit, t_CB_Profit_Total_ST.Currency
FROM t_CB_Profit_Total_ST
GROUP BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Desc_TR_L2, t_CB_Profit_Total_ST.Desc_TR_L3, t_CB_Profit_Total_ST.Desc_TR_L6, t_CB_Profit_Total_ST.Currency
HAVING (((t_CB_Profit_Total_ST.PC)="MBE" ));

----------------------------------------------------------------------------------------------------
q_CB_Analysis_ActiveM_With_Prices
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.Exp_CB_Mon, q_CB_Active_Months_Res_Qty.An_rs_quantity, q_CB_Active_Months_Res_Qty.Key_R4, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_Full, t_PL_Res_UP.up_Cost, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, R4_Code.Currency, q_CB_Active_Months_Res_Qty.Key_R4_Simple
FROM (q_CB_Active_Months_Res_Qty LEFT JOIN t_PL_Res_UP ON q_CB_Active_Months_Res_Qty.Key_R4 = t_PL_Res_UP.Key_R4) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Analysis_ActiveM_With_Prices_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.An_rs_quantity, t_PL_Res_UP.up_Cost, q_CB_Active_Months_Res_Qty_Mod.Key_R4, q_CB_Active_Months_Res_Qty_Mod.Key_R_PC_L6, q_CB_Active_Months_Res_Qty_Mod.Key_Full, q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple
FROM q_CB_Active_Months_Res_Qty_Mod LEFT JOIN t_PL_Res_UP ON q_CB_Active_Months_Res_Qty_Mod.Key_R4 = t_PL_Res_UP.Key_R4;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_CurrMonth_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.Month<=#2022/07/01#;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_CurrMonth_Data_Group
SELECT q_CB_Cons_Report_CurrMonth_Data.rep_Month, q_CB_Cons_Report_CurrMonth_Data.L_1, q_CB_Cons_Report_CurrMonth_Data.L_2, q_CB_Cons_Report_CurrMonth_Data.L_3, q_CB_Cons_Report_CurrMonth_Data.L_4, q_CB_Cons_Report_CurrMonth_Data.L_5, q_CB_Cons_Report_CurrMonth_Data.L_6, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L2, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L3, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L6, Sum(q_CB_Cons_Report_CurrMonth_Data.Income) AS Income, Sum(q_CB_Cons_Report_CurrMonth_Data.Expense) AS Expense, Sum(q_CB_Cons_Report_CurrMonth_Data.Profit) AS Profit, q_CB_Cons_Report_CurrMonth_Data.Currency
FROM q_CB_Cons_Report_CurrMonth_Data
GROUP BY q_CB_Cons_Report_CurrMonth_Data.rep_Month, q_CB_Cons_Report_CurrMonth_Data.L_1, q_CB_Cons_Report_CurrMonth_Data.L_2, q_CB_Cons_Report_CurrMonth_Data.L_3, q_CB_Cons_Report_CurrMonth_Data.L_4, q_CB_Cons_Report_CurrMonth_Data.L_5, q_CB_Cons_Report_CurrMonth_Data.L_6, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L2, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L3, q_CB_Cons_Report_CurrMonth_Data.Desc_TR_L6, q_CB_Cons_Report_CurrMonth_Data.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_Data
SELECT q_CB_Cons_Report_Union.rep_Month, q_CB_Cons_Report_Union.L_1, q_CB_Cons_Report_Union.L_2, q_CB_Cons_Report_Union.L_3, q_CB_Cons_Report_Union.L_4, q_CB_Cons_Report_Union.L_5, q_CB_Cons_Report_Union.L_6, q_CB_Cons_Report_Union.Currency, Sum(IIf([q_CB_Cons_Report_EndProject_Data].[Income] Is Null,"0",[q_CB_Cons_Report_EndProject_Data].[Income])) AS IncomeGT, Sum(IIf([q_CB_Cons_Report_EndProject_Data].[Expense] Is Null,"0",[q_CB_Cons_Report_EndProject_Data].[Expense])) AS ExpenseGT, [IncomeGT]-[ExpenseGT] AS ProfitGT, Sum(IIf([q_CB_Cons_Report_CurrMonth_Data_Group].[Income] Is Null,"0",[q_CB_Cons_Report_CurrMonth_Data_Group].[Income])) AS IncomeRT, Sum(IIf([q_CB_Cons_Report_CurrMonth_Data_Group].[Expense] Is Null,"0",[q_CB_Cons_Report_CurrMonth_Data_Group].[Expense])) AS ExpenseRT, [IncomeRT]-[ExpenseRT] AS ProfitRT, C6_Code.Desc_TR_L6, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, [IncomeGT]-[IncomeRT] AS IncomeREM, [ExpenseGT]-[ExpenseRT] AS ExpenseREM, [ProfitGT]-[ProfitRT] AS ProfitREM, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM ((((((q_CB_Cons_Report_Union LEFT JOIN q_CB_Cons_Report_CurrMonth_Data_Group ON (q_CB_Cons_Report_Union.rep_Month = q_CB_Cons_Report_CurrMonth_Data_Group.rep_Month) AND (q_CB_Cons_Report_Union.L_1 = q_CB_Cons_Report_CurrMonth_Data_Group.L_1) AND (q_CB_Cons_Report_Union.L_2 = q_CB_Cons_Report_CurrMonth_Data_Group.L_2) AND (q_CB_Cons_Report_Union.L_3 = q_CB_Cons_Report_CurrMonth_Data_Group.L_3) AND (q_CB_Cons_Report_Union.L_4 = q_CB_Cons_Report_CurrMonth_Data_Group.L_4) AND (q_CB_Cons_Report_Union.L_5 = q_CB_Cons_Report_CurrMonth_Data_Group.L_5) AND (q_CB_Cons_Report_Union.L_6 = q_CB_Cons_Report_CurrMonth_Data_Group.L_6) AND (q_CB_Cons_Report_Union.Currency = q_CB_Cons_Report_CurrMonth_Data_Group.Currency)) LEFT JOIN q_CB_Cons_Report_EndProject_Data ON (q_CB_Cons_Report_Union.rep_Month = q_CB_Cons_Report_EndProject_Data.rep_Month) AND (q_CB_Cons_Report_Union.L_1 = q_CB_Cons_Report_EndProject_Data.L_1) AND (q_CB_Cons_Report_Union.L_2 = q_CB_Cons_Report_EndProject_Data.L_2) AND (q_CB_Cons_Report_Union.L_3 = q_CB_Cons_Report_EndProject_Data.L_3) AND (q_CB_Cons_Report_Union.L_4 = q_CB_Cons_Report_EndProject_Data.L_4) AND (q_CB_Cons_Report_Union.L_5 = q_CB_Cons_Report_EndProject_Data.L_5) AND (q_CB_Cons_Report_Union.L_6 = q_CB_Cons_Report_EndProject_Data.L_6) AND (q_CB_Cons_Report_Union.Currency = q_CB_Cons_Report_EndProject_Data.Currency)) LEFT JOIN C6_Code ON (q_CB_Cons_Report_Union.L_1 = C6_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C6_Code.c_L2) AND (q_CB_Cons_Report_Union.L_3 = C6_Code.c_L3) AND (q_CB_Cons_Report_Union.L_4 = C6_Code.c_L4) AND (q_CB_Cons_Report_Union.L_5 = C6_Code.c_L5) AND (q_CB_Cons_Report_Union.L_6 = C6_Code.c_L6)) LEFT JOIN C2_Code ON (q_CB_Cons_Report_Union.L_1 = C2_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C2_Code.c_L2)) LEFT JOIN C3_Code ON (q_CB_Cons_Report_Union.L_1 = C3_Code.c_L1) AND (q_CB_Cons_Report_Union.L_2 = C3_Code.c_L2) AND (q_CB_Cons_Report_Union.L_3 = C3_Code.c_L3)) LEFT JOIN C5_Code ON (q_CB_Cons_Report_Union.L_5 = C5_Code.c_L5) AND (q_CB_Cons_Report_Union.L_4 = C5_Code.c_L4) AND (q_CB_Cons_Report_Union.L_3 = C5_Code.c_L3) AND (q_CB_Cons_Report_Union.L_2 = C5_Code.c_L2) AND (q_CB_Cons_Report_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_CB_Cons_Report_Union.L_4 = C4_Code.c_L4) AND (q_CB_Cons_Report_Union.L_3 = C4_Code.c_L3) AND (q_CB_Cons_Report_Union.L_2 = C4_Code.c_L2) AND (q_CB_Cons_Report_Union.L_1 = C4_Code.c_L1)
GROUP BY q_CB_Cons_Report_Union.rep_Month, q_CB_Cons_Report_Union.L_1, q_CB_Cons_Report_Union.L_2, q_CB_Cons_Report_Union.L_3, q_CB_Cons_Report_Union.L_4, q_CB_Cons_Report_Union.L_5, q_CB_Cons_Report_Union.L_6, q_CB_Cons_Report_Union.Currency, C6_Code.Desc_TR_L6, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_EndProject_Data
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, Sum(t_CB_Profit_USD_ST.Income) AS Income, Sum(t_CB_Profit_USD_ST.Expense) AS Expense, Sum(t_CB_Profit_USD_ST.Profit) AS Profit, t_CB_Profit_USD_ST.Currency
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Cons_Report_Union
SELECT 
		rep_Month,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency
	FROM 
		q_CB_Cons_Report_CurrMonth_Data

UNION SELECT 
		rep_Month,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency

	FROM 
		q_CB_Cons_Report_EndProject_Data;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Month
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Month_Mod
SELECT q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month
FROM t_Rep_Month RIGHT JOIN q_Budget_Project_Months ON t_Rep_Month.rep_Month = q_Budget_Project_Months.rep_Month
GROUP BY q_Budget_Project_Months.PC, t_Rep_Month.rep_Month_Date, q_Budget_Project_Months.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Val
SELECT q_CB_Curr_Base_Month.rep_Month, q_CB_Curr_Base_Month.rep_Month_Date, Mon_Curr_Rates.r_EUR_EUR, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_TRY_EUR, Mon_Curr_Rates.r_TRY_TRY, Mon_Curr_Rates.r_TRY_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_USD_USD
FROM q_CB_Curr_Base_Month LEFT JOIN Mon_Curr_Rates ON (q_CB_Curr_Base_Month.rep_Month_Date = Mon_Curr_Rates.Month) AND (q_CB_Curr_Base_Month.rep_Month = Mon_Curr_Rates.rep_Month)
GROUP BY q_CB_Curr_Base_Month.rep_Month, q_CB_Curr_Base_Month.rep_Month_Date, Mon_Curr_Rates.r_EUR_EUR, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_TRY_EUR, Mon_Curr_Rates.r_TRY_TRY, Mon_Curr_Rates.r_TRY_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_USD_USD;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Base_Val_Mod
SELECT q_CB_Curr_Base_Month.rep_Month_Date, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_USD, q_CB_Curr_Base_Month.rep_Month
FROM q_CB_Curr_Base_Month LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Curr_Base_Month.rep_Month_Date = q_Monthly_Curr_Rates_Mod_CrossTab.Month
GROUP BY q_CB_Curr_Base_Month.rep_Month_Date, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_TRY_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_USD, q_CB_Curr_Base_Month.rep_Month;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Escalation_Rates
SELECT q_CB_Active_Months_Res_Qty.rep_Month, q_CB_Active_Months_Res_Qty.PC, q_CB_Active_Months_Res_Qty.L_1, q_CB_Active_Months_Res_Qty.L_2, q_CB_Active_Months_Res_Qty.L_3, q_CB_Active_Months_Res_Qty.L_4, q_CB_Active_Months_Res_Qty.L_5, q_CB_Active_Months_Res_Qty.L_6, q_CB_Active_Months_Res_Qty.Exp_CB_Mon AS [Month], q_CB_Active_Months_Res_Qty.rs_L1, q_CB_Active_Months_Res_Qty.rs_L2, q_CB_Active_Months_Res_Qty.rs_L3, q_CB_Active_Months_Res_Qty.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty.Key_R4_Simple, q_CB_Active_Months_Res_Qty.Key_Full, q_CB_Active_Months_Res_Qty.Key_R_PC_L6, q_CB_Active_Months_Res_Qty.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_CB_Active_Months_Res_Qty LEFT JOIN q_CB_Monthly_Curr_Rates_Inc ON (q_CB_Active_Months_Res_Qty.rep_Month = q_CB_Monthly_Curr_Rates_Inc.rep_Month) AND (q_CB_Active_Months_Res_Qty.PC = q_CB_Monthly_Curr_Rates_Inc.PC) AND (q_CB_Active_Months_Res_Qty.Exp_CB_Mon = q_CB_Monthly_Curr_Rates_Inc.Exp_CB_Mon)) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Curr_Escalation_Rates_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon AS [Month], q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, IIf(([Currency]="TRY" And [w_INF_USD]<>0),1+Round([rt_USD_TRY]*[w_INF_USD],6),(IIf([Currency]="EUR" And [w_INF_USD]<>0,1+Round([rt_USD_EUR]*[w_INF_USD],6),1))) AS k_USD, IIf(([Currency]="TRY" And [w_INF_EUR]<>0),1+Round([rt_EUR_TRY]*[w_INF_EUR],6),(IIf([Currency]="USD" And [w_INF_EUR]<>0,1+Round([rt_EUR_USD]*[w_INF_EUR],6),1))) AS k_EUR, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.Currency AS rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple, q_CB_Active_Months_Res_Qty_Mod.Key_Full, q_CB_Active_Months_Res_Qty_Mod.Key_R_PC_L6, q_CB_Active_Months_Res_Qty_Mod.Key_R4, [Key_Full] & "." & [rs_Currency] & "." & [Month] AS Key_Full_Comb
FROM (q_CB_Active_Months_Res_Qty_Mod LEFT JOIN q_CB_Monthly_Curr_Rates_Inc_Mod ON (q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon = q_CB_Monthly_Curr_Rates_Inc_Mod.Exp_CB_Mon) AND (q_CB_Active_Months_Res_Qty_Mod.PC = q_CB_Monthly_Curr_Rates_Inc_Mod.PC) AND (q_CB_Active_Months_Res_Qty_Mod.rep_Month = q_CB_Monthly_Curr_Rates_Inc_Mod.rep_Month)) LEFT JOIN R4_Code ON q_CB_Active_Months_Res_Qty_Mod.Key_R4_Simple = R4_Code.Key_R4_Simple;

----------------------------------------------------------------------------------------------------
q_CB_Exp
SELECT 
		*
	FROM 
q_PL_Exp
		
Where total_expense <>0

UNION ALL SELECT 
		*
	FROM 
		t_AC_Exp

Where Exp_AC_Exp <>0;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Diff
SELECT q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.up_Curr, q_CB_Exp.Total_Expense AS Exp_Orj, q_CB_Exp_Mod.Total_Expense AS Exp_Mod, ([Exp_Orj])-([Exp_Mod]) AS Diff
FROM q_CB_Exp_Mod LEFT JOIN q_CB_Exp ON (q_CB_Exp_Mod.rep_Month = q_CB_Exp.rep_Month) AND (q_CB_Exp_Mod.P01_Code = q_CB_Exp.P01_Code) AND (q_CB_Exp_Mod.L_1 = q_CB_Exp.L_1) AND (q_CB_Exp_Mod.L_2 = q_CB_Exp.L_2) AND (q_CB_Exp_Mod.L_3 = q_CB_Exp.L_3) AND (q_CB_Exp_Mod.L_4 = q_CB_Exp.L_4) AND (q_CB_Exp_Mod.L_5 = q_CB_Exp.L_5) AND (q_CB_Exp_Mod.L_6 = q_CB_Exp.L_6) AND (q_CB_Exp_Mod.Month = q_CB_Exp.Month) AND (q_CB_Exp_Mod.up_Curr = q_CB_Exp.up_Curr);

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_EUR_With_Dummy
TRANSFORM Sum(q_CB_Exp_EUR_With_Dummy.EUR_Expense) AS SumOfEUR_Expense
SELECT q_CB_Exp_EUR_With_Dummy.rep_Month, q_CB_Exp_EUR_With_Dummy.PC, q_CB_Exp_EUR_With_Dummy.L_1, q_CB_Exp_EUR_With_Dummy.L_2, q_CB_Exp_EUR_With_Dummy.L_3, q_CB_Exp_EUR_With_Dummy.L_4, q_CB_Exp_EUR_With_Dummy.L_5, q_CB_Exp_EUR_With_Dummy.L_6, q_CB_Exp_EUR_With_Dummy.up_curr_Conv
FROM q_CB_Exp_EUR_With_Dummy
GROUP BY q_CB_Exp_EUR_With_Dummy.rep_Month, q_CB_Exp_EUR_With_Dummy.PC, q_CB_Exp_EUR_With_Dummy.L_1, q_CB_Exp_EUR_With_Dummy.L_2, q_CB_Exp_EUR_With_Dummy.L_3, q_CB_Exp_EUR_With_Dummy.L_4, q_CB_Exp_EUR_With_Dummy.L_5, q_CB_Exp_EUR_With_Dummy.L_6, q_CB_Exp_EUR_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_EUR_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_EUR_With_Dummy_Mod.EUR_Expense) AS SumOfEUR_Expense
SELECT q_CB_Exp_EUR_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_EUR_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_EUR_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_EUR_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_EUR_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_EUR_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_EUR_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_EUR_With_Dummy_Mod.up_curr_Conv AS Expr9
FROM q_CB_Exp_EUR_With_Dummy_Mod
WHERE (((q_CB_Exp_EUR_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_EUR_With_Dummy_Mod.rep_Month, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code, q_CB_Exp_EUR_With_Dummy_Mod.L_1, q_CB_Exp_EUR_With_Dummy_Mod.L_2, q_CB_Exp_EUR_With_Dummy_Mod.L_3, q_CB_Exp_EUR_With_Dummy_Mod.L_4, q_CB_Exp_EUR_With_Dummy_Mod.L_5, q_CB_Exp_EUR_With_Dummy_Mod.L_6, q_CB_Exp_EUR_With_Dummy_Mod.up_curr_Conv
ORDER BY q_CB_Exp_EUR_With_Dummy_Mod.rep_Month, q_CB_Exp_EUR_With_Dummy_Mod.P01_Code, q_CB_Exp_EUR_With_Dummy_Mod.L_1, q_CB_Exp_EUR_With_Dummy_Mod.L_2, q_CB_Exp_EUR_With_Dummy_Mod.L_3, q_CB_Exp_EUR_With_Dummy_Mod.L_4, q_CB_Exp_EUR_With_Dummy_Mod.L_5, q_CB_Exp_EUR_With_Dummy_Mod.L_6, q_CB_Exp_EUR_With_Dummy_Mod.Month
PIVOT q_CB_Exp_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_TRY_With_Dummy
TRANSFORM Sum(q_CB_Exp_TRY_With_Dummy.TRY_Expense) AS SumOfTRY_Expense
SELECT q_CB_Exp_TRY_With_Dummy.rep_Month, q_CB_Exp_TRY_With_Dummy.PC, q_CB_Exp_TRY_With_Dummy.L_1, q_CB_Exp_TRY_With_Dummy.L_2, q_CB_Exp_TRY_With_Dummy.L_3, q_CB_Exp_TRY_With_Dummy.L_4, q_CB_Exp_TRY_With_Dummy.L_5, q_CB_Exp_TRY_With_Dummy.L_6, q_CB_Exp_TRY_With_Dummy.up_curr_Conv
FROM q_CB_Exp_TRY_With_Dummy
GROUP BY q_CB_Exp_TRY_With_Dummy.rep_Month, q_CB_Exp_TRY_With_Dummy.PC, q_CB_Exp_TRY_With_Dummy.L_1, q_CB_Exp_TRY_With_Dummy.L_2, q_CB_Exp_TRY_With_Dummy.L_3, q_CB_Exp_TRY_With_Dummy.L_4, q_CB_Exp_TRY_With_Dummy.L_5, q_CB_Exp_TRY_With_Dummy.L_6, q_CB_Exp_TRY_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_TRY_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_TRY_With_Dummy_Mod.TRY_Expense) AS SumOfTRY_Expense
SELECT q_CB_Exp_TRY_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_TRY_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_TRY_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_TRY_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_TRY_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_TRY_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_TRY_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_TRY_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_TRY_With_Dummy_Mod.up_curr_Conv AS Expr9
FROM q_CB_Exp_TRY_With_Dummy_Mod
WHERE (((q_CB_Exp_TRY_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_TRY_With_Dummy_Mod.rep_Month, q_CB_Exp_TRY_With_Dummy_Mod.P01_Code, q_CB_Exp_TRY_With_Dummy_Mod.L_1, q_CB_Exp_TRY_With_Dummy_Mod.L_2, q_CB_Exp_TRY_With_Dummy_Mod.L_3, q_CB_Exp_TRY_With_Dummy_Mod.L_4, q_CB_Exp_TRY_With_Dummy_Mod.L_5, q_CB_Exp_TRY_With_Dummy_Mod.L_6, q_CB_Exp_TRY_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Exp_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_USD_With_Dummy
TRANSFORM Sum(q_CB_Exp_USD_With_Dummy.USD_Expense) AS SumOfUSD_Expense
SELECT q_CB_Exp_USD_With_Dummy.rep_Month, q_CB_Exp_USD_With_Dummy.PC, q_CB_Exp_USD_With_Dummy.L_1, q_CB_Exp_USD_With_Dummy.L_2, q_CB_Exp_USD_With_Dummy.L_3, q_CB_Exp_USD_With_Dummy.L_4, q_CB_Exp_USD_With_Dummy.L_5, q_CB_Exp_USD_With_Dummy.L_6, q_CB_Exp_USD_With_Dummy.up_curr_Conv
FROM q_CB_Exp_USD_With_Dummy
GROUP BY q_CB_Exp_USD_With_Dummy.rep_Month, q_CB_Exp_USD_With_Dummy.PC, q_CB_Exp_USD_With_Dummy.L_1, q_CB_Exp_USD_With_Dummy.L_2, q_CB_Exp_USD_With_Dummy.L_3, q_CB_Exp_USD_With_Dummy.L_4, q_CB_Exp_USD_With_Dummy.L_5, q_CB_Exp_USD_With_Dummy.L_6, q_CB_Exp_USD_With_Dummy.up_curr_Conv
PIVOT q_CB_Exp_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_USD_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_USD_With_Dummy_Mod.USD_Expense) AS SumOfUSD_Expense
SELECT q_CB_Exp_USD_With_Dummy_Mod.rep_Month, q_CB_Exp_USD_With_Dummy_Mod.P01_Code AS PC, q_CB_Exp_USD_With_Dummy_Mod.L_1, q_CB_Exp_USD_With_Dummy_Mod.L_2, q_CB_Exp_USD_With_Dummy_Mod.L_3, q_CB_Exp_USD_With_Dummy_Mod.L_4, q_CB_Exp_USD_With_Dummy_Mod.L_5, q_CB_Exp_USD_With_Dummy_Mod.L_6, q_CB_Exp_USD_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Exp_USD_With_Dummy_Mod
WHERE (((q_CB_Exp_USD_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_USD_With_Dummy_Mod.rep_Month, q_CB_Exp_USD_With_Dummy_Mod.P01_Code, q_CB_Exp_USD_With_Dummy_Mod.L_1, q_CB_Exp_USD_With_Dummy_Mod.L_2, q_CB_Exp_USD_With_Dummy_Mod.L_3, q_CB_Exp_USD_With_Dummy_Mod.L_4, q_CB_Exp_USD_With_Dummy_Mod.L_5, q_CB_Exp_USD_With_Dummy_Mod.L_6, q_CB_Exp_USD_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Exp_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_With_Dummy
TRANSFORM Sum(q_CB_Exp_With_Dummy.Total_Expense) AS SumOfTotal_Expense
SELECT q_CB_Exp_With_Dummy.rep_Month, q_CB_Exp_With_Dummy.P01_Code, q_CB_Exp_With_Dummy.L_1, q_CB_Exp_With_Dummy.L_2, q_CB_Exp_With_Dummy.L_3, q_CB_Exp_With_Dummy.L_4, q_CB_Exp_With_Dummy.L_5, q_CB_Exp_With_Dummy.L_6, q_CB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Exp_With_Dummy
GROUP BY q_CB_Exp_With_Dummy.rep_Month, q_CB_Exp_With_Dummy.P01_Code, q_CB_Exp_With_Dummy.L_1, q_CB_Exp_With_Dummy.L_2, q_CB_Exp_With_Dummy.L_3, q_CB_Exp_With_Dummy.L_4, q_CB_Exp_With_Dummy.L_5, q_CB_Exp_With_Dummy.L_6, q_CB_Exp_With_Dummy.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Exp_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Dist_With_Dummy_Mod
TRANSFORM Sum(q_CB_Exp_With_Dummy_Mod.Total_Expense) AS SumOfTotal_Expense
SELECT q_CB_Exp_With_Dummy_Mod.rep_Month AS Expr1, q_CB_Exp_With_Dummy_Mod.P01_Code AS Expr2, q_CB_Exp_With_Dummy_Mod.L_1 AS Expr3, q_CB_Exp_With_Dummy_Mod.L_2 AS Expr4, q_CB_Exp_With_Dummy_Mod.L_3 AS Expr5, q_CB_Exp_With_Dummy_Mod.L_4 AS Expr6, q_CB_Exp_With_Dummy_Mod.L_5 AS Expr7, q_CB_Exp_With_Dummy_Mod.L_6 AS Expr8, q_CB_Exp_With_Dummy_Mod.up_Curr AS Expr9, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Exp_With_Dummy_Mod
WHERE (((q_CB_Exp_With_Dummy_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
GROUP BY q_CB_Exp_With_Dummy_Mod.rep_Month, q_CB_Exp_With_Dummy_Mod.P01_Code, q_CB_Exp_With_Dummy_Mod.L_1, q_CB_Exp_With_Dummy_Mod.L_2, q_CB_Exp_With_Dummy_Mod.L_3, q_CB_Exp_With_Dummy_Mod.L_4, q_CB_Exp_With_Dummy_Mod.L_5, q_CB_Exp_With_Dummy_Mod.L_6, q_CB_Exp_With_Dummy_Mod.up_Curr, IIf([up_Curr]="EUR","r_EUR_TRY",IIf([up_Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([up_Curr]="EUR","r_EUR_USD",IIf([up_Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([up_Curr]="EUR","r_EUR_EUR",IIf([up_Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Exp_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="EUR",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_EUR],[Total_Expense]*[r_TRY_EUR])) AS EUR_Expense, "EUR" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_EUR

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_EUR_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_EUR_Mod


UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_LastM
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, Max(t_AC_Exp.Exp_AC_Mon) AS LastM
FROM t_AC_Exp
GROUP BY t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_LastM_Mod
SELECT q_CB_Exp_LastM.rep_Month, q_CB_Exp_LastM.PC, q_CB_Exp_LastM.L_1, q_CB_Exp_LastM.L_2, q_CB_Exp_LastM.L_3, q_CB_Exp_LastM.L_4, q_CB_Exp_LastM.L_5, q_CB_Exp_LastM.L_6, q_CB_Exp_LastM.LastM
FROM q_CB_Exp_LastM
WHERE (((q_CB_Exp_LastM.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod
SELECT 
		*
	FROM 
q_PL_Exp_Mod
		
Where total_expense <>0

UNION ALL SELECT 
		*
	FROM 
		q_CB_Exp_Pre_Mod

Where Total_Expense <>0;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT
SELECT q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.Total_Expense, q_CB_Exp_Mod.up_Curr, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_Mod
FROM q_CB_Exp_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_Mod.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_Mod.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_Mod.rep_Month, q_CB_Exp_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_Mod.Month, q_CB_Exp_Mod.Total_Expense, q_CB_Exp_Mod.up_Curr, q_CB_Exp_Mod.L_1, q_CB_Exp_Mod.L_2, q_CB_Exp_Mod.L_3, q_CB_Exp_Mod.L_4, q_CB_Exp_Mod.L_5, q_CB_Exp_Mod.L_6, q_CB_Exp_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_EUR
SELECT q_CB_Exp_EUR_Mod.rep_Month, q_CB_Exp_EUR_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR_Mod.Month, q_CB_Exp_EUR_Mod.EUR_Expense, q_CB_Exp_EUR_Mod.up_Curr_Conv, q_CB_Exp_EUR_Mod.L_1, q_CB_Exp_EUR_Mod.L_2, q_CB_Exp_EUR_Mod.L_3, q_CB_Exp_EUR_Mod.L_4, q_CB_Exp_EUR_Mod.L_5, q_CB_Exp_EUR_Mod.L_6, q_CB_Exp_EUR_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_EUR_Mod
FROM q_CB_Exp_EUR_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_EUR_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_EUR_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_EUR_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_EUR_Mod.rep_Month, q_CB_Exp_EUR_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR_Mod.Month, q_CB_Exp_EUR_Mod.EUR_Expense, q_CB_Exp_EUR_Mod.up_Curr_Conv, q_CB_Exp_EUR_Mod.L_1, q_CB_Exp_EUR_Mod.L_2, q_CB_Exp_EUR_Mod.L_3, q_CB_Exp_EUR_Mod.L_4, q_CB_Exp_EUR_Mod.L_5, q_CB_Exp_EUR_Mod.L_6, q_CB_Exp_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_TRY
SELECT q_CB_Exp_TRY_Mod.rep_Month, q_CB_Exp_TRY_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY_Mod.Month, q_CB_Exp_TRY_Mod.TRY_Expense, q_CB_Exp_TRY_Mod.up_Curr_Conv, q_CB_Exp_TRY_Mod.L_1, q_CB_Exp_TRY_Mod.L_2, q_CB_Exp_TRY_Mod.L_3, q_CB_Exp_TRY_Mod.L_4, q_CB_Exp_TRY_Mod.L_5, q_CB_Exp_TRY_Mod.L_6, q_CB_Exp_TRY_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_TRY_Mod
FROM q_CB_Exp_TRY_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_TRY_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_TRY_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_TRY_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_TRY_Mod.rep_Month, q_CB_Exp_TRY_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY_Mod.Month, q_CB_Exp_TRY_Mod.TRY_Expense, q_CB_Exp_TRY_Mod.up_Curr_Conv, q_CB_Exp_TRY_Mod.L_1, q_CB_Exp_TRY_Mod.L_2, q_CB_Exp_TRY_Mod.L_3, q_CB_Exp_TRY_Mod.L_4, q_CB_Exp_TRY_Mod.L_5, q_CB_Exp_TRY_Mod.L_6, q_CB_Exp_TRY_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Mod_MT_USD
SELECT q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.USD_Expense, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.Key_R_PC_L6 INTO t_q_CB_Exp_USD_Mod
FROM q_CB_Exp_USD_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Exp_USD_Mod.L_3 = C3_Code.[c_L3]) AND (q_CB_Exp_USD_Mod.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_USD_Mod.L_1 = C3_Code.[c_L1])
GROUP BY q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.USD_Expense, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code AS PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp.Month, Sum(q_CB_Exp.Total_Expense) AS Total_Expense, q_CB_Exp.up_Curr, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.Key_R_PC_L6 INTO t_q_CB_Exp
FROM q_CB_Exp LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp.Month, q_CB_Exp.up_Curr, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_EUR
SELECT q_CB_Exp_EUR.rep_Month, q_CB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR.Month, Sum(q_CB_Exp_EUR.EUR_Expense) AS SumOfEUR_Expense, q_CB_Exp_EUR.up_Curr_Conv, q_CB_Exp_EUR.L_1, q_CB_Exp_EUR.L_2, q_CB_Exp_EUR.L_3, q_CB_Exp_EUR.L_4, q_CB_Exp_EUR.L_5, q_CB_Exp_EUR.L_6, q_CB_Exp_EUR.Key_R_PC_L6 INTO t_q_CB_Exp_EUR
FROM q_CB_Exp_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_EUR.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_EUR.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_EUR.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_EUR.rep_Month, q_CB_Exp_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_EUR.Month, q_CB_Exp_EUR.up_Curr_Conv, q_CB_Exp_EUR.L_1, q_CB_Exp_EUR.L_2, q_CB_Exp_EUR.L_3, q_CB_Exp_EUR.L_4, q_CB_Exp_EUR.L_5, q_CB_Exp_EUR.L_6, q_CB_Exp_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_TRY
SELECT q_CB_Exp_TRY.rep_Month, q_CB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY.Month, Sum(q_CB_Exp_TRY.TRY_Expense) AS TRY_Expense, q_CB_Exp_TRY.up_Curr_Conv, q_CB_Exp_TRY.L_1, q_CB_Exp_TRY.L_2, q_CB_Exp_TRY.L_3, q_CB_Exp_TRY.L_4, q_CB_Exp_TRY.L_5, q_CB_Exp_TRY.L_6, q_CB_Exp_TRY.Key_R_PC_L6 INTO t_q_CB_Exp_TRY
FROM q_CB_Exp_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_TRY.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_TRY.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_TRY.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_TRY.rep_Month, q_CB_Exp_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_TRY.Month, q_CB_Exp_TRY.up_Curr_Conv, q_CB_Exp_TRY.L_1, q_CB_Exp_TRY.L_2, q_CB_Exp_TRY.L_3, q_CB_Exp_TRY.L_4, q_CB_Exp_TRY.L_5, q_CB_Exp_TRY.L_6, q_CB_Exp_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_MT_USD
SELECT q_CB_Exp_USD.rep_Month, q_CB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD.Month, Sum(q_CB_Exp_USD.USD_Expense) AS USD_Expense, q_CB_Exp_USD.up_Curr_Conv, q_CB_Exp_USD.L_1, q_CB_Exp_USD.L_2, q_CB_Exp_USD.L_3, q_CB_Exp_USD.L_4, q_CB_Exp_USD.L_5, q_CB_Exp_USD.L_6, q_CB_Exp_USD.Key_R_PC_L6 INTO t_q_CB_Exp_USD
FROM q_CB_Exp_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Exp_USD.L_1 = C3_Code.[c_L1]) AND (q_CB_Exp_USD.L_2 = C3_Code.[c_L2]) AND (q_CB_Exp_USD.L_3 = C3_Code.[c_L3])
GROUP BY q_CB_Exp_USD.rep_Month, q_CB_Exp_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Exp_USD.Month, q_CB_Exp_USD.up_Curr_Conv, q_CB_Exp_USD.L_1, q_CB_Exp_USD.L_2, q_CB_Exp_USD.L_3, q_CB_Exp_USD.L_4, q_CB_Exp_USD.L_5, q_CB_Exp_USD.L_6, q_CB_Exp_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Exp_Pre_Mod
SELECT t_AC_Exp.rep_Month, t_AC_Exp.PC, t_AC_Exp.L_1, t_AC_Exp.L_2, t_AC_Exp.L_3, t_AC_Exp.L_4, t_AC_Exp.L_5, t_AC_Exp.L_6, t_AC_Exp.Exp_AC_Mon AS [Month], t_AC_Exp.Exp_AC_Exp AS Total_Expense, t_AC_Exp.up_Curr, t_AC_Exp.Key_R_PC_L6
FROM t_AC_Exp
WHERE (((t_AC_Exp.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="TRY",[Total_Expense],IIf([up_Curr]="USD",[Total_Expense]*[r_USD_TRY],[Total_Expense]*[r_EUR_TRY])) AS TRY_Expense, "TRY" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6


	FROM 
		q_CB_Exp_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_TRY_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_TRY_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD
SELECT t_q_CB_Exp.rep_Month, t_q_CB_Exp.PC, t_q_CB_Exp.L_1, t_q_CB_Exp.L_2, t_q_CB_Exp.L_3, t_q_CB_Exp.L_4, t_q_CB_Exp.L_5, t_q_CB_Exp.L_6, t_q_CB_Exp.Month, t_q_CB_Exp.Total_Expense, t_q_CB_Exp.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="EUR",[Total_Expense]*[r_EUR_USD],[Total_Expense]*[r_TRY_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp LEFT JOIN Mon_Curr_Rates ON (t_q_CB_Exp.Month = Mon_Curr_Rates.Month) AND (t_q_CB_Exp.rep_Month = Mon_Curr_Rates.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_Diff
SELECT q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.P01_Code, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.up_Curr_Conv, q_CB_Exp_USD.USD_Expense AS Exp_Orj, q_CB_Exp_USD_Mod.USD_Expense AS Exp_Mod, [Exp_Orj]-[Exp_Mod] AS Diff, q_CB_Exp_USD_Mod.up_Curr
FROM q_CB_Exp_USD_Mod LEFT JOIN q_CB_Exp_USD ON (q_CB_Exp_USD_Mod.rep_Month = q_CB_Exp_USD.rep_Month) AND (q_CB_Exp_USD_Mod.P01_Code = q_CB_Exp_USD.PC) AND (q_CB_Exp_USD_Mod.L_1 = q_CB_Exp_USD.L_1) AND (q_CB_Exp_USD_Mod.L_2 = q_CB_Exp_USD.L_2) AND (q_CB_Exp_USD_Mod.L_3 = q_CB_Exp_USD.L_3) AND (q_CB_Exp_USD_Mod.L_4 = q_CB_Exp_USD.L_4) AND (q_CB_Exp_USD_Mod.L_5 = q_CB_Exp_USD.L_5) AND (q_CB_Exp_USD_Mod.L_6 = q_CB_Exp_USD.L_6) AND (q_CB_Exp_USD_Mod.Month = q_CB_Exp_USD.Month) AND (q_CB_Exp_USD_Mod.up_Curr = q_CB_Exp_USD.up_Curr) AND (q_CB_Exp_USD_Mod.up_Curr_Conv = q_CB_Exp_USD.up_Curr_Conv)
ORDER BY q_CB_Exp_USD_Mod.rep_Month, q_CB_Exp_USD_Mod.Month, q_CB_Exp_USD_Mod.P01_Code, q_CB_Exp_USD_Mod.L_1, q_CB_Exp_USD_Mod.L_2, q_CB_Exp_USD_Mod.L_3, q_CB_Exp_USD_Mod.L_4, q_CB_Exp_USD_Mod.L_5, q_CB_Exp_USD_Mod.L_6, q_CB_Exp_USD_Mod.up_Curr_Conv;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_Mod
SELECT t_q_CB_Exp_Mod.rep_Month, t_q_CB_Exp_Mod.P01_Code, t_q_CB_Exp_Mod.L_1, t_q_CB_Exp_Mod.L_2, t_q_CB_Exp_Mod.L_3, t_q_CB_Exp_Mod.L_4, t_q_CB_Exp_Mod.L_5, t_q_CB_Exp_Mod.L_6, t_q_CB_Exp_Mod.Month, t_q_CB_Exp_Mod.Total_Expense, t_q_CB_Exp_Mod.up_Curr, IIf([up_Curr]="USD",[Total_Expense],IIf([up_Curr]="EUR",[Total_Expense]*[r_EUR_USD],[Total_Expense]*[r_TRY_USD])) AS USD_Expense, "USD" AS up_Curr_Conv, t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_q_CB_Exp_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_USD_With_Dummy_Mod
SELECT 
		rep_Month,
P01_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Expense,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Exp_USD_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_With_Dummy
SELECT 
		*
	FROM 
		q_CB_Exp

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Exp_With_Dummy_Mod
SELECT 
		*
	FROM 
		q_CB_Exp_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Calculation
SELECT t_CB_Inc_Qty.rep_Month, t_CB_Inc_Qty.PC, t_CB_Inc_Qty.L_1, t_CB_Inc_Qty.L_2, t_CB_Inc_Qty.L_3, t_CB_Inc_Qty.L_4, t_CB_Inc_Qty.L_5, t_CB_Inc_Qty.L_6, t_CB_Inc_Qty.Inc_Base_Mon, IIf([Inc_Rate] Is Null,1,1+[Inc_Rate]) AS Inc_Rate_1, IIf([Inc_Rate_Pcode] Is Null,1,1+[Inc_Rate_Pcode]) AS Inc_Rate_2, t_CB_Inc_WBS.UP, t_CB_Inc_WBS.Currency, [UP]*[Inc_Rate_1]*[Inc_Rate_2] AS UP_Total, t_CB_Inc_Qty.Inc_Base_Qty, [UP_Total]*[Inc_Base_Qty] AS Inc_Total, t_CB_Inc_Qty.Key_R_PC_L6
FROM ((t_CB_Inc_Qty LEFT JOIN t_CB_Inc_Esc_Rates_L6 ON (t_CB_Inc_Qty.Inc_Base_Mon = t_CB_Inc_Esc_Rates_L6.Month) AND (t_CB_Inc_Qty.L_6 = t_CB_Inc_Esc_Rates_L6.c_L6) AND (t_CB_Inc_Qty.L_5 = t_CB_Inc_Esc_Rates_L6.c_L5) AND (t_CB_Inc_Qty.L_4 = t_CB_Inc_Esc_Rates_L6.c_L4) AND (t_CB_Inc_Qty.L_3 = t_CB_Inc_Esc_Rates_L6.c_L3) AND (t_CB_Inc_Qty.L_2 = t_CB_Inc_Esc_Rates_L6.c_L2) AND (t_CB_Inc_Qty.L_1 = t_CB_Inc_Esc_Rates_L6.c_L1) AND (t_CB_Inc_Qty.PC = t_CB_Inc_Esc_Rates_L6.P01_Code) AND (t_CB_Inc_Qty.rep_Month = t_CB_Inc_Esc_Rates_L6.rep_Month)) LEFT JOIN t_CB_Inc_Esc_Rates_Pcode ON (t_CB_Inc_Qty.Inc_Base_Mon = t_CB_Inc_Esc_Rates_Pcode.Month) AND (t_CB_Inc_Qty.PC = t_CB_Inc_Esc_Rates_Pcode.P01_Code) AND (t_CB_Inc_Qty.rep_Month = t_CB_Inc_Esc_Rates_Pcode.rep_Month)) LEFT JOIN t_CB_Inc_WBS ON t_CB_Inc_Qty.Key_R_PC_L6 = t_CB_Inc_WBS.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_EUR_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_EUR_With_Dummy.EUR_Income) AS EUR_Income
SELECT q_CB_Inc_EUR_With_Dummy.rep_Month, q_CB_Inc_EUR_With_Dummy.PC, q_CB_Inc_EUR_With_Dummy.L_1, q_CB_Inc_EUR_With_Dummy.L_2, q_CB_Inc_EUR_With_Dummy.L_3, q_CB_Inc_EUR_With_Dummy.L_4, q_CB_Inc_EUR_With_Dummy.L_5, q_CB_Inc_EUR_With_Dummy.L_6, q_CB_Inc_EUR_With_Dummy.up_curr_Conv
FROM q_CB_Inc_EUR_With_Dummy
GROUP BY q_CB_Inc_EUR_With_Dummy.rep_Month, q_CB_Inc_EUR_With_Dummy.PC, q_CB_Inc_EUR_With_Dummy.L_1, q_CB_Inc_EUR_With_Dummy.L_2, q_CB_Inc_EUR_With_Dummy.L_3, q_CB_Inc_EUR_With_Dummy.L_4, q_CB_Inc_EUR_With_Dummy.L_5, q_CB_Inc_EUR_With_Dummy.L_6, q_CB_Inc_EUR_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_EUR_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_EUR_With_Dummy_Mod.EUR_Income) AS EUR_Income
SELECT q_CB_Inc_EUR_With_Dummy_Mod.rep_Month, q_CB_Inc_EUR_With_Dummy_Mod.PC, q_CB_Inc_EUR_With_Dummy_Mod.L_1, q_CB_Inc_EUR_With_Dummy_Mod.L_2, q_CB_Inc_EUR_With_Dummy_Mod.L_3, q_CB_Inc_EUR_With_Dummy_Mod.L_4, q_CB_Inc_EUR_With_Dummy_Mod.L_5, q_CB_Inc_EUR_With_Dummy_Mod.L_6, q_CB_Inc_EUR_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_EUR_With_Dummy_Mod
GROUP BY q_CB_Inc_EUR_With_Dummy_Mod.rep_Month, q_CB_Inc_EUR_With_Dummy_Mod.PC, q_CB_Inc_EUR_With_Dummy_Mod.L_1, q_CB_Inc_EUR_With_Dummy_Mod.L_2, q_CB_Inc_EUR_With_Dummy_Mod.L_3, q_CB_Inc_EUR_With_Dummy_Mod.L_4, q_CB_Inc_EUR_With_Dummy_Mod.L_5, q_CB_Inc_EUR_With_Dummy_Mod.L_6, q_CB_Inc_EUR_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_TRY_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_TRY_With_Dummy.TRY_Income) AS TRY_Income
SELECT q_CB_Inc_TRY_With_Dummy.rep_Month, q_CB_Inc_TRY_With_Dummy.PC, q_CB_Inc_TRY_With_Dummy.L_1, q_CB_Inc_TRY_With_Dummy.L_2, q_CB_Inc_TRY_With_Dummy.L_3, q_CB_Inc_TRY_With_Dummy.L_4, q_CB_Inc_TRY_With_Dummy.L_5, q_CB_Inc_TRY_With_Dummy.L_6, q_CB_Inc_TRY_With_Dummy.up_curr_Conv
FROM q_CB_Inc_TRY_With_Dummy
GROUP BY q_CB_Inc_TRY_With_Dummy.rep_Month, q_CB_Inc_TRY_With_Dummy.PC, q_CB_Inc_TRY_With_Dummy.L_1, q_CB_Inc_TRY_With_Dummy.L_2, q_CB_Inc_TRY_With_Dummy.L_3, q_CB_Inc_TRY_With_Dummy.L_4, q_CB_Inc_TRY_With_Dummy.L_5, q_CB_Inc_TRY_With_Dummy.L_6, q_CB_Inc_TRY_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_TRY_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_TRY_With_Dummy_Mod.TRY_Income) AS TRY_Income
SELECT q_CB_Inc_TRY_With_Dummy_Mod.rep_Month, q_CB_Inc_TRY_With_Dummy_Mod.PC, q_CB_Inc_TRY_With_Dummy_Mod.L_1, q_CB_Inc_TRY_With_Dummy_Mod.L_2, q_CB_Inc_TRY_With_Dummy_Mod.L_3, q_CB_Inc_TRY_With_Dummy_Mod.L_4, q_CB_Inc_TRY_With_Dummy_Mod.L_5, q_CB_Inc_TRY_With_Dummy_Mod.L_6, q_CB_Inc_TRY_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_TRY_With_Dummy_Mod
GROUP BY q_CB_Inc_TRY_With_Dummy_Mod.rep_Month, q_CB_Inc_TRY_With_Dummy_Mod.PC, q_CB_Inc_TRY_With_Dummy_Mod.L_1, q_CB_Inc_TRY_With_Dummy_Mod.L_2, q_CB_Inc_TRY_With_Dummy_Mod.L_3, q_CB_Inc_TRY_With_Dummy_Mod.L_4, q_CB_Inc_TRY_With_Dummy_Mod.L_5, q_CB_Inc_TRY_With_Dummy_Mod.L_6, q_CB_Inc_TRY_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_USD_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_USD_With_Dummy.USD_Income) AS USD_Income
SELECT q_CB_Inc_USD_With_Dummy.rep_Month, q_CB_Inc_USD_With_Dummy.PC, q_CB_Inc_USD_With_Dummy.L_1, q_CB_Inc_USD_With_Dummy.L_2, q_CB_Inc_USD_With_Dummy.L_3, q_CB_Inc_USD_With_Dummy.L_4, q_CB_Inc_USD_With_Dummy.L_5, q_CB_Inc_USD_With_Dummy.L_6, q_CB_Inc_USD_With_Dummy.up_curr_Conv
FROM q_CB_Inc_USD_With_Dummy
GROUP BY q_CB_Inc_USD_With_Dummy.rep_Month, q_CB_Inc_USD_With_Dummy.PC, q_CB_Inc_USD_With_Dummy.L_1, q_CB_Inc_USD_With_Dummy.L_2, q_CB_Inc_USD_With_Dummy.L_3, q_CB_Inc_USD_With_Dummy.L_4, q_CB_Inc_USD_With_Dummy.L_5, q_CB_Inc_USD_With_Dummy.L_6, q_CB_Inc_USD_With_Dummy.up_curr_Conv
PIVOT q_CB_Inc_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_USD_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_USD_With_Dummy_Mod.USD_Income) AS USD_Income
SELECT q_CB_Inc_USD_With_Dummy_Mod.rep_Month, q_CB_Inc_USD_With_Dummy_Mod.PC, q_CB_Inc_USD_With_Dummy_Mod.L_1, q_CB_Inc_USD_With_Dummy_Mod.L_2, q_CB_Inc_USD_With_Dummy_Mod.L_3, q_CB_Inc_USD_With_Dummy_Mod.L_4, q_CB_Inc_USD_With_Dummy_Mod.L_5, q_CB_Inc_USD_With_Dummy_Mod.L_6, q_CB_Inc_USD_With_Dummy_Mod.up_curr_Conv
FROM q_CB_Inc_USD_With_Dummy_Mod
GROUP BY q_CB_Inc_USD_With_Dummy_Mod.rep_Month, q_CB_Inc_USD_With_Dummy_Mod.PC, q_CB_Inc_USD_With_Dummy_Mod.L_1, q_CB_Inc_USD_With_Dummy_Mod.L_2, q_CB_Inc_USD_With_Dummy_Mod.L_3, q_CB_Inc_USD_With_Dummy_Mod.L_4, q_CB_Inc_USD_With_Dummy_Mod.L_5, q_CB_Inc_USD_With_Dummy_Mod.L_6, q_CB_Inc_USD_With_Dummy_Mod.up_curr_Conv
PIVOT q_CB_Inc_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Dist_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Inc_With_Dummy.Inc_Total) AS Total_Income
SELECT q_CB_Inc_With_Dummy.rep_Month, q_CB_Inc_With_Dummy.PC, q_CB_Inc_With_Dummy.L_1, q_CB_Inc_With_Dummy.L_2, q_CB_Inc_With_Dummy.L_3, q_CB_Inc_With_Dummy.L_4, q_CB_Inc_With_Dummy.L_5, q_CB_Inc_With_Dummy.L_6, q_CB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Inc_With_Dummy
GROUP BY q_CB_Inc_With_Dummy.rep_Month, q_CB_Inc_With_Dummy.PC, q_CB_Inc_With_Dummy.L_1, q_CB_Inc_With_Dummy.L_2, q_CB_Inc_With_Dummy.L_3, q_CB_Inc_With_Dummy.L_4, q_CB_Inc_With_Dummy.L_5, q_CB_Inc_With_Dummy.L_6, q_CB_Inc_With_Dummy.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Inc_With_Dummy.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month) AND (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month)
ORDER BY t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="EUR",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_EUR],[Inc_Total]*[r_TRY_EUR])) AS EUR_Income, "EUR" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_Mod_MT
SELECT q_CB_Inc_EUR_Mod.rep_Month, q_CB_Inc_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR_Mod.Month, q_CB_Inc_EUR_Mod.EUR_Income, q_CB_Inc_EUR_Mod.up_Curr_Conv, q_CB_Inc_EUR_Mod.L_1, q_CB_Inc_EUR_Mod.L_2, q_CB_Inc_EUR_Mod.L_3, q_CB_Inc_EUR_Mod.L_4, q_CB_Inc_EUR_Mod.L_5, q_CB_Inc_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR_Mod.Key_R_PC_L6 INTO t_CB_Inc_EUR_Mod_ST
FROM (q_CB_Inc_EUR_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_EUR_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Inc_EUR_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_EUR_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_EUR_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Inc_EUR_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_EUR_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_EUR_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_EUR_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_EUR_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_EUR_Mod.rep_Month, q_CB_Inc_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR_Mod.Month, q_CB_Inc_EUR_Mod.EUR_Income, q_CB_Inc_EUR_Mod.up_Curr_Conv, q_CB_Inc_EUR_Mod.L_1, q_CB_Inc_EUR_Mod.L_2, q_CB_Inc_EUR_Mod.L_3, q_CB_Inc_EUR_Mod.L_4, q_CB_Inc_EUR_Mod.L_5, q_CB_Inc_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_MT
SELECT q_CB_Inc_EUR.rep_Month, q_CB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR.Month, Sum(q_CB_Inc_EUR.EUR_Income) AS EUR_Income, q_CB_Inc_EUR.up_Curr_Conv, q_CB_Inc_EUR.L_1, q_CB_Inc_EUR.L_2, q_CB_Inc_EUR.L_3, q_CB_Inc_EUR.L_4, q_CB_Inc_EUR.L_5, q_CB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR.Key_R_PC_L6 INTO t_CB_Inc_EUR_ST
FROM (q_CB_Inc_EUR LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_EUR.L_3 = C3_Code.c_L3) AND (q_CB_Inc_EUR.L_2 = C3_Code.c_L2) AND (q_CB_Inc_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_EUR.L_6 = C6_Code.c_L6) AND (q_CB_Inc_EUR.L_5 = C6_Code.c_L5) AND (q_CB_Inc_EUR.L_4 = C6_Code.c_L4) AND (q_CB_Inc_EUR.L_3 = C6_Code.c_L3) AND (q_CB_Inc_EUR.L_2 = C6_Code.c_L2) AND (q_CB_Inc_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_EUR.rep_Month, q_CB_Inc_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_EUR.Month, q_CB_Inc_EUR.up_Curr_Conv, q_CB_Inc_EUR.L_1, q_CB_Inc_EUR.L_2, q_CB_Inc_EUR.L_3, q_CB_Inc_EUR.L_4, q_CB_Inc_EUR.L_5, q_CB_Inc_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6

FROM 
q_CB_Inc_EUR

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_EUR_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
EUR_Income,
up_curr_Conv,
KEY_R_PC_L6

FROM 
q_CB_Inc_EUR_Mod

UNION ALL SELECT 
*
FROM 
q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_Qty
SELECT *
FROM t_CB_Inc_Qty;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Qty_Crosstab
TRANSFORM Sum(q_CB_Inc_Qty.Inc_Base_Qty) AS Inc_Base_Qty
SELECT q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
FROM q_CB_Inc_Qty
GROUP BY q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
ORDER BY q_CB_Inc_Qty.rep_Month, q_CB_Inc_Qty.PC, q_CB_Inc_Qty.L_1, q_CB_Inc_Qty.L_2, q_CB_Inc_Qty.L_3, q_CB_Inc_Qty.L_4, q_CB_Inc_Qty.L_5, q_CB_Inc_Qty.L_6
PIVOT q_CB_Inc_Qty.Inc_Base_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total
SELECT q_CB_Inc_Calculation.rep_Month, q_CB_Inc_Calculation.PC, q_CB_Inc_Calculation.L_1, q_CB_Inc_Calculation.L_2, q_CB_Inc_Calculation.L_3, q_CB_Inc_Calculation.L_4, q_CB_Inc_Calculation.L_5, q_CB_Inc_Calculation.L_6, q_CB_Inc_Calculation.Inc_Base_Mon, Sum(q_CB_Inc_Calculation.Inc_Total) AS Inc_Total, q_CB_Inc_Calculation.Currency, q_CB_Inc_Calculation.Key_R_PC_L6
FROM q_CB_Inc_Calculation
GROUP BY q_CB_Inc_Calculation.rep_Month, q_CB_Inc_Calculation.PC, q_CB_Inc_Calculation.L_1, q_CB_Inc_Calculation.L_2, q_CB_Inc_Calculation.L_3, q_CB_Inc_Calculation.L_4, q_CB_Inc_Calculation.L_5, q_CB_Inc_Calculation.L_6, q_CB_Inc_Calculation.Inc_Base_Mon, q_CB_Inc_Calculation.Currency, q_CB_Inc_Calculation.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_Mod
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST
WHERE (((t_CB_Inc_Total_ST.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_Mod_MT
SELECT q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total_Mod.Month, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total_Mod.Key_R_PC_L6 INTO t_CB_Inc_Total_Mod_ST
FROM (q_CB_Inc_Total_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_Total_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Inc_Total_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_Total_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_Total_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Inc_Total_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_Total_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_Total_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_Total_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_Total_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total_Mod.Month, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_Total_MT
SELECT q_CB_Inc_Total.rep_Month, q_CB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total.Inc_Base_Mon, Sum(q_CB_Inc_Total.Inc_Total) AS Inc_Total, q_CB_Inc_Total.Currency, q_CB_Inc_Total.L_1, q_CB_Inc_Total.L_2, q_CB_Inc_Total.L_3, q_CB_Inc_Total.L_4, q_CB_Inc_Total.L_5, q_CB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total.Key_R_PC_L6 INTO t_CB_Inc_Total_ST
FROM (q_CB_Inc_Total LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L1] = C3_Code.[c_L1]) AND (C2_Code.[c_L2] = C3_Code.[c_L2])) ON (q_CB_Inc_Total.L_3 = C3_Code.c_L3) AND (q_CB_Inc_Total.L_2 = C3_Code.c_L2) AND (q_CB_Inc_Total.L_1 = C3_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Inc_Total.L_6 = C6_Code.c_L6) AND (q_CB_Inc_Total.L_5 = C6_Code.c_L5) AND (q_CB_Inc_Total.L_4 = C6_Code.c_L4) AND (q_CB_Inc_Total.L_3 = C6_Code.c_L3) AND (q_CB_Inc_Total.L_2 = C6_Code.c_L2) AND (q_CB_Inc_Total.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Inc_Total.rep_Month, q_CB_Inc_Total.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_Total.Inc_Base_Mon, q_CB_Inc_Total.Currency, q_CB_Inc_Total.L_1, q_CB_Inc_Total.L_2, q_CB_Inc_Total.L_3, q_CB_Inc_Total.L_4, q_CB_Inc_Total.L_5, q_CB_Inc_Total.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_Total.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_TRY],[Inc_Total]*[r_USD_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month);

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="TRY",[Inc_Total],IIf([Currency]="USD",[Inc_Total]*[r_USD_TRY],[Inc_Total]*[r_EUR_TRY])) AS TRY_Income, "TRY" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_Mod_MT
SELECT q_CB_Inc_TRY_Mod.rep_Month, q_CB_Inc_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY_Mod.Month, q_CB_Inc_TRY_Mod.TRY_Income, q_CB_Inc_TRY_Mod.up_Curr_Conv, q_CB_Inc_TRY_Mod.L_1, q_CB_Inc_TRY_Mod.L_2, q_CB_Inc_TRY_Mod.L_3, q_CB_Inc_TRY_Mod.L_4, q_CB_Inc_TRY_Mod.L_5, q_CB_Inc_TRY_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY_Mod.Key_R_PC_L6 INTO t_CB_Inc_TRY_Mod_ST
FROM (q_CB_Inc_TRY_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_TRY_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Inc_TRY_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_TRY_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_TRY_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Inc_TRY_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_TRY_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_TRY_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_TRY_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_TRY_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_TRY_Mod.rep_Month, q_CB_Inc_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY_Mod.Month, q_CB_Inc_TRY_Mod.TRY_Income, q_CB_Inc_TRY_Mod.up_Curr_Conv, q_CB_Inc_TRY_Mod.L_1, q_CB_Inc_TRY_Mod.L_2, q_CB_Inc_TRY_Mod.L_3, q_CB_Inc_TRY_Mod.L_4, q_CB_Inc_TRY_Mod.L_5, q_CB_Inc_TRY_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_MT
SELECT q_CB_Inc_TRY.rep_Month, q_CB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY.Month, Sum(q_CB_Inc_TRY.TRY_Income) AS TRY_Income, q_CB_Inc_TRY.up_Curr_Conv, q_CB_Inc_TRY.L_1, q_CB_Inc_TRY.L_2, q_CB_Inc_TRY.L_3, q_CB_Inc_TRY.L_4, q_CB_Inc_TRY.L_5, q_CB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY.Key_R_PC_L6 INTO t_CB_Inc_TRY_ST
FROM (q_CB_Inc_TRY LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_TRY.L_1 = C3_Code.c_L1) AND (q_CB_Inc_TRY.L_2 = C3_Code.c_L2) AND (q_CB_Inc_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_TRY.L_1 = C6_Code.c_L1) AND (q_CB_Inc_TRY.L_2 = C6_Code.c_L2) AND (q_CB_Inc_TRY.L_3 = C6_Code.c_L3) AND (q_CB_Inc_TRY.L_4 = C6_Code.c_L4) AND (q_CB_Inc_TRY.L_5 = C6_Code.c_L5) AND (q_CB_Inc_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_TRY.rep_Month, q_CB_Inc_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_TRY.Month, q_CB_Inc_TRY.up_Curr_Conv, q_CB_Inc_TRY.L_1, q_CB_Inc_TRY.L_2, q_CB_Inc_TRY.L_3, q_CB_Inc_TRY.L_4, q_CB_Inc_TRY.L_5, q_CB_Inc_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_TRY

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_TRY_With_Dummy_Mod
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
TRY_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_TRY_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD
SELECT t_CB_Inc_Total_ST.rep_Month, t_CB_Inc_Total_ST.PC, t_CB_Inc_Total_ST.L_1, t_CB_Inc_Total_ST.L_2, t_CB_Inc_Total_ST.L_3, t_CB_Inc_Total_ST.L_4, t_CB_Inc_Total_ST.L_5, t_CB_Inc_Total_ST.L_6, t_CB_Inc_Total_ST.Inc_Total, t_CB_Inc_Total_ST.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_USD],[Inc_Total]*[r_TRY_USD])) AS USD_Income, "USD" AS up_Curr_Conv, t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month], t_CB_Inc_Total_ST.Key_R_PC_L6, Mon_Curr_Rates.r_USD_TRY, Mon_Curr_Rates.r_TRY_USD
FROM t_CB_Inc_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Inc_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Inc_Total_ST.Inc_Base_Mon = Mon_Curr_Rates.Month);

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_Mod
SELECT q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6, q_CB_Inc_Total_Mod.Inc_Total, q_CB_Inc_Total_Mod.Currency, IIf([Currency]="USD",[Inc_Total],IIf([Currency]="EUR",[Inc_Total]*[r_EUR_USD],[Inc_Total]*[r_TRY_USD])) AS USD_Income, "USD" AS up_Curr_Conv, q_CB_Inc_Total_Mod.Month AS [Month], q_CB_Inc_Total_Mod.rep_Month, q_CB_Inc_Total_Mod.Key_R_PC_L6
FROM q_CB_Inc_Total_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Inc_Total_Mod.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
WHERE (((q_CB_Inc_Total_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY q_CB_Inc_Total_Mod.PC, q_CB_Inc_Total_Mod.L_1, q_CB_Inc_Total_Mod.L_2, q_CB_Inc_Total_Mod.L_3, q_CB_Inc_Total_Mod.L_4, q_CB_Inc_Total_Mod.L_5, q_CB_Inc_Total_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_Mod_MT
SELECT q_CB_Inc_USD_Mod.rep_Month, q_CB_Inc_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD_Mod.Month, q_CB_Inc_USD_Mod.USD_Income, q_CB_Inc_USD_Mod.up_Curr_Conv, q_CB_Inc_USD_Mod.L_1, q_CB_Inc_USD_Mod.L_2, q_CB_Inc_USD_Mod.L_3, q_CB_Inc_USD_Mod.L_4, q_CB_Inc_USD_Mod.L_5, q_CB_Inc_USD_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD_Mod.Key_R_PC_L6 INTO t_CB_Inc_USD_Mod_ST
FROM (q_CB_Inc_USD_Mod LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_USD_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Inc_USD_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Inc_USD_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_USD_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Inc_USD_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Inc_USD_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Inc_USD_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Inc_USD_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Inc_USD_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_USD_Mod.rep_Month, q_CB_Inc_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD_Mod.Month, q_CB_Inc_USD_Mod.USD_Income, q_CB_Inc_USD_Mod.up_Curr_Conv, q_CB_Inc_USD_Mod.L_1, q_CB_Inc_USD_Mod.L_2, q_CB_Inc_USD_Mod.L_3, q_CB_Inc_USD_Mod.L_4, q_CB_Inc_USD_Mod.L_5, q_CB_Inc_USD_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_MT
SELECT q_CB_Inc_USD.rep_Month, q_CB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD.Month, Sum(q_CB_Inc_USD.USD_Income) AS USD_Income, q_CB_Inc_USD.up_Curr_Conv, q_CB_Inc_USD.L_1, q_CB_Inc_USD.L_2, q_CB_Inc_USD.L_3, q_CB_Inc_USD.L_4, q_CB_Inc_USD.L_5, q_CB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD.Key_R_PC_L6 INTO t_CB_Inc_USD_ST
FROM (q_CB_Inc_USD LEFT JOIN (C2_Code RIGHT JOIN C3_Code ON (C2_Code.[c_L2] = C3_Code.[c_L2]) AND (C2_Code.[c_L1] = C3_Code.[c_L1])) ON (q_CB_Inc_USD.L_1 = C3_Code.c_L1) AND (q_CB_Inc_USD.L_2 = C3_Code.c_L2) AND (q_CB_Inc_USD.L_3 = C3_Code.c_L3)) LEFT JOIN C6_Code ON (q_CB_Inc_USD.L_1 = C6_Code.c_L1) AND (q_CB_Inc_USD.L_2 = C6_Code.c_L2) AND (q_CB_Inc_USD.L_3 = C6_Code.c_L3) AND (q_CB_Inc_USD.L_4 = C6_Code.c_L4) AND (q_CB_Inc_USD.L_5 = C6_Code.c_L5) AND (q_CB_Inc_USD.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Inc_USD.rep_Month, q_CB_Inc_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Inc_USD.Month, q_CB_Inc_USD.up_Curr_Conv, q_CB_Inc_USD.L_1, q_CB_Inc_USD.L_2, q_CB_Inc_USD.L_3, q_CB_Inc_USD.L_4, q_CB_Inc_USD.L_5, q_CB_Inc_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Inc_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_With_Dummy
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6


	FROM 
		q_CB_Inc_USD

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_USD_With_Dummy_Mod
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
USD_Income,
up_curr_Conv,
KEY_R_PC_L6

	FROM 
		q_CB_Inc_USD_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy
SELECT 
		*
	FROM 
		q_CB_Inc_Total

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Inc_With_Dummy_Mod.Inc_Total) AS Total_Income
SELECT q_CB_Inc_With_Dummy_Mod.rep_Month, q_CB_Inc_With_Dummy_Mod.PC, q_CB_Inc_With_Dummy_Mod.L_1, q_CB_Inc_With_Dummy_Mod.L_2, q_CB_Inc_With_Dummy_Mod.L_3, q_CB_Inc_With_Dummy_Mod.L_4, q_CB_Inc_With_Dummy_Mod.L_5, q_CB_Inc_With_Dummy_Mod.L_6, q_CB_Inc_With_Dummy_Mod.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Inc_With_Dummy_Mod
GROUP BY q_CB_Inc_With_Dummy_Mod.rep_Month, q_CB_Inc_With_Dummy_Mod.PC, q_CB_Inc_With_Dummy_Mod.L_1, q_CB_Inc_With_Dummy_Mod.L_2, q_CB_Inc_With_Dummy_Mod.L_3, q_CB_Inc_With_Dummy_Mod.L_4, q_CB_Inc_With_Dummy_Mod.L_5, q_CB_Inc_With_Dummy_Mod.L_6, q_CB_Inc_With_Dummy_Mod.Currency, IIf([Currency]="EUR","r_EUR_TRY",IIf([Currency]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Currency]="EUR","r_EUR_USD",IIf([Currency]="USD","r_USD_USD","r_TRY_USD")), IIf([Currency]="EUR","r_EUR_EUR",IIf([Currency]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Inc_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Inc_With_Dummy_Mod
SELECT 
		*
	FROM 
		q_CB_Inc_Total_Mod

UNION ALL SELECT 
		*
	FROM 
		q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_ActiveM
SELECT q_CB_Qty_ActiveM_Works_Monthly.rep_Month, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon
FROM q_CB_Qty_ActiveM_Works_Monthly LEFT JOIN Mon_Curr_Rates ON (q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon = Mon_Curr_Rates.Month) AND (q_CB_Qty_ActiveM_Works_Monthly.rep_Month = Mon_Curr_Rates.rep_Month)
GROUP BY q_CB_Qty_ActiveM_Works_Monthly.rep_Month, Mon_Curr_Rates.r_EUR_TRY, Mon_Curr_Rates.r_EUR_USD, Mon_Curr_Rates.r_USD_EUR, Mon_Curr_Rates.r_USD_TRY, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_ActiveM_Mod
SELECT q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY
FROM q_CB_Active_Months_Res_Qty_Mod LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon = q_Monthly_Curr_Rates_Mod_CrossTab.Month
GROUP BY q_CB_Active_Months_Res_Qty_Mod.rep_Month, q_CB_Active_Months_Res_Qty_Mod.PC, q_CB_Active_Months_Res_Qty_Mod.L_1, q_CB_Active_Months_Res_Qty_Mod.L_2, q_CB_Active_Months_Res_Qty_Mod.L_3, q_CB_Active_Months_Res_Qty_Mod.L_4, q_CB_Active_Months_Res_Qty_Mod.L_5, q_CB_Active_Months_Res_Qty_Mod.L_6, q_CB_Active_Months_Res_Qty_Mod.rs_L1, q_CB_Active_Months_Res_Qty_Mod.rs_L2, q_CB_Active_Months_Res_Qty_Mod.rs_L3, q_CB_Active_Months_Res_Qty_Mod.rs_L4, q_CB_Active_Months_Res_Qty_Mod.rs_Currency, q_CB_Active_Months_Res_Qty_Mod.Exp_CB_Mon, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_Inc
SELECT q_CB_Qty_ActiveM_Works_Monthly.rep_Month, q_CB_Qty_ActiveM_Works_Monthly.PC, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_CB_Curr_Base_Val].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_CB_Curr_Base_Val].[r_EUR_USD]-1 AS rt_EUR_USD, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_CB_Curr_Base_Val].[r_USD_TRY]-1 AS rt_USD_TRY, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_CB_Curr_Base_Val].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_CB_Qty_ActiveM_Works_Monthly LEFT JOIN q_CB_monthly_curr_rates_activem ON (q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon = q_CB_monthly_curr_rates_activem.Exp_CB_Mon) AND (q_CB_Qty_ActiveM_Works_Monthly.rep_Month = q_CB_monthly_curr_rates_activem.rep_Month)) LEFT JOIN q_CB_Curr_Base_Val ON q_CB_Qty_ActiveM_Works_Monthly.rep_Month = q_CB_Curr_Base_Val.rep_Month
GROUP BY q_CB_Qty_ActiveM_Works_Monthly.rep_Month, q_CB_Qty_ActiveM_Works_Monthly.PC, q_CB_Qty_ActiveM_Works_Monthly.Exp_CB_Mon, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_TRY]/[q_CB_Curr_Base_Val].[r_EUR_TRY]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_EUR_USD]/[q_CB_Curr_Base_Val].[r_EUR_USD]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_TRY]/[q_CB_Curr_Base_Val].[r_USD_TRY]-1, [q_CB_Monthly_Curr_Rates_ActiveM].[r_USD_EUR]/[q_CB_Curr_Base_Val].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_Inc_Mod
SELECT q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month, q_CB_Qty_ActiveM_Works_Monthly_Mod.PC, q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_TRY]/[q_CB_Curr_Base_Val_Mod].[r_EUR_TRY]-1 AS rt_EUR_TRY, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_USD]/[q_CB_Curr_Base_Val_Mod].[r_EUR_USD]-1 AS rt_EUR_USD, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_TRY]/[q_CB_Curr_Base_Val_Mod].[r_USD_TRY]-1 AS rt_USD_TRY, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_EUR]/[q_CB_Curr_Base_Val_Mod].[r_USD_EUR]-1 AS rt_USD_EUR
FROM (q_CB_Qty_ActiveM_Works_Monthly_Mod LEFT JOIN q_CB_monthly_curr_rates_activem_Mod ON (q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon = q_CB_monthly_curr_rates_activem_Mod.Exp_CB_Mon) AND (q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month = q_CB_monthly_curr_rates_activem_Mod.rep_Month)) LEFT JOIN q_CB_Curr_Base_Val_Mod ON q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month = q_CB_Curr_Base_Val_Mod.rep_Month
GROUP BY q_CB_Qty_ActiveM_Works_Monthly_Mod.rep_Month, q_CB_Qty_ActiveM_Works_Monthly_Mod.PC, q_CB_Qty_ActiveM_Works_Monthly_Mod.Exp_CB_Mon, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_TRY]/[q_CB_Curr_Base_Val_Mod].[r_EUR_TRY]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_EUR_USD]/[q_CB_Curr_Base_Val_Mod].[r_EUR_USD]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_TRY]/[q_CB_Curr_Base_Val_Mod].[r_USD_TRY]-1, [q_CB_monthly_curr_rates_activem_Mod].[r_USD_EUR]/[q_CB_Curr_Base_Val_Mod].[r_USD_EUR]-1;

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_LastM_Mod
SELECT q_Monthly_Curr_Rates_Mod_CrossTab.Month, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_TRY, q_Monthly_Curr_Rates_Mod_CrossTab.r_EUR_USD, q_Monthly_Curr_Rates_Mod_CrossTab.r_USD_EUR
FROM q_Monthly_Curr_Rates_Mod_CrossTab
WHERE (((q_Monthly_Curr_Rates_Mod_CrossTab.Month)=DLookUp("[Last_Month]","[q_Rep_Month_Max]")));

----------------------------------------------------------------------------------------------------
q_CB_Monthly_Curr_Rates_LastM_Mod_MT
SELECT q_CB_Monthly_Curr_Rates_LastM_Mod.Month, q_CB_Monthly_Curr_Rates_LastM_Mod.r_EUR_TRY, q_CB_Monthly_Curr_Rates_LastM_Mod.r_USD_TRY, q_CB_Monthly_Curr_Rates_LastM_Mod.r_EUR_USD, q_CB_Monthly_Curr_Rates_LastM_Mod.r_USD_EUR INTO t_CB_Monthly_Curr_Rates_LastM_Mod_ST
FROM q_CB_Monthly_Curr_Rates_LastM_Mod;

----------------------------------------------------------------------------------------------------
q_CB_PR_WBS
SELECT t_CB_Inc_Total_ST.rep_Month
	,t_CB_Inc_Total_ST.PC
	,t_CB_Inc_Total_ST.L_1
	,t_CB_Inc_Total_ST.L_2
	,t_CB_Inc_Total_ST.L_3
	,t_CB_Inc_Total_ST.L_4
	,t_CB_Inc_Total_ST.L_5
	,t_CB_Inc_Total_ST.L_6
	,t_CB_Inc_Total_ST.Currency
	,t_CB_Inc_Total_ST.Inc_Base_Mon AS [Month] 
	,t_CB_Inc_Total_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_ST 
GROUP BY t_CB_Inc_Total_ST.rep_Month
	,t_CB_Inc_Total_ST.PC
	,t_CB_Inc_Total_ST.L_1
	,t_CB_Inc_Total_ST.L_2
	,t_CB_Inc_Total_ST.L_3
	,t_CB_Inc_Total_ST.L_4
	,t_CB_Inc_Total_ST.L_5
	,t_CB_Inc_Total_ST.L_6
	,t_CB_Inc_Total_ST.Currency
	,t_CB_Inc_Total_ST.Inc_Base_Mon 
	,t_CB_Inc_Total_ST.Key_R_PC_L6
HAVING (((Sum(t_CB_Inc_Total_ST.[Inc_Total]))<>0)) 
UNION SELECT t_q_CB_Exp.rep_Month
	,t_q_CB_Exp.PC
	,t_q_CB_Exp.L_1
	,t_q_CB_Exp.L_2
	,t_q_CB_Exp.L_3
	,t_q_CB_Exp.L_4
	,t_q_CB_Exp.L_5
	,t_q_CB_Exp.L_6
	,t_q_CB_Exp.up_Curr
	,t_q_CB_Exp.Month AS [Month] 
	,t_q_CB_Exp.Key_R_PC_L6
FROM t_q_CB_Exp 
GROUP BY t_q_CB_Exp.rep_Month
	,t_q_CB_Exp.PC
	,t_q_CB_Exp.L_1
	,t_q_CB_Exp.L_2
	,t_q_CB_Exp.L_3
	,t_q_CB_Exp.L_4
	,t_q_CB_Exp.L_5
	,t_q_CB_Exp.L_6
	,t_q_CB_Exp.up_Curr
	,t_q_CB_Exp.Month 
	,t_q_CB_Exp.Key_R_PC_L6	
HAVING (((Sum(t_q_CB_Exp.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_CB_PR_WBS_Mod
SELECT t_CB_Inc_Total_Mod_ST.rep_Month
	,t_CB_Inc_Total_Mod_ST.PC
	,t_CB_Inc_Total_Mod_ST.L_1
	,t_CB_Inc_Total_Mod_ST.L_2
	,t_CB_Inc_Total_Mod_ST.L_3
	,t_CB_Inc_Total_Mod_ST.L_4
	,t_CB_Inc_Total_Mod_ST.L_5
	,t_CB_Inc_Total_Mod_ST.L_6
	,t_CB_Inc_Total_Mod_ST.Currency
	,t_CB_Inc_Total_Mod_ST.Month AS [Month] 
	,t_CB_Inc_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Inc_Total_Mod_ST 
GROUP BY t_CB_Inc_Total_Mod_ST.rep_Month
	,t_CB_Inc_Total_Mod_ST.PC
	,t_CB_Inc_Total_Mod_ST.L_1
	,t_CB_Inc_Total_Mod_ST.L_2
	,t_CB_Inc_Total_Mod_ST.L_3
	,t_CB_Inc_Total_Mod_ST.L_4
	,t_CB_Inc_Total_Mod_ST.L_5
	,t_CB_Inc_Total_Mod_ST.L_6
	,t_CB_Inc_Total_Mod_ST.Currency
	,t_CB_Inc_Total_Mod_ST.Month 
	,t_CB_Inc_Total_Mod_ST.Key_R_PC_L6
HAVING (((Sum(t_CB_Inc_Total_Mod_ST.[Inc_Total]))<>0)) 
UNION SELECT t_q_CB_Exp_Mod.rep_Month
	,t_q_CB_Exp_Mod.P01_Code
	,t_q_CB_Exp_Mod.L_1
	,t_q_CB_Exp_Mod.L_2
	,t_q_CB_Exp_Mod.L_3
	,t_q_CB_Exp_Mod.L_4
	,t_q_CB_Exp_Mod.L_5
	,t_q_CB_Exp_Mod.L_6
	,t_q_CB_Exp_Mod.up_Curr
	,t_q_CB_Exp_Mod.Month AS [Month] 
	,t_q_CB_Exp_Mod.Key_R_PC_L6
FROM t_q_CB_Exp_Mod 
GROUP BY t_q_CB_Exp_Mod.rep_Month
	,t_q_CB_Exp_Mod.P01_Code
	,t_q_CB_Exp_Mod.L_1
	,t_q_CB_Exp_Mod.L_2
	,t_q_CB_Exp_Mod.L_3
	,t_q_CB_Exp_Mod.L_4
	,t_q_CB_Exp_Mod.L_5
	,t_q_CB_Exp_Mod.L_6
	,t_q_CB_Exp_Mod.up_Curr
	,t_q_CB_Exp_Mod.Month 
	,t_q_CB_Exp_Mod.Key_R_PC_L6	
HAVING (((Sum(t_q_CB_Exp_Mod.[Total_Expense]))<>0));

----------------------------------------------------------------------------------------------------
q_CB_Profit
SELECT q_CB_PR_WBS.rep_Month, q_CB_PR_WBS.PC, q_CB_PR_WBS.L_1, q_CB_PR_WBS.L_2, q_CB_PR_WBS.L_3, q_CB_PR_WBS.L_4, q_CB_PR_WBS.L_5, q_CB_PR_WBS.L_6, q_CB_PR_WBS.Currency, q_CB_PR_WBS.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_CB_PR_WBS.Key_R_PC_L6
FROM (q_CB_PR_WBS LEFT JOIN t_CB_Inc_Total_ST ON (q_CB_PR_WBS.Key_R_PC_L6 = t_CB_Inc_Total_ST.Key_R_PC_L6) AND (q_CB_PR_WBS.Month = t_CB_Inc_Total_ST.Inc_Base_Mon) AND (q_CB_PR_WBS.Currency = t_CB_Inc_Total_ST.Currency)) LEFT JOIN t_q_CB_Exp ON (q_CB_PR_WBS.Key_R_PC_L6 = t_q_CB_Exp.Key_R_PC_L6) AND (q_CB_PR_WBS.Month = t_q_CB_Exp.Month) AND (q_CB_PR_WBS.Currency = t_q_CB_Exp.up_Curr)
ORDER BY q_CB_PR_WBS.rep_Month, q_CB_PR_WBS.PC, q_CB_PR_WBS.L_1, q_CB_PR_WBS.L_2, q_CB_PR_WBS.L_3, q_CB_PR_WBS.L_4, q_CB_PR_WBS.L_5, q_CB_PR_WBS.L_6, q_CB_PR_WBS.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_EUR_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_EUR_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6, q_CB_Profit_EUR_With_Dummy.Curr
FROM q_CB_Profit_EUR_With_Dummy
GROUP BY q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6, q_CB_Profit_EUR_With_Dummy.Curr
ORDER BY q_CB_Profit_EUR_With_Dummy.rep_Month, q_CB_Profit_EUR_With_Dummy.PC, q_CB_Profit_EUR_With_Dummy.L_1, q_CB_Profit_EUR_With_Dummy.L_2, q_CB_Profit_EUR_With_Dummy.L_3, q_CB_Profit_EUR_With_Dummy.L_4, q_CB_Profit_EUR_With_Dummy.L_5, q_CB_Profit_EUR_With_Dummy.L_6
PIVOT q_CB_Profit_EUR_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_EUR_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_EUR_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6, q_CB_Profit_EUR_With_Dummy_Mod.Curr
FROM q_CB_Profit_EUR_With_Dummy_Mod
GROUP BY q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6, q_CB_Profit_EUR_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_EUR_With_Dummy_Mod.rep_Month, q_CB_Profit_EUR_With_Dummy_Mod.PC, q_CB_Profit_EUR_With_Dummy_Mod.L_1, q_CB_Profit_EUR_With_Dummy_Mod.L_2, q_CB_Profit_EUR_With_Dummy_Mod.L_3, q_CB_Profit_EUR_With_Dummy_Mod.L_4, q_CB_Profit_EUR_With_Dummy_Mod.L_5, q_CB_Profit_EUR_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_EUR_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_TRY_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_TRY_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6, q_CB_Profit_TRY_With_Dummy.Curr
FROM q_CB_Profit_TRY_With_Dummy
GROUP BY q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6, q_CB_Profit_TRY_With_Dummy.Curr
ORDER BY q_CB_Profit_TRY_With_Dummy.rep_Month, q_CB_Profit_TRY_With_Dummy.PC, q_CB_Profit_TRY_With_Dummy.L_1, q_CB_Profit_TRY_With_Dummy.L_2, q_CB_Profit_TRY_With_Dummy.L_3, q_CB_Profit_TRY_With_Dummy.L_4, q_CB_Profit_TRY_With_Dummy.L_5, q_CB_Profit_TRY_With_Dummy.L_6
PIVOT q_CB_Profit_TRY_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_TRY_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_TRY_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6, q_CB_Profit_TRY_With_Dummy_Mod.Curr
FROM q_CB_Profit_TRY_With_Dummy_Mod
GROUP BY q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6, q_CB_Profit_TRY_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_TRY_With_Dummy_Mod.rep_Month, q_CB_Profit_TRY_With_Dummy_Mod.PC, q_CB_Profit_TRY_With_Dummy_Mod.L_1, q_CB_Profit_TRY_With_Dummy_Mod.L_2, q_CB_Profit_TRY_With_Dummy_Mod.L_3, q_CB_Profit_TRY_With_Dummy_Mod.L_4, q_CB_Profit_TRY_With_Dummy_Mod.L_5, q_CB_Profit_TRY_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_TRY_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_USD_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_USD_With_Dummy.Profit) AS Profit
SELECT q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6, q_CB_Profit_USD_With_Dummy.Curr
FROM q_CB_Profit_USD_With_Dummy
GROUP BY q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6, q_CB_Profit_USD_With_Dummy.Curr
ORDER BY q_CB_Profit_USD_With_Dummy.rep_Month, q_CB_Profit_USD_With_Dummy.PC, q_CB_Profit_USD_With_Dummy.L_1, q_CB_Profit_USD_With_Dummy.L_2, q_CB_Profit_USD_With_Dummy.L_3, q_CB_Profit_USD_With_Dummy.L_4, q_CB_Profit_USD_With_Dummy.L_5, q_CB_Profit_USD_With_Dummy.L_6
PIVOT q_CB_Profit_USD_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_USD_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_USD_With_Dummy_Mod.Profit) AS Profit
SELECT q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6, q_CB_Profit_USD_With_Dummy_Mod.Curr
FROM q_CB_Profit_USD_With_Dummy_Mod
GROUP BY q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6, q_CB_Profit_USD_With_Dummy_Mod.Curr
ORDER BY q_CB_Profit_USD_With_Dummy_Mod.rep_Month, q_CB_Profit_USD_With_Dummy_Mod.PC, q_CB_Profit_USD_With_Dummy_Mod.L_1, q_CB_Profit_USD_With_Dummy_Mod.L_2, q_CB_Profit_USD_With_Dummy_Mod.L_3, q_CB_Profit_USD_With_Dummy_Mod.L_4, q_CB_Profit_USD_With_Dummy_Mod.L_5, q_CB_Profit_USD_With_Dummy_Mod.L_6
PIVOT q_CB_Profit_USD_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Dist_With_Dummy_Crosstab
TRANSFORM Sum(q_CB_Profit_With_Dummy.Profit) AS SumOfProfit
SELECT q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Curr
FROM q_CB_Profit_With_Dummy
GROUP BY q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Curr
ORDER BY q_CB_Profit_With_Dummy.rep_Month, q_CB_Profit_With_Dummy.PC, q_CB_Profit_With_Dummy.L_1, q_CB_Profit_With_Dummy.L_2, q_CB_Profit_With_Dummy.L_3, q_CB_Profit_With_Dummy.L_4, q_CB_Profit_With_Dummy.L_5, q_CB_Profit_With_Dummy.L_6, q_CB_Profit_With_Dummy.Month
PIVOT q_CB_Profit_With_Dummy.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "EUR" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Income]*[r_USD_EUR],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Income]*[r_TRY_EUR],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Expense]*[r_USD_EUR],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Expense]*[r_TRY_EUR],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "EUR" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Income]*[r_USD_EUR],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Income]*[r_TRY_EUR],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_USD_EUR],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_TRY_EUR],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_Mod_MT
SELECT q_CB_Profit_EUR_Mod.rep_Month, q_CB_Profit_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(q_CB_Profit_EUR_Mod.Expense) AS Expense, Sum(q_CB_Profit_EUR_Mod.Income) AS Income, q_CB_Profit_EUR_Mod.Month, q_CB_Profit_EUR_Mod.Currency, q_CB_Profit_EUR_Mod.L_1, q_CB_Profit_EUR_Mod.L_2, q_CB_Profit_EUR_Mod.L_3, q_CB_Profit_EUR_Mod.L_4, q_CB_Profit_EUR_Mod.L_5, q_CB_Profit_EUR_Mod.L_6, Sum(q_CB_Profit_EUR_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_EUR_Mod.Key_R_PC_L6 INTO t_CB_Profit_EUR_ST
FROM ((q_CB_Profit_EUR_Mod LEFT JOIN C3_Code ON (q_CB_Profit_EUR_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_EUR_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_EUR_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_EUR_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_EUR_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_EUR_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_EUR_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_EUR_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_EUR_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_EUR_Mod.rep_Month, q_CB_Profit_EUR_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_EUR_Mod.Month, q_CB_Profit_EUR_Mod.Currency, q_CB_Profit_EUR_Mod.L_1, q_CB_Profit_EUR_Mod.L_2, q_CB_Profit_EUR_Mod.L_3, q_CB_Profit_EUR_Mod.L_4, q_CB_Profit_EUR_Mod.L_5, q_CB_Profit_EUR_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_EUR_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_MT
SELECT q_CB_Profit_EUR.rep_Month, q_CB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, Sum(q_CB_Profit_EUR.Expense) AS Expense, Sum(q_CB_Profit_EUR.Income) AS Income, q_CB_Profit_EUR.Month, q_CB_Profit_EUR.Currency, q_CB_Profit_EUR.L_1, q_CB_Profit_EUR.L_2, q_CB_Profit_EUR.L_3, q_CB_Profit_EUR.L_4, q_CB_Profit_EUR.L_5, q_CB_Profit_EUR.L_6, Sum(q_CB_Profit_EUR.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_EUR.Key_R_PC_L6 INTO t_CB_Profit_EUR_ST
FROM ((q_CB_Profit_EUR LEFT JOIN C3_Code ON (q_CB_Profit_EUR.L_3 = C3_Code.c_L3) AND (q_CB_Profit_EUR.L_2 = C3_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_EUR.L_2 = C2_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_EUR.L_6 = C6_Code.c_L6) AND (q_CB_Profit_EUR.L_5 = C6_Code.c_L5) AND (q_CB_Profit_EUR.L_4 = C6_Code.c_L4) AND (q_CB_Profit_EUR.L_3 = C6_Code.c_L3) AND (q_CB_Profit_EUR.L_2 = C6_Code.c_L2) AND (q_CB_Profit_EUR.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_EUR.rep_Month, q_CB_Profit_EUR.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_EUR.Month, q_CB_Profit_EUR.Currency, q_CB_Profit_EUR.L_1, q_CB_Profit_EUR.L_2, q_CB_Profit_EUR.L_3, q_CB_Profit_EUR.L_4, q_CB_Profit_EUR.L_5, q_CB_Profit_EUR.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_EUR.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_EUR

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_EUR_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_EUR_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full 


WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_Mod
SELECT q_CB_PR_WBS_Mod.rep_Month, q_CB_PR_WBS_Mod.PC, q_CB_PR_WBS_Mod.L_1, q_CB_PR_WBS_Mod.L_2, q_CB_PR_WBS_Mod.L_3, q_CB_PR_WBS_Mod.L_4, q_CB_PR_WBS_Mod.L_5, q_CB_PR_WBS_Mod.L_6, q_CB_PR_WBS_Mod.Currency, q_CB_PR_WBS_Mod.Month, IIf([Inc_Total] Is Null,0,[Inc_Total]) AS Income, IIf([Total_Expense] Is Null,0,[Total_Expense]) AS Expense, [Income]-[Expense] AS Profit, q_CB_PR_WBS_Mod.Key_R_PC_L6
FROM (q_CB_PR_WBS_Mod LEFT JOIN t_CB_Inc_Total_Mod_ST ON (q_CB_PR_WBS_Mod.Currency = t_CB_Inc_Total_Mod_ST.Currency) AND (q_CB_PR_WBS_Mod.Month = t_CB_Inc_Total_Mod_ST.Month) AND (q_CB_PR_WBS_Mod.Key_R_PC_L6 = t_CB_Inc_Total_Mod_ST.Key_R_PC_L6)) LEFT JOIN t_q_CB_Exp_Mod ON (q_CB_PR_WBS_Mod.Currency = t_q_CB_Exp_Mod.up_Curr) AND (q_CB_PR_WBS_Mod.Month = t_q_CB_Exp_Mod.Month) AND (q_CB_PR_WBS_Mod.Key_R_PC_L6 = t_q_CB_Exp_Mod.Key_R_PC_L6)
ORDER BY q_CB_PR_WBS_Mod.rep_Month, q_CB_PR_WBS_Mod.PC, q_CB_PR_WBS_Mod.L_1, q_CB_PR_WBS_Mod.L_2, q_CB_PR_WBS_Mod.L_3, q_CB_PR_WBS_Mod.L_4, q_CB_PR_WBS_Mod.L_5, q_CB_PR_WBS_Mod.L_6, q_CB_PR_WBS_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Total_Mod_MT
SELECT q_CB_Profit_Mod.rep_Month, q_CB_Profit_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_Mod.Month, Sum(q_CB_Profit_Mod.Expense) AS Expense, Sum(q_CB_Profit_Mod.Income) AS Income, q_CB_Profit_Mod.Currency, q_CB_Profit_Mod.L_1, q_CB_Profit_Mod.L_2, q_CB_Profit_Mod.L_3, q_CB_Profit_Mod.L_4, q_CB_Profit_Mod.L_5, q_CB_Profit_Mod.L_6, Sum(q_CB_Profit_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_Mod.Key_R_PC_L6 INTO t_CB_Profit_Total_Mod_ST
FROM ((q_CB_Profit_Mod LEFT JOIN C3_Code ON (q_CB_Profit_Mod.L_3 = C3_Code.c_L3) AND (q_CB_Profit_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_Mod.L_2 = C2_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_Mod.L_6 = C6_Code.c_L6) AND (q_CB_Profit_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_Mod.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_Mod.rep_Month, q_CB_Profit_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_Mod.Month, q_CB_Profit_Mod.Currency, q_CB_Profit_Mod.L_1, q_CB_Profit_Mod.L_2, q_CB_Profit_Mod.L_3, q_CB_Profit_Mod.L_4, q_CB_Profit_Mod.L_5, q_CB_Profit_Mod.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_Total_MT
SELECT q_CB_Profit.rep_Month, q_CB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit.Month, q_CB_Profit.Expense, q_CB_Profit.Income, q_CB_Profit.Currency, q_CB_Profit.L_1, q_CB_Profit.L_2, q_CB_Profit.L_3, q_CB_Profit.L_4, q_CB_Profit.L_5, q_CB_Profit.L_6, q_CB_Profit.Profit, C6_Code.Desc_TR_L6, q_CB_Profit.Key_R_PC_L6 INTO t_CB_Profit_Total_ST
FROM ((q_CB_Profit LEFT JOIN C3_Code ON (q_CB_Profit.L_1 = C3_Code.c_L1) AND (q_CB_Profit.L_2 = C3_Code.c_L2) AND (q_CB_Profit.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit.L_1 = C2_Code.c_L1) AND (q_CB_Profit.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit.L_1 = C6_Code.c_L1) AND (q_CB_Profit.L_2 = C6_Code.c_L2) AND (q_CB_Profit.L_3 = C6_Code.c_L3) AND (q_CB_Profit.L_4 = C6_Code.c_L4) AND (q_CB_Profit.L_5 = C6_Code.c_L5) AND (q_CB_Profit.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit.rep_Month, q_CB_Profit.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit.Month, q_CB_Profit.Expense, q_CB_Profit.Income, q_CB_Profit.Currency, q_CB_Profit.L_1, q_CB_Profit.L_2, q_CB_Profit.L_3, q_CB_Profit.L_4, q_CB_Profit.L_5, q_CB_Profit.L_6, q_CB_Profit.Profit, C6_Code.Desc_TR_L6, q_CB_Profit.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "TRY" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Income]*[r_USD_TRY],IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Income]*[r_EUR_TRY],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="USD",[t_CB_Profit_Total_ST].[Expense]*[r_USD_TRY],IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Expense]*[r_EUR_TRY],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "TRY" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Income]*[r_USD_TRY],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Income]*[r_EUR_TRY],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="USD",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_USD_TRY],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_EUR_TRY],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_Mod_MT
SELECT q_CB_Profit_TRY_Mod.rep_Month, q_CB_Profit_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY_Mod.Month, Sum(q_CB_Profit_TRY_Mod.Expense) AS Expense, Sum(q_CB_Profit_TRY_Mod.Income) AS Income, q_CB_Profit_TRY_Mod.Currency, q_CB_Profit_TRY_Mod.L_1, q_CB_Profit_TRY_Mod.L_2, q_CB_Profit_TRY_Mod.L_3, q_CB_Profit_TRY_Mod.L_4, q_CB_Profit_TRY_Mod.L_5, q_CB_Profit_TRY_Mod.L_6, Sum(q_CB_Profit_TRY_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6 INTO t_CB_Profit_Mod_TRY_ST
FROM ((q_CB_Profit_TRY_Mod LEFT JOIN C3_Code ON (q_CB_Profit_TRY_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_TRY_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_TRY_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_TRY_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_TRY_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_TRY_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_TRY_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_TRY_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_TRY_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_TRY_Mod.rep_Month, q_CB_Profit_TRY_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY_Mod.Month, q_CB_Profit_TRY_Mod.Currency, q_CB_Profit_TRY_Mod.L_1, q_CB_Profit_TRY_Mod.L_2, q_CB_Profit_TRY_Mod.L_3, q_CB_Profit_TRY_Mod.L_4, q_CB_Profit_TRY_Mod.L_5, q_CB_Profit_TRY_Mod.L_6, C6_Code.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_MT
SELECT q_CB_Profit_TRY.rep_Month, q_CB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY.Month, Sum(q_CB_Profit_TRY.Expense) AS Expense, Sum(q_CB_Profit_TRY.Income) AS Income, q_CB_Profit_TRY.Currency, q_CB_Profit_TRY.L_1, q_CB_Profit_TRY.L_2, q_CB_Profit_TRY.L_3, q_CB_Profit_TRY.L_4, q_CB_Profit_TRY.L_5, q_CB_Profit_TRY.L_6, Sum(q_CB_Profit_TRY.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_TRY.Key_R_PC_L6 INTO t_CB_Profit_TRY_ST
FROM ((q_CB_Profit_TRY LEFT JOIN C3_Code ON (q_CB_Profit_TRY.L_1 = C3_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C3_Code.c_L2) AND (q_CB_Profit_TRY.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_TRY.L_1 = C2_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_TRY.L_1 = C6_Code.c_L1) AND (q_CB_Profit_TRY.L_2 = C6_Code.c_L2) AND (q_CB_Profit_TRY.L_3 = C6_Code.c_L3) AND (q_CB_Profit_TRY.L_4 = C6_Code.c_L4) AND (q_CB_Profit_TRY.L_5 = C6_Code.c_L5) AND (q_CB_Profit_TRY.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_TRY.rep_Month, q_CB_Profit_TRY.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_TRY.Month, q_CB_Profit_TRY.Currency, q_CB_Profit_TRY.L_1, q_CB_Profit_TRY.L_2, q_CB_Profit_TRY.L_3, q_CB_Profit_TRY.L_4, q_CB_Profit_TRY.L_5, q_CB_Profit_TRY.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_TRY.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_TRY

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_TRY_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_TRY_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full




WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6, t_CB_Profit_Total_ST.Month, "USD" AS [Currency], IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Income]*[r_EUR_USD],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Income]*[r_TRY_USD],[t_CB_Profit_Total_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_ST].[Currency]="EUR",[t_CB_Profit_Total_ST].[Expense]*[r_EUR_USD],IIf([t_CB_Profit_Total_ST].[Currency]="TRY",[t_CB_Profit_Total_ST].[Expense]*[r_TRY_USD],[t_CB_Profit_Total_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_ST LEFT JOIN Mon_Curr_Rates ON (t_CB_Profit_Total_ST.rep_Month = Mon_Curr_Rates.rep_Month) AND (t_CB_Profit_Total_ST.Month = Mon_Curr_Rates.Month)
ORDER BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_CB_Profit_Total_ST.L_1, t_CB_Profit_Total_ST.L_2, t_CB_Profit_Total_ST.L_3, t_CB_Profit_Total_ST.L_4, t_CB_Profit_Total_ST.L_5, t_CB_Profit_Total_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_Mod
SELECT t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6, t_CB_Profit_Total_Mod_ST.Month, "USD" AS [Currency], IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Income]*[r_EUR_USD],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Income]*[r_TRY_USD],[t_CB_Profit_Total_Mod_ST].[Income])) AS Income, IIf([t_CB_Profit_Total_Mod_ST].[Currency]="EUR",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_EUR_USD],IIf([t_CB_Profit_Total_Mod_ST].[Currency]="TRY",[t_CB_Profit_Total_Mod_ST].[Expense]*[r_TRY_USD],[t_CB_Profit_Total_Mod_ST].[Expense])) AS Expense, [Income]-[Expense] AS Profit, t_CB_Profit_Total_Mod_ST.Key_R_PC_L6
FROM t_CB_Profit_Total_Mod_ST LEFT JOIN q_Monthly_Curr_Rates_Mod_CrossTab ON t_CB_Profit_Total_Mod_ST.Month = q_Monthly_Curr_Rates_Mod_CrossTab.Month
ORDER BY t_CB_Profit_Total_Mod_ST.rep_Month, t_CB_Profit_Total_Mod_ST.PC, t_CB_Profit_Total_Mod_ST.L_1, t_CB_Profit_Total_Mod_ST.L_2, t_CB_Profit_Total_Mod_ST.L_3, t_CB_Profit_Total_Mod_ST.L_4, t_CB_Profit_Total_Mod_ST.L_5, t_CB_Profit_Total_Mod_ST.L_6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_Mod_MT
SELECT q_CB_Profit_USD_Mod.rep_Month, q_CB_Profit_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD_Mod.Month, Sum(q_CB_Profit_USD_Mod.Expense) AS Expense, Sum(q_CB_Profit_USD_Mod.Income) AS Income, q_CB_Profit_USD_Mod.Currency, q_CB_Profit_USD_Mod.L_1, q_CB_Profit_USD_Mod.L_2, q_CB_Profit_USD_Mod.L_3, q_CB_Profit_USD_Mod.L_4, q_CB_Profit_USD_Mod.L_5, q_CB_Profit_USD_Mod.L_6, Sum(q_CB_Profit_USD_Mod.Profit) AS Profit, C6_Code.Desc_TR_L6 INTO t_CB_Profit_USD_Mod_ST
FROM ((q_CB_Profit_USD_Mod LEFT JOIN C3_Code ON (q_CB_Profit_USD_Mod.L_1 = C3_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C3_Code.c_L2) AND (q_CB_Profit_USD_Mod.L_3 = C3_Code.c_L3)) LEFT JOIN C2_Code ON (q_CB_Profit_USD_Mod.L_1 = C2_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C2_Code.c_L2)) LEFT JOIN C6_Code ON (q_CB_Profit_USD_Mod.L_1 = C6_Code.c_L1) AND (q_CB_Profit_USD_Mod.L_2 = C6_Code.c_L2) AND (q_CB_Profit_USD_Mod.L_3 = C6_Code.c_L3) AND (q_CB_Profit_USD_Mod.L_4 = C6_Code.c_L4) AND (q_CB_Profit_USD_Mod.L_5 = C6_Code.c_L5) AND (q_CB_Profit_USD_Mod.L_6 = C6_Code.c_L6)
GROUP BY q_CB_Profit_USD_Mod.rep_Month, q_CB_Profit_USD_Mod.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD_Mod.Month, q_CB_Profit_USD_Mod.Currency, q_CB_Profit_USD_Mod.L_1, q_CB_Profit_USD_Mod.L_2, q_CB_Profit_USD_Mod.L_3, q_CB_Profit_USD_Mod.L_4, q_CB_Profit_USD_Mod.L_5, q_CB_Profit_USD_Mod.L_6, C6_Code.Desc_TR_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_MT
SELECT q_CB_Profit_USD.rep_Month, q_CB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6] AS j_Code, C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD.Month, Sum(q_CB_Profit_USD.Expense) AS Expense, Sum(q_CB_Profit_USD.Income) AS Income, q_CB_Profit_USD.Currency, q_CB_Profit_USD.L_1, q_CB_Profit_USD.L_2, q_CB_Profit_USD.L_3, q_CB_Profit_USD.L_4, q_CB_Profit_USD.L_5, q_CB_Profit_USD.L_6, Sum(q_CB_Profit_USD.Profit) AS Profit, C6_Code.Desc_TR_L6, q_CB_Profit_USD.Key_R_PC_L6 INTO t_CB_Profit_USD_ST
FROM ((q_CB_Profit_USD LEFT JOIN C3_Code ON (q_CB_Profit_USD.L_3 = C3_Code.c_L3) AND (q_CB_Profit_USD.L_2 = C3_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C3_Code.c_L1)) LEFT JOIN C2_Code ON (q_CB_Profit_USD.L_2 = C2_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C2_Code.c_L1)) LEFT JOIN C6_Code ON (q_CB_Profit_USD.L_6 = C6_Code.c_L6) AND (q_CB_Profit_USD.L_5 = C6_Code.c_L5) AND (q_CB_Profit_USD.L_4 = C6_Code.c_L4) AND (q_CB_Profit_USD.L_3 = C6_Code.c_L3) AND (q_CB_Profit_USD.L_2 = C6_Code.c_L2) AND (q_CB_Profit_USD.L_1 = C6_Code.c_L1)
GROUP BY q_CB_Profit_USD.rep_Month, q_CB_Profit_USD.PC, [L_1] & "." & [L_2] & "." & [L_3] & "." & [L_4] & "." & [L_5] & "." & [L_6], C2_Code.Desc_TR_L2, C3_Code.Desc_TR_L3, q_CB_Profit_USD.Month, q_CB_Profit_USD.Currency, q_CB_Profit_USD.L_1, q_CB_Profit_USD.L_2, q_CB_Profit_USD.L_3, q_CB_Profit_USD.L_4, q_CB_Profit_USD.L_5, q_CB_Profit_USD.L_6, C6_Code.Desc_TR_L6, q_CB_Profit_USD.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_USD

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_USD_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Month,
Profit,
Currency as Curr

FROM 
q_CB_Profit_USD_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
g_Month AS Month,
Total_Expense AS Profit,
up_Curr AS Curr

	FROM 
		q_BB_Qty_Dummy_Full




WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_CB_Profit

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full;

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy_Crosstab_Mod
TRANSFORM Sum(q_CB_Profit_With_Dummy_Mod.Profit) AS Total_Profit
SELECT q_CB_Profit_With_Dummy_Mod.rep_Month, q_CB_Profit_With_Dummy_Mod.PC, q_CB_Profit_With_Dummy_Mod.L_1, q_CB_Profit_With_Dummy_Mod.L_2, q_CB_Profit_With_Dummy_Mod.L_3, q_CB_Profit_With_Dummy_Mod.L_4, q_CB_Profit_With_Dummy_Mod.L_5, q_CB_Profit_With_Dummy_Mod.L_6, q_CB_Profit_With_Dummy_Mod.Curr, IIf([Curr]="EUR","r_EUR_TRY",IIf([Curr]="USD","r_USD_TRY","r_TRY_TRY")) AS Exc_TRY, IIf([Curr]="EUR","r_EUR_USD",IIf([Curr]="USD","r_USD_USD","r_TRY_USD")) AS Exc_USD, IIf([Curr]="EUR","r_EUR_EUR",IIf([Curr]="USD","r_USD_EUR","r_TRY_EUR")) AS Exc_EUR
FROM q_CB_Profit_With_Dummy_Mod
GROUP BY q_CB_Profit_With_Dummy_Mod.rep_Month, q_CB_Profit_With_Dummy_Mod.PC, q_CB_Profit_With_Dummy_Mod.L_1, q_CB_Profit_With_Dummy_Mod.L_2, q_CB_Profit_With_Dummy_Mod.L_3, q_CB_Profit_With_Dummy_Mod.L_4, q_CB_Profit_With_Dummy_Mod.L_5, q_CB_Profit_With_Dummy_Mod.L_6, q_CB_Profit_With_Dummy_Mod.Curr, IIf([Curr]="EUR","r_EUR_TRY",IIf([Curr]="USD","r_USD_TRY","r_TRY_TRY")), IIf([Curr]="EUR","r_EUR_USD",IIf([Curr]="USD","r_USD_USD","r_TRY_USD")), IIf([Curr]="EUR","r_EUR_EUR",IIf([Curr]="USD","r_USD_EUR","r_TRY_EUR"))
PIVOT q_CB_Profit_With_Dummy_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Profit_With_Dummy_Mod
SELECT 
rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency as Curr,
Month,
Profit

FROM 
q_CB_Profit_Mod

UNION ALL SELECT 
		rep_Month,
p_Code,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr AS Curr,
g_Month AS Month,
Total_Expense AS Profit

	FROM 
		q_BB_Qty_Dummy_Full

WHERE (((rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Project_Months
SELECT t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name AS Name
FROM t_CB_Profit_Total_ST LEFT JOIN t_001_Projects ON t_CB_Profit_Total_ST.PC = t_001_Projects.p_Code
GROUP BY t_CB_Profit_Total_ST.rep_Month, t_CB_Profit_Total_ST.PC, t_001_Projects.r03_S_Name
ORDER BY t_CB_Profit_Total_ST.rep_Month DESC;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works
SELECT t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0))
ORDER BY t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Mod
SELECT t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0) And ((t_CB_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY t_CB_Qty.Key_R_PC_L6, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Monthly
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0))
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_ActiveM_Works_Monthly_Mod
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
FROM t_CB_Qty LEFT JOIN t_Rep_Month ON t_CB_Qty.rep_Month = t_Rep_Month.rep_Month
WHERE (((t_CB_Qty.Exp_CB_Mon)>t_Rep_Month.rep_Month_Date) And ((t_CB_Qty.Exp_CB_Qty)<>0))
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon
HAVING (((t_CB_Qty.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")))
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Qty_Crosstab
TRANSFORM Sum(t_CB_Qty.Exp_CB_Qty) AS SumOfExp_CB_Qty
SELECT t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
FROM t_CB_Qty
GROUP BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
ORDER BY t_CB_Qty.rep_Month, t_CB_Qty.PC, t_CB_Qty.L_1, t_CB_Qty.L_2, t_CB_Qty.L_3, t_CB_Qty.L_4, t_CB_Qty.L_5, t_CB_Qty.L_6
PIVOT t_CB_Qty.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Res_UP_Market_Coeff
SELECT q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1 AS R_1_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2 AS R_2_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3 AS R_3_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4 AS R_4_Code, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]) AS up_Cost_Coeff, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon AS g_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[exp_cb_mon] AS Key_Full_Comb
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes LEFT JOIN R4_Code ON q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]), q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes.An_rs_quantity, R4_Code.Currency, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes].[exp_cb_mon]
ORDER BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Res_UP_Market_Coeff_Mod
SELECT q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1 AS R_1_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2 AS R_2_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3 AS R_3_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4 AS R_4_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency AS [Currency], (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]) AS up_Cost_Coeff, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon AS g_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.An_rs_quantity, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_Full, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[exp_cb_mon] AS Key_Full_Comb
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod LEFT JOIN R4_Code ON q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple = R4_Code.Key_R4_Simple
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency, (1+[w_UFE]*[bb_UFE])*(1+[w_TUFE]*[bb_TUFE])*(1+[w_INF_USD]*[bb_INF_USD])*(1+[w_INF_EUR]*[bb_INF_EUR])*(1+[w_Metal]*[bb_Metal])*(1+[w_Petrol]*[bb_Petrol])*(1+[w_Cement]*[bb_Cement])*(1+[w_Electricity]*[bb_Electricity]), q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.up_Cost, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.An_rs_quantity, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_Full, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Key_R4_Simple, [Key_Full] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[rs_Currency] & "." & [q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod].[exp_cb_mon]
ORDER BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_L4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Data
SELECT q_Budget_WBS_Union.L_1, q_Budget_WBS_Union.L_2, q_Budget_WBS_Union.L_3, q_Budget_WBS_Union.L_4, q_Budget_WBS_Union.L_5, q_Budget_WBS_Union.L_6, q_Budget_WBS_Union.up_Curr, Sum(IIf([q_Second_Budget_GT].[IncomeGT] Is Null,"0",[q_Second_Budget_GT].[IncomeGT])) AS IncomeGT_Second, Sum(IIf([q_Second_Budget_GT].[ExpenseGT] Is Null,"0",[q_Second_Budget_GT].[ExpenseGT])) AS ExpenseGT_Second, Sum(IIf([q_Second_Budget_GT].[ProfitGT] Is Null,"0",[q_Second_Budget_GT].[ProfitGT])) AS ProfitGT_Second, Sum(IIf([q_First_Budget_GT].[IncomeGT] Is Null,"0",[q_First_Budget_GT].[IncomeGT])) AS IncomeGT_First, Sum(IIf([q_First_Budget_GT].[ExpenseGT] Is Null,"0",[q_First_Budget_GT].[ExpenseGT])) AS ExpenseGT_First, Sum(IIf([q_First_Budget_GT].[ProfitGT] Is Null,"0",[q_First_Budget_GT].[ProfitGT])) AS ProfitGT_First, [IncomeGT_Second]-[IncomeGT_First] AS IncomeDiffGT, [ExpenseGT_Second]-[ExpenseGT_First] AS ExpenseDiff_GT, [ProfitGT_Second]-[ProfitGT_First] AS ProfitDiff_GT, Sum(IIf([q_Second_Budget_RT_Grouped].[IncomeRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[IncomeRT])) AS IncomeRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped].[ExpenseRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[ExpenseRT])) AS ExpenseRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped].[ProfitRT] Is Null,"0",[q_Second_Budget_RT_Grouped].[ProfitRT])) AS ProfitRT_Second, Sum(IIf([q_First_Budget_RT_Grouped].[IncomeRT] Is Null,"0",[q_First_Budget_RT_Grouped].[IncomeRT])) AS IncomeRT_First, Sum(IIf([q_First_Budget_RT_Grouped].[ExpenseRT] Is Null,"0",[q_First_Budget_RT_Grouped].[ExpenseRT])) AS ExpenseRT_First, Sum(IIf([q_First_Budget_RT_Grouped].[ProfitRT] Is Null,"0",[q_First_Budget_RT_Grouped].[ProfitRT])) AS ProfitRT_First, [IncomeRT_Second]-[IncomeRT_First] AS IncomeDiffRT, [ExpenseRT_Second]-[ExpenseRT_First] AS ExpenseDiff_RT, [ProfitRT_Second]-[ProfitRT_First] AS ProfitDiff_RT, [IncomeGT_Second]-[IncomeRT_Second] AS IncomeREM_Second, [ExpenseGT_Second]-[ExpenseRT_Second] AS ExpenseREM_Second, [ProfitGT_Second]-[ProfitRT_Second] AS ProfitREM_Second, [IncomeGT_First]-[IncomeRT_First] AS IncomeREM_First, [ExpenseGT_First]-[ExpenseRT_First] AS ExpenseREM_First, [ProfitGT_First]-[ProfitRT_First] AS ProfitREM_First, [IncomeREM_Second]-[IncomeREM_First] AS IncomeREM_Diff, [ExpenseREM_Second]-[ExpenseREM_First] AS ExpenseREM_Diff, [ProfitREM_Second]-[ProfitREM_First] AS ProfitREM_Diff, q_Budget_WBS_Union.Desc_TR_L3, q_Budget_WBS_Union.Desc_TR_L2, q_Budget_WBS_Union.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4
FROM (((((q_Budget_WBS_Union LEFT JOIN q_Second_Budget_GT ON (q_Budget_WBS_Union.up_Curr = q_Second_Budget_GT.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_Second_Budget_GT.L_6) AND (q_Budget_WBS_Union.L_5 = q_Second_Budget_GT.L_5) AND (q_Budget_WBS_Union.L_4 = q_Second_Budget_GT.L_4) AND (q_Budget_WBS_Union.L_3 = q_Second_Budget_GT.L_3) AND (q_Budget_WBS_Union.L_2 = q_Second_Budget_GT.L_2) AND (q_Budget_WBS_Union.L_1 = q_Second_Budget_GT.L_1)) LEFT JOIN q_First_Budget_GT ON (q_Budget_WBS_Union.up_Curr = q_First_Budget_GT.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_First_Budget_GT.L_6) AND (q_Budget_WBS_Union.L_5 = q_First_Budget_GT.L_5) AND (q_Budget_WBS_Union.L_4 = q_First_Budget_GT.L_4) AND (q_Budget_WBS_Union.L_3 = q_First_Budget_GT.L_3) AND (q_Budget_WBS_Union.L_2 = q_First_Budget_GT.L_2) AND (q_Budget_WBS_Union.L_1 = q_First_Budget_GT.L_1)) LEFT JOIN q_Second_Budget_RT_Grouped ON (q_Budget_WBS_Union.up_Curr = q_Second_Budget_RT_Grouped.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_Second_Budget_RT_Grouped.L_6) AND (q_Budget_WBS_Union.L_5 = q_Second_Budget_RT_Grouped.L_5) AND (q_Budget_WBS_Union.L_4 = q_Second_Budget_RT_Grouped.L_4) AND (q_Budget_WBS_Union.L_3 = q_Second_Budget_RT_Grouped.L_3) AND (q_Budget_WBS_Union.L_2 = q_Second_Budget_RT_Grouped.L_2) AND (q_Budget_WBS_Union.L_1 = q_Second_Budget_RT_Grouped.L_1)) LEFT JOIN q_First_Budget_RT_Grouped ON (q_Budget_WBS_Union.up_Curr = q_First_Budget_RT_Grouped.up_Curr) AND (q_Budget_WBS_Union.L_6 = q_First_Budget_RT_Grouped.L_6) AND (q_Budget_WBS_Union.L_5 = q_First_Budget_RT_Grouped.L_5) AND (q_Budget_WBS_Union.L_4 = q_First_Budget_RT_Grouped.L_4) AND (q_Budget_WBS_Union.L_3 = q_First_Budget_RT_Grouped.L_3) AND (q_Budget_WBS_Union.L_2 = q_First_Budget_RT_Grouped.L_2) AND (q_Budget_WBS_Union.L_1 = q_First_Budget_RT_Grouped.L_1)) LEFT JOIN C5_Code ON (q_Budget_WBS_Union.L_5 = C5_Code.c_L5) AND (q_Budget_WBS_Union.L_4 = C5_Code.c_L4) AND (q_Budget_WBS_Union.L_3 = C5_Code.c_L3) AND (q_Budget_WBS_Union.L_2 = C5_Code.c_L2) AND (q_Budget_WBS_Union.L_1 = C5_Code.c_L1)) LEFT JOIN C4_Code ON (q_Budget_WBS_Union.L_4 = C4_Code.c_L4) AND (q_Budget_WBS_Union.L_3 = C4_Code.c_L3) AND (q_Budget_WBS_Union.L_2 = C4_Code.c_L2) AND (q_Budget_WBS_Union.L_1 = C4_Code.c_L1)
GROUP BY q_Budget_WBS_Union.L_1, q_Budget_WBS_Union.L_2, q_Budget_WBS_Union.L_3, q_Budget_WBS_Union.L_4, q_Budget_WBS_Union.L_5, q_Budget_WBS_Union.L_6, q_Budget_WBS_Union.up_Curr, q_Budget_WBS_Union.Desc_TR_L3, q_Budget_WBS_Union.Desc_TR_L2, q_Budget_WBS_Union.Desc_TR_L6, C5_Code.Desc_TR_L5, C4_Code.Desc_TR_L4;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Mod_USD_Total
SELECT Sum(t_q_CB_Exp_USD_Mod.USD_Expense) AS Total_USD_Expense, t_q_CB_Exp_USD_Mod.rep_Month
FROM t_q_CB_Exp_USD_Mod
GROUP BY t_q_CB_Exp_USD_Mod.rep_Month
HAVING (((t_q_CB_Exp_USD_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data
SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
IncomeGT_Second AS Second_Data_GT,
IncomeRT_Second AS Second_Data_RT,
IncomeGT_First AS First_Data_GT,
IncomeRT_First AS First_Data_RT,
IncomeREM_Second AS Second_Data_REM,
IncomeREM_First AS First_Data_REM,
IncomeGT_Second - IncomeGT_First AS GT_REM,
IncomeRT_Second - IncomeRT_First AS RT_REM,
IncomeREM_Second - IncomeREM_First AS REM_REM,
"1 - GELİR" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE (IncomeGT_Second + IncomeRT_Second + IncomeGT_First + IncomeRT_First) <> 0

UNION

SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ExpenseGT_Second,
ExpenseRT_Second,
ExpenseGT_First,
ExpenseRT_First,
ExpenseREM_Second,
ExpenseREM_First,
ExpenseGT_Second - ExpenseGT_First,
ExpenseRT_Second - ExpenseRT_First AS RT_REM,
ExpenseREM_Second - ExpenseREM_First AS REM_REM,
"2 - GİDER" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE  (ExpenseGT_Second + ExpenseRT_Second + ExpenseGT_First + ExpenseRT_First) <>0

UNION SELECT 
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ProfitGT_Second,
ProfitRT_Second,
ProfitGT_First,
ProfitRT_First,
ProfitREM_Second,
ProfitREM_First,
ProfitGT_Second - ProfitGT_First,
ProfitRT_Second - ProfitRT_First AS RT_REM,
ProfitREM_Second - ProfitREM_First AS REM_REM,
"3 - BRÜT KAR" AS Budget_Type,
Desc_TR_L5,
Desc_TR_L4

	FROM 
		q_CB_Sum_Cons_Data

WHERE  (ProfitGT_Second + ProfitRT_Second + ProfitGT_First + ProfitRT_First) <>0;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data_Lvl_4
SELECT q_CB_Sum_Cons_Report_Data.L_1, q_CB_Sum_Cons_Report_Data.L_2, q_CB_Sum_Cons_Report_Data.L_3, q_CB_Sum_Cons_Report_Data.L_4, q_CB_Sum_Cons_Report_Data.L_5, q_CB_Sum_Cons_Report_Data.L_6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Desc_TR_L3, q_CB_Sum_Cons_Report_Data.Desc_TR_L4, q_CB_Sum_Cons_Report_Data.Desc_TR_L5, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Cons_Report_Data
GROUP BY q_CB_Sum_Cons_Report_Data.L_1, q_CB_Sum_Cons_Report_Data.L_2, q_CB_Sum_Cons_Report_Data.L_3, q_CB_Sum_Cons_Report_Data.L_4, q_CB_Sum_Cons_Report_Data.L_5, q_CB_Sum_Cons_Report_Data.L_6, q_CB_Sum_Cons_Report_Data.up_Curr, q_CB_Sum_Cons_Report_Data.Desc_TR_L3, q_CB_Sum_Cons_Report_Data.Desc_TR_L4, q_CB_Sum_Cons_Report_Data.Desc_TR_L5, q_CB_Sum_Cons_Report_Data.Desc_TR_L6, q_CB_Sum_Cons_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Cons_Report_Data.L_1)='D') AND ((q_CB_Sum_Cons_Report_Data.L_2)='01') AND ((q_CB_Sum_Cons_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Cons_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_Report_Data_Lvl_5
SELECT q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.L_5, q_CB_Sum_Cons_Report_Data_Lvl_4.L_6, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L5, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L6, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.First_Data_REM) AS First_Data_REM, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type, Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) AS GT_REM
FROM q_CB_Sum_Cons_Report_Data_Lvl_4
GROUP BY q_CB_Sum_Cons_Report_Data_Lvl_4.L_1, q_CB_Sum_Cons_Report_Data_Lvl_4.L_2, q_CB_Sum_Cons_Report_Data_Lvl_4.L_3, q_CB_Sum_Cons_Report_Data_Lvl_4.L_4, q_CB_Sum_Cons_Report_Data_Lvl_4.L_5, q_CB_Sum_Cons_Report_Data_Lvl_4.L_6, q_CB_Sum_Cons_Report_Data_Lvl_4.up_Curr, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L3, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L4, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L5, q_CB_Sum_Cons_Report_Data_Lvl_4.Desc_TR_L6, q_CB_Sum_Cons_Report_Data_Lvl_4.Budget_Type
HAVING (((q_CB_Sum_Cons_Report_Data_Lvl_4.L_1)='D') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_2)='01') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_4)='11') AND ((q_CB_Sum_Cons_Report_Data_Lvl_4.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Cons_Report_Data_Lvl_4.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Cons_USD_Total
SELECT Sum(t_q_CB_Exp_USD.USD_Expense) AS Total_USD_Expense, t_q_CB_Exp_USD.rep_Month
FROM t_q_CB_Exp_USD
GROUP BY t_q_CB_Exp_USD.rep_Month
HAVING (((t_q_CB_Exp_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Data
SELECT q_Budget_WBS_Union_Projects.PC, q_Budget_WBS_Union_Projects.L_1, q_Budget_WBS_Union_Projects.L_2, q_Budget_WBS_Union_Projects.L_3, q_Budget_WBS_Union_Projects.L_4, q_Budget_WBS_Union_Projects.L_5, q_Budget_WBS_Union_Projects.L_6, q_Budget_WBS_Union_Projects.up_Curr, Sum(IIf([q_Second_Budget_GT].[IncomeGT] Is Null,"0",[q_Second_Budget_GT].[IncomeGT])) AS IncomeGT_Second, Sum(IIf([q_Second_Budget_GT].[ExpenseGT] Is Null,"0",[q_Second_Budget_GT].[ExpenseGT])) AS ExpenseGT_Second, Sum(IIf([q_Second_Budget_GT].[ProfitGT] Is Null,"0",[q_Second_Budget_GT].[ProfitGT])) AS ProfitGT_Second, Sum(IIf([q_First_Budget_GT].[IncomeGT] Is Null,"0",[q_First_Budget_GT].[IncomeGT])) AS IncomeGT_First, Sum(IIf([q_First_Budget_GT].[ExpenseGT] Is Null,"0",[q_First_Budget_GT].[ExpenseGT])) AS ExpenseGT_First, Sum(IIf([q_First_Budget_GT].[ProfitGT] Is Null,"0",[q_First_Budget_GT].[ProfitGT])) AS ProfitGT_First, [IncomeGT_Second]-[IncomeGT_First] AS IncomeDiffGT, [ExpenseGT_Second]-[ExpenseGT_First] AS ExpenseDiff_GT, [ProfitGT_Second]-[ProfitGT_First] AS ProfitDiff_GT, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[IncomeRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[IncomeRT])) AS IncomeRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[ExpenseRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[ExpenseRT])) AS ExpenseRT_Second, Sum(IIf([q_Second_Budget_RT_Grouped_Projects].[ProfitRT] Is Null,"0",[q_Second_Budget_RT_Grouped_Projects].[ProfitRT])) AS ProfitRT_Second, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[IncomeRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[IncomeRT])) AS IncomeRT_First, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[ExpenseRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[ExpenseRT])) AS ExpenseRT_First, Sum(IIf([q_First_Budget_RT_Grouped_Projects].[ProfitRT] Is Null,"0",[q_First_Budget_RT_Grouped_Projects].[ProfitRT])) AS ProfitRT_First, [IncomeRT_Second]-[IncomeRT_First] AS IncomeDiffRT, [ExpenseRT_Second]-[ExpenseRT_First] AS ExpenseDiff_RT, [ProfitRT_Second]-[ProfitRT_First] AS ProfitDiff_RT, [IncomeGT_Second]-[IncomeRT_Second] AS IncomeREM_Second, [ExpenseGT_Second]-[ExpenseRT_Second] AS ExpenseREM_Second, [ProfitGT_Second]-[ProfitRT_Second] AS ProfitREM_Second, [IncomeGT_First]-[IncomeRT_First] AS IncomeREM_First, [ExpenseGT_First]-[ExpenseRT_First] AS ExpenseREM_First, [ProfitGT_First]-[ProfitRT_First] AS ProfitREM_First, [IncomeREM_Second]-[IncomeREM_First] AS IncomeREM_Diff, [ExpenseREM_Second]-[ExpenseREM_First] AS ExpenseREM_Diff, [ProfitREM_Second]-[ProfitREM_First] AS ProfitREM_Diff, q_Budget_WBS_Union_Projects.Desc_TR_L3, q_Budget_WBS_Union_Projects.Desc_TR_L2, q_Budget_WBS_Union_Projects.Desc_TR_L6, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5
FROM (((((q_Budget_WBS_Union_Projects LEFT JOIN q_Second_Budget_GT ON (q_Budget_WBS_Union_Projects.up_Curr = q_Second_Budget_GT.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_Second_Budget_GT.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_Second_Budget_GT.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_Second_Budget_GT.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_Second_Budget_GT.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_Second_Budget_GT.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_Second_Budget_GT.L_1) AND (q_Budget_WBS_Union_Projects.PC = q_Second_Budget_GT.PC)) LEFT JOIN q_First_Budget_GT ON (q_Budget_WBS_Union_Projects.up_Curr = q_First_Budget_GT.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_First_Budget_GT.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_First_Budget_GT.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_First_Budget_GT.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_First_Budget_GT.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_First_Budget_GT.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_First_Budget_GT.L_1) AND (q_Budget_WBS_Union_Projects.PC = q_First_Budget_GT.PC)) LEFT JOIN q_Second_Budget_RT_Grouped_Projects ON (q_Budget_WBS_Union_Projects.PC = q_Second_Budget_RT_Grouped_Projects.PC) AND (q_Budget_WBS_Union_Projects.up_Curr = q_Second_Budget_RT_Grouped_Projects.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_Second_Budget_RT_Grouped_Projects.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_Second_Budget_RT_Grouped_Projects.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_Second_Budget_RT_Grouped_Projects.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_Second_Budget_RT_Grouped_Projects.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_Second_Budget_RT_Grouped_Projects.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_Second_Budget_RT_Grouped_Projects.L_1)) LEFT JOIN q_First_Budget_RT_Grouped_Projects ON (q_Budget_WBS_Union_Projects.PC = q_First_Budget_RT_Grouped_Projects.PC) AND (q_Budget_WBS_Union_Projects.up_Curr = q_First_Budget_RT_Grouped_Projects.up_Curr) AND (q_Budget_WBS_Union_Projects.L_6 = q_First_Budget_RT_Grouped_Projects.L_6) AND (q_Budget_WBS_Union_Projects.L_5 = q_First_Budget_RT_Grouped_Projects.L_5) AND (q_Budget_WBS_Union_Projects.L_4 = q_First_Budget_RT_Grouped_Projects.L_4) AND (q_Budget_WBS_Union_Projects.L_3 = q_First_Budget_RT_Grouped_Projects.L_3) AND (q_Budget_WBS_Union_Projects.L_2 = q_First_Budget_RT_Grouped_Projects.L_2) AND (q_Budget_WBS_Union_Projects.L_1 = q_First_Budget_RT_Grouped_Projects.L_1)) LEFT JOIN C4_Code ON (q_Budget_WBS_Union_Projects.L_4 = C4_Code.c_L4) AND (q_Budget_WBS_Union_Projects.L_3 = C4_Code.c_L3) AND (q_Budget_WBS_Union_Projects.L_2 = C4_Code.c_L2) AND (q_Budget_WBS_Union_Projects.L_1 = C4_Code.c_L1)) LEFT JOIN C5_Code ON (q_Budget_WBS_Union_Projects.L_5 = C5_Code.c_L5) AND (q_Budget_WBS_Union_Projects.L_4 = C5_Code.c_L4) AND (q_Budget_WBS_Union_Projects.L_3 = C5_Code.c_L3) AND (q_Budget_WBS_Union_Projects.L_2 = C5_Code.c_L2) AND (q_Budget_WBS_Union_Projects.L_1 = C5_Code.c_L1)
GROUP BY q_Budget_WBS_Union_Projects.PC, q_Budget_WBS_Union_Projects.L_1, q_Budget_WBS_Union_Projects.L_2, q_Budget_WBS_Union_Projects.L_3, q_Budget_WBS_Union_Projects.L_4, q_Budget_WBS_Union_Projects.L_5, q_Budget_WBS_Union_Projects.L_6, q_Budget_WBS_Union_Projects.up_Curr, q_Budget_WBS_Union_Projects.Desc_TR_L3, q_Budget_WBS_Union_Projects.Desc_TR_L2, q_Budget_WBS_Union_Projects.Desc_TR_L6, C4_Code.Desc_TR_L4, C5_Code.Desc_TR_L5;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data
SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
IncomeGT_Second AS Second_Data_GT,
IncomeRT_Second AS Second_Data_RT,
IncomeGT_First AS First_Data_GT,
IncomeRT_First AS First_Data_RT,
IncomeREM_Second AS Second_Data_REM,
IncomeREM_First AS First_Data_REM,
IncomeGT_Second - IncomeGT_First AS GT_REM,
IncomeRT_Second - IncomeRT_First AS RT_REM,
IncomeREM_Second - IncomeREM_First AS REM_REM,
"1 - GELİR" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5

	FROM 
		 q_CB_Sum_Projects_Data

WHERE (IncomeGT_Second + IncomeRT_Second + IncomeGT_First + IncomeRT_First) <> 0


UNION

SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ExpenseGT_Second,
ExpenseRT_Second,
ExpenseGT_First,
ExpenseRT_First,
ExpenseREM_Second,
ExpenseREM_First,
ExpenseGT_Second - ExpenseGT_First,
ExpenseRT_Second - ExpenseRT_First AS RT_REM,
ExpenseREM_Second - ExpenseREM_First AS REM_REM,
"2 - GİDER" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5


	FROM 
		 q_CB_Sum_Projects_Data


WHERE  (ExpenseGT_Second + ExpenseRT_Second + ExpenseGT_First + ExpenseRT_First) <>0


UNION SELECT 
PC,
		L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
up_Curr,
Desc_TR_L3,
Desc_TR_L2,
Desc_TR_L6,
ProfitGT_Second,
ProfitRT_Second,
ProfitGT_First,
ProfitRT_First,
ProfitREM_Second,
ProfitREM_First,
ProfitGT_Second - ProfitGT_First,
ProfitRT_Second - ProfitRT_First AS RT_REM,
ProfitREM_Second - ProfitREM_First AS REM_REM,
"3 - BRÜT KAR" AS Budget_Type,
Desc_TR_L4,
Desc_TR_L5


	FROM 
		 q_CB_Sum_Projects_Data

WHERE  (ProfitGT_Second + ProfitRT_Second + ProfitGT_First + ProfitRT_First) <>0;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data_Lvl_4
SELECT q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Projects_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, Sum(q_CB_Sum_Projects_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Projects_Report_Data
GROUP BY q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Projects_Report_Data.L_1)='D') AND ((q_CB_Sum_Projects_Report_Data.L_2)='01') AND ((q_CB_Sum_Projects_Report_Data.PC)='MBE') AND ((q_CB_Sum_Projects_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Projects_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Sum_Projects_Report_Data_Lvl_5
SELECT q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_GT) AS Second_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_RT) AS Second_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_GT) AS First_Data_GT, Sum(q_CB_Sum_Projects_Report_Data.First_Data_RT) AS First_Data_RT, Sum(q_CB_Sum_Projects_Report_Data.Second_Data_REM) AS Second_Data_REM, Sum(q_CB_Sum_Projects_Report_Data.First_Data_REM) AS First_Data_REM, q_CB_Sum_Projects_Report_Data.Budget_Type, Sum(q_CB_Sum_Projects_Report_Data.GT_REM) AS GT_REM
FROM q_CB_Sum_Projects_Report_Data
GROUP BY q_CB_Sum_Projects_Report_Data.PC, q_CB_Sum_Projects_Report_Data.L_1, q_CB_Sum_Projects_Report_Data.L_2, q_CB_Sum_Projects_Report_Data.L_3, q_CB_Sum_Projects_Report_Data.L_4, q_CB_Sum_Projects_Report_Data.L_5, q_CB_Sum_Projects_Report_Data.L_6, q_CB_Sum_Projects_Report_Data.up_Curr, q_CB_Sum_Projects_Report_Data.Desc_TR_L3, q_CB_Sum_Projects_Report_Data.Desc_TR_L4, q_CB_Sum_Projects_Report_Data.Desc_TR_L5, q_CB_Sum_Projects_Report_Data.Desc_TR_L6, q_CB_Sum_Projects_Report_Data.Budget_Type
HAVING (((q_CB_Sum_Projects_Report_Data.L_1)='D') AND ((q_CB_Sum_Projects_Report_Data.L_2)='01') AND ((q_CB_Sum_Projects_Report_Data.PC)='MBE') AND ((q_CB_Sum_Projects_Report_Data.L_4)='11') AND ((q_CB_Sum_Projects_Report_Data.L_3)='01'))
ORDER BY Sum(q_CB_Sum_Projects_Report_Data.GT_REM) DESC;

----------------------------------------------------------------------------------------------------
q_CB_Summary_Report_CurrMonth_Data_Group
SELECT q_CB_AllProjects_Report_CurrMonth_Data.rep_Month, q_CB_AllProjects_Report_CurrMonth_Data.PC, q_CB_AllProjects_Report_CurrMonth_Data.L_1, q_CB_AllProjects_Report_CurrMonth_Data.L_2, q_CB_AllProjects_Report_CurrMonth_Data.L_3, q_CB_AllProjects_Report_CurrMonth_Data.L_4, q_CB_AllProjects_Report_CurrMonth_Data.L_5, q_CB_AllProjects_Report_CurrMonth_Data.L_6, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L2, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L3, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L6, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Income) AS Income, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Expense) AS Expense, Sum(q_CB_AllProjects_Report_CurrMonth_Data.Profit) AS Profit, q_CB_AllProjects_Report_CurrMonth_Data.Currency
FROM q_CB_AllProjects_Report_CurrMonth_Data
GROUP BY q_CB_AllProjects_Report_CurrMonth_Data.rep_Month, q_CB_AllProjects_Report_CurrMonth_Data.PC, q_CB_AllProjects_Report_CurrMonth_Data.L_1, q_CB_AllProjects_Report_CurrMonth_Data.L_2, q_CB_AllProjects_Report_CurrMonth_Data.L_3, q_CB_AllProjects_Report_CurrMonth_Data.L_4, q_CB_AllProjects_Report_CurrMonth_Data.L_5, q_CB_AllProjects_Report_CurrMonth_Data.L_6, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L2, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L3, q_CB_AllProjects_Report_CurrMonth_Data.Desc_TR_L6, q_CB_AllProjects_Report_CurrMonth_Data.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Summary_Report_Union
SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency
	FROM 
		q_CB_AllProjects_Report_CurrMonth_Data

UNION SELECT 
		rep_Month,
PC,
L_1,
L_2,
L_3,
L_4,
L_5,
L_6,
Currency

	FROM 
		q_CB_AllProjects_Report_EndProject_Data;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price
SELECT q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code AS P01_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month AS [Month], q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_CB_UP_Coeff.Key_R_PC_L6
FROM q_CB_UP_Coeff
GROUP BY q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.rs_Currency, q_CB_UP_Coeff.Key_R_PC_L6, q_CB_UP_Coeff.g_Month
ORDER BY q_CB_UP_Coeff.rep_Month, q_CB_UP_Coeff.up_pr_Code, q_CB_UP_Coeff.L_1, q_CB_UP_Coeff.L_2, q_CB_UP_Coeff.L_3, q_CB_UP_Coeff.L_4, q_CB_UP_Coeff.L_5, q_CB_UP_Coeff.L_6, q_CB_UP_Coeff.g_Month, q_CB_UP_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Crosstab
TRANSFORM Sum(q_CB_Unit_Price.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.up_Curr, q_CB_Unit_Price.P01_Code
FROM q_CB_Unit_Price
GROUP BY q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.up_Curr, q_CB_Unit_Price.P01_Code
PIVOT q_CB_Unit_Price.Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Crosstab_Mod
TRANSFORM Sum(q_CB_Unit_Price_Mod.Unit_Price_Planned_Coeff) AS SumOfUnit_Price_Planned_Coeff
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.P01_Code
FROM q_CB_Unit_Price_Mod
GROUP BY q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.P01_Code
PIVOT q_CB_Unit_Price_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Diff
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Month, q_CB_Unit_Price.Unit_Price_Planned_Coeff AS UP_Orj, q_CB_Unit_Price_Mod.Unit_Price_Planned_Coeff AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Unit_Price_Mod LEFT JOIN q_CB_Unit_Price ON (q_CB_Unit_Price_Mod.up_Curr = q_CB_Unit_Price.up_Curr) AND (q_CB_Unit_Price_Mod.Month = q_CB_Unit_Price.Month) AND (q_CB_Unit_Price_Mod.L_6 = q_CB_Unit_Price.L_6) AND (q_CB_Unit_Price_Mod.L_5 = q_CB_Unit_Price.L_5) AND (q_CB_Unit_Price_Mod.L_4 = q_CB_Unit_Price.L_4) AND (q_CB_Unit_Price_Mod.L_3 = q_CB_Unit_Price.L_3) AND (q_CB_Unit_Price_Mod.L_2 = q_CB_Unit_Price.L_2) AND (q_CB_Unit_Price_Mod.L_1 = q_CB_Unit_Price.L_1) AND (q_CB_Unit_Price_Mod.P01_Code = q_CB_Unit_Price.P01_Code) AND (q_CB_Unit_Price_Mod.rep_Month = q_CB_Unit_Price.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Mod
SELECT q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code AS P01_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month, q_CB_UP_Coeff_Mod.rs_Currency AS up_Curr, Sum([up_Cost]*[An_rs_Quantity]*[up_Cost_Coeff_all]) AS Unit_Price_Planned_Coeff, q_CB_UP_Coeff_Mod.Key_R_PC_L6
FROM q_CB_UP_Coeff_Mod
GROUP BY q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month, q_CB_UP_Coeff_Mod.rs_Currency, q_CB_UP_Coeff_Mod.Key_R_PC_L6
ORDER BY q_CB_UP_Coeff_Mod.rep_Month, q_CB_UP_Coeff_Mod.up_pr_Code, q_CB_UP_Coeff_Mod.L_1, q_CB_UP_Coeff_Mod.L_2, q_CB_UP_Coeff_Mod.L_3, q_CB_UP_Coeff_Mod.L_4, q_CB_UP_Coeff_Mod.L_5, q_CB_UP_Coeff_Mod.L_6, q_CB_UP_Coeff_Mod.Month, q_CB_UP_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_Pre
SELECT q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC AS P01_Code, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon AS [Month], q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon AS g_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency AS up_Curr, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, Sum(IIf([up_Curr]="TRY",[up_cost]*[w_INF_USD]*(1+[rt_USD_TRY])*(1+[bb_INF_USD]),IIf([Currency]="EUR",[up_cost]*[w_INF_USD]*(1+[rt_USD_EUR])*(1+[bb_INF_USD]),[up_cost]*(1+[bb_INF_USD])))) AS Cost_Exc_Inf_USD, Sum(IIf([up_Curr]="TRY",[up_cost]*[w_INF_EUR]*(1+[rt_EUR_TRY])*(1+[bb_INF_EUR]),IIf([Currency]="USD",[up_cost]*[w_INF_EUR]*(1+[rt_EUR_USD])*(1+[bb_INF_EUR]),[up_cost]*(1+[bb_INF_EUR])))) AS Cost_Exc_Inf_EUR, Sum([up_cost]*([w_UFE]*(1+[bb_UFE])+[w_TUFE]*(1+[bb_TUFE])+[w_Metal]*(1+[bb_Metal])+[w_Petrol]*(1+[bb_Petrol])+[w_Cement]*(1+[bb_Cement])+[w_Electricity]*(1+[bb_Electricity]))) AS Cost_Market, Sum(q_CB_UP_Pre_Coeff_ActiveM_Indexes.up_Cost) AS up_cost_base, t_PL_Analysis.An_rs_quantity
FROM (q_CB_UP_Pre_Coeff_ActiveM_Indexes LEFT JOIN R4_Code ON q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R4_Simple = R4_Code.Key_R4_Simple) LEFT JOIN t_PL_Analysis ON q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_Full = t_PL_Analysis.Key_Full
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Key_R_PC_L6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, t_PL_Analysis.An_rs_quantity
ORDER BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Unit_Price_TO
SELECT q_CB_Unit_Price_Pre.rep_Month, q_CB_Unit_Price_Pre.P01_Code, q_CB_Unit_Price_Pre.L_1, q_CB_Unit_Price_Pre.L_2, q_CB_Unit_Price_Pre.L_3, q_CB_Unit_Price_Pre.L_4, q_CB_Unit_Price_Pre.L_5, q_CB_Unit_Price_Pre.L_6, q_CB_Unit_Price_Pre.Month, q_CB_Unit_Price_Pre.g_Month, q_CB_Unit_Price_Pre.up_Curr, q_CB_Unit_Price_Pre.up_cost_base, Sum([Cost_Market]+[Cost_Exc_Inf_USD]+[Cost_Exc_Inf_EUR]) AS Unit_Price_Planned_Coeff, q_CB_Unit_Price_Pre.Key_R_PC_L6, IIf([up_cost_base]<>0,Round(((([Cost_Exc_INF_USD]+[Cost_Exc_INF_EUR]+[Cost_Market])/[up_cost_base])-1)*100,2),0) AS Inc_Rate
FROM q_CB_Unit_Price_Pre
GROUP BY q_CB_Unit_Price_Pre.rep_Month, q_CB_Unit_Price_Pre.P01_Code, q_CB_Unit_Price_Pre.L_1, q_CB_Unit_Price_Pre.L_2, q_CB_Unit_Price_Pre.L_3, q_CB_Unit_Price_Pre.L_4, q_CB_Unit_Price_Pre.L_5, q_CB_Unit_Price_Pre.L_6, q_CB_Unit_Price_Pre.Month, q_CB_Unit_Price_Pre.g_Month, q_CB_Unit_Price_Pre.up_Curr, q_CB_Unit_Price_Pre.up_cost_base, q_CB_Unit_Price_Pre.Key_R_PC_L6, IIf([up_cost_base]<>0,Round(((([Cost_Exc_INF_USD]+[Cost_Exc_INF_EUR]+[Cost_Market])/[up_cost_base])-1)*100,2),0), q_CB_Unit_Price_Pre.g_Month
ORDER BY q_CB_Unit_Price_Pre.rep_Month, q_CB_Unit_Price_Pre.P01_Code, q_CB_Unit_Price_Pre.L_1, q_CB_Unit_Price_Pre.L_2, q_CB_Unit_Price_Pre.L_3, q_CB_Unit_Price_Pre.L_4, q_CB_Unit_Price_Pre.L_5, q_CB_Unit_Price_Pre.L_6, q_CB_Unit_Price_Pre.g_Month, q_CB_Unit_Price_Pre.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_Check
SELECT q_PL_Exp.rep_Month, q_PL_Exp.P01_Code, q_PL_Exp.L_1, q_PL_Exp.L_2, q_PL_Exp.L_3, q_PL_Exp.L_4, q_PL_Exp.L_5, q_PL_Exp.L_6, q_PL_Exp.up_Curr, Sum(q_PL_Exp.Total_Expense) AS [Total Expense], Sum(q_CB_Qty.Exp_CB_Qty) AS Quantity, C6_Code.Unit, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Without_Coeff, [Total Expense]/[Quantity] AS UP_Average_With_Coeff, [UP_Average_With_Coeff]/[UP_Without_Coeff] AS UP_Average_Coeff
FROM ((q_PL_Exp LEFT JOIN C6_Code ON (q_PL_Exp.L_1 = C6_Code.c_L1) AND (q_PL_Exp.L_2 = C6_Code.c_L2) AND (q_PL_Exp.L_3 = C6_Code.c_L3) AND (q_PL_Exp.L_4 = C6_Code.c_L4) AND (q_PL_Exp.L_5 = C6_Code.c_L5) AND (q_PL_Exp.L_6 = C6_Code.c_L6)) LEFT JOIN q_CB_Qty ON (q_PL_Exp.rep_Month = q_CB_Qty.rep_Month) AND (q_PL_Exp.P01_Code = q_CB_Qty.PC) AND (q_PL_Exp.L_1 = q_CB_Qty.L_1) AND (q_PL_Exp.L_2 = q_CB_Qty.L_2) AND (q_PL_Exp.L_3 = q_CB_Qty.L_3) AND (q_PL_Exp.L_4 = q_CB_Qty.L_4) AND (q_PL_Exp.L_5 = q_CB_Qty.L_5) AND (q_PL_Exp.L_6 = q_CB_Qty.L_6)) LEFT JOIN q_CB_Work_UP_without_Coeff ON (q_PL_Exp.rep_Month = q_CB_Work_UP_without_Coeff.rep_Month) AND (q_PL_Exp.P01_Code = q_CB_Work_UP_without_Coeff.PC) AND (q_PL_Exp.L_1 = q_CB_Work_UP_without_Coeff.L_1) AND (q_PL_Exp.L_2 = q_CB_Work_UP_without_Coeff.L_2) AND (q_PL_Exp.L_3 = q_CB_Work_UP_without_Coeff.L_3) AND (q_PL_Exp.L_4 = q_CB_Work_UP_without_Coeff.L_4) AND (q_PL_Exp.L_5 = q_CB_Work_UP_without_Coeff.L_5) AND (q_PL_Exp.L_6 = q_CB_Work_UP_without_Coeff.L_6)
GROUP BY q_PL_Exp.rep_Month, q_PL_Exp.P01_Code, q_PL_Exp.L_1, q_PL_Exp.L_2, q_PL_Exp.L_3, q_PL_Exp.L_4, q_PL_Exp.L_5, q_PL_Exp.L_6, q_PL_Exp.up_Curr, C6_Code.Unit, q_CB_Work_UP_without_Coeff.Unit_Price_Planned;

----------------------------------------------------------------------------------------------------
q_CB_UP_Coeff
SELECT q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.PC AS up_pr_Code, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.R_1_Code AS up_rs_L1, q_CB_Res_UP_Market_Coeff.R_2_Code AS up_rs_L2, q_CB_Res_UP_Market_Coeff.R_3_Code AS up_rs_L3, q_CB_Res_UP_Market_Coeff.R_4_Code AS up_rs_L4, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.up_Cost_Coeff, q_CB_Curr_Escalation_Rates.k_USD, q_CB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_CB_Res_UP_Market_Coeff.up_Cost, q_CB_Res_UP_Market_Coeff.Currency AS rs_Currency, q_CB_Res_UP_Market_Coeff.Key_Full, q_CB_Res_UP_Market_Coeff.An_rs_quantity, q_CB_Res_UP_Market_Coeff.Key_R_PC_L6
FROM q_CB_Res_UP_Market_Coeff LEFT JOIN q_CB_Curr_Escalation_Rates ON q_CB_Res_UP_Market_Coeff.Key_Full_Comb = q_CB_Curr_Escalation_Rates.Key_Full_Comb
GROUP BY q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.R_1_Code, q_CB_Res_UP_Market_Coeff.R_2_Code, q_CB_Res_UP_Market_Coeff.R_3_Code, q_CB_Res_UP_Market_Coeff.R_4_Code, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.up_Cost_Coeff, q_CB_Curr_Escalation_Rates.k_USD, q_CB_Curr_Escalation_Rates.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_CB_Res_UP_Market_Coeff.up_Cost, q_CB_Res_UP_Market_Coeff.Currency, q_CB_Res_UP_Market_Coeff.Key_Full, q_CB_Res_UP_Market_Coeff.An_rs_quantity, q_CB_Res_UP_Market_Coeff.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_CB_UP_Coeff_Mod
SELECT q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.PC AS up_pr_Code, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.R_1_Code AS up_rs_L1, q_CB_Res_UP_Market_Coeff_Mod.R_2_Code AS up_rs_L2, q_CB_Res_UP_Market_Coeff_Mod.R_3_Code AS up_rs_L3, q_CB_Res_UP_Market_Coeff_Mod.R_4_Code AS up_rs_L4, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.up_Cost_Coeff, q_CB_Curr_Escalation_Rates_Mod.k_USD, q_CB_Curr_Escalation_Rates_Mod.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6) AS up_Cost_Coeff_all, q_CB_Res_UP_Market_Coeff_Mod.up_Cost, q_CB_Res_UP_Market_Coeff_Mod.Currency AS rs_Currency, q_CB_Res_UP_Market_Coeff_Mod.Key_Full, q_CB_Res_UP_Market_Coeff_Mod.An_rs_quantity, q_CB_Res_UP_Market_Coeff_Mod.Key_R_PC_L6, q_CB_Res_UP_Market_Coeff_Mod.g_Month AS [Month]
FROM q_CB_Res_UP_Market_Coeff_Mod LEFT JOIN q_CB_Curr_Escalation_Rates_Mod ON q_CB_Res_UP_Market_Coeff_Mod.Key_Full_Comb = q_CB_Curr_Escalation_Rates_Mod.Key_Full_Comb
GROUP BY q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.R_1_Code, q_CB_Res_UP_Market_Coeff_Mod.R_2_Code, q_CB_Res_UP_Market_Coeff_Mod.R_3_Code, q_CB_Res_UP_Market_Coeff_Mod.R_4_Code, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.up_Cost_Coeff, q_CB_Curr_Escalation_Rates_Mod.k_USD, q_CB_Curr_Escalation_Rates_Mod.k_EUR, Round([up_Cost_Coeff]*[k_USD]*[k_EUR],6), q_CB_Res_UP_Market_Coeff_Mod.up_Cost, q_CB_Res_UP_Market_Coeff_Mod.Currency, q_CB_Res_UP_Market_Coeff_Mod.Key_Full, q_CB_Res_UP_Market_Coeff_Mod.An_rs_quantity, q_CB_Res_UP_Market_Coeff_Mod.Key_R_PC_L6, q_CB_Res_UP_Market_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_Pre_Coeff_ActiveM_Indexes
SELECT q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices.rs_L1, q_CB_Analysis_ActiveM_With_Prices.rs_L2, q_CB_Analysis_ActiveM_With_Prices.rs_L3, q_CB_Analysis_ActiveM_With_Prices.rs_L4, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Electricity, q_CB_Analysis_ActiveM_With_Prices.Currency AS rs_Currency, q_CB_Analysis_ActiveM_With_Prices.An_rs_quantity, q_CB_Analysis_ActiveM_With_Prices.up_Cost, q_CB_Analysis_ActiveM_With_Prices.Key_R4_Simple, q_CB_Analysis_ActiveM_With_Prices.Key_R4, q_CB_Analysis_ActiveM_With_Prices.Key_R_PC_L6, q_CB_Analysis_ActiveM_With_Prices.Key_Full
FROM q_CB_Analysis_ActiveM_With_Prices LEFT JOIN t_CB_Indexes ON (q_CB_Analysis_ActiveM_With_Prices.rep_Month = t_CB_Indexes.rep_Month) AND (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = t_CB_Indexes.g_Month);

----------------------------------------------------------------------------------------------------
q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod
SELECT q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R4, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R_PC_L6, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_Full, q_CB_Analysis_ActiveM_With_Prices_Mod.Key_R4_Simple, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L1, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L2, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L3, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L4, t_AC_Indexes_Mod.bb_UFE, t_AC_Indexes_Mod.bb_TUFE, t_AC_Indexes_Mod.bb_INF_USD, t_AC_Indexes_Mod.bb_INF_EUR, t_AC_Indexes_Mod.bb_Metal, t_AC_Indexes_Mod.bb_Petrol, t_AC_Indexes_Mod.bb_Cement, t_AC_Indexes_Mod.bb_Electricity, q_CB_Analysis_ActiveM_With_Prices_Mod.rs_Currency, q_CB_Analysis_ActiveM_With_Prices_Mod.An_rs_quantity, q_CB_Analysis_ActiveM_With_Prices_Mod.up_Cost
FROM q_CB_Analysis_ActiveM_With_Prices_Mod LEFT JOIN t_AC_Indexes_Mod ON (q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon = t_AC_Indexes_Mod.g_Month) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month = t_AC_Indexes_Mod.rep_Month)
ORDER BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6;

----------------------------------------------------------------------------------------------------
q_CB_UP_Pre_Coeff_ActiveM_Indexes_TO
SELECT q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Monthly_Curr_Rates_Inc.rt_EUR_TRY, q_CB_Monthly_Curr_Rates_Inc.rt_EUR_USD, q_CB_Monthly_Curr_Rates_Inc.rt_USD_TRY, q_CB_Monthly_Curr_Rates_Inc.rt_USD_EUR, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, q_CB_Analysis_ActiveM_With_Prices.rs_L1, q_CB_Analysis_ActiveM_With_Prices.rs_L2, q_CB_Analysis_ActiveM_With_Prices.rs_L3, q_CB_Analysis_ActiveM_With_Prices.rs_L4, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Electricity, q_CB_Analysis_ActiveM_With_Prices.Currency AS rs_Currency, q_CB_Analysis_ActiveM_With_Prices.An_rs_quantity, q_CB_Analysis_ActiveM_With_Prices.up_Cost, q_CB_Analysis_ActiveM_With_Prices.Key_R4_Simple, q_CB_Analysis_ActiveM_With_Prices.Key_R4, q_CB_Analysis_ActiveM_With_Prices.Key_R_PC_L6, q_CB_Analysis_ActiveM_With_Prices.Key_Full
FROM (q_CB_Analysis_ActiveM_With_Prices LEFT JOIN t_CB_Indexes ON (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = t_CB_Indexes.g_Month) AND (q_CB_Analysis_ActiveM_With_Prices.rep_Month = t_CB_Indexes.rep_Month)) LEFT JOIN q_CB_Monthly_Curr_Rates_Inc ON (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = q_CB_Monthly_Curr_Rates_Inc.Exp_CB_Mon) AND (q_CB_Analysis_ActiveM_With_Prices.PC = q_CB_Monthly_Curr_Rates_Inc.PC) AND (q_CB_Analysis_ActiveM_With_Prices.rep_Month = q_CB_Monthly_Curr_Rates_Inc.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Curr_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_with_Curr_Coeff.UP) AS SumOfUP
SELECT q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.rs_Currency
FROM q_CB_Work_UP_with_Curr_Coeff
GROUP BY q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.rs_Currency
ORDER BY q_CB_Work_UP_with_Curr_Coeff.rep_Month, q_CB_Work_UP_with_Curr_Coeff.PC, q_CB_Work_UP_with_Curr_Coeff.L_1, q_CB_Work_UP_with_Curr_Coeff.L_2, q_CB_Work_UP_with_Curr_Coeff.L_3, q_CB_Work_UP_with_Curr_Coeff.L_4, q_CB_Work_UP_with_Curr_Coeff.L_5, q_CB_Work_UP_with_Curr_Coeff.L_6, q_CB_Work_UP_with_Curr_Coeff.Month
PIVOT q_CB_Work_UP_with_Curr_Coeff.Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Curr_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_with_Curr_Coeff_Mod.UP) AS SumOfUP
SELECT q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency
FROM q_CB_Work_UP_with_Curr_Coeff_Mod
GROUP BY q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency
ORDER BY q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.Month
PIVOT q_CB_Work_UP_with_Curr_Coeff_Mod.Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Market_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_CB_Work_UP_with_Market_Coeff.rep_Month, q_CB_Work_UP_with_Market_Coeff.PC, q_CB_Work_UP_with_Market_Coeff.L_1, q_CB_Work_UP_with_Market_Coeff.L_2, q_CB_Work_UP_with_Market_Coeff.L_3, q_CB_Work_UP_with_Market_Coeff.L_4, q_CB_Work_UP_with_Market_Coeff.L_5, q_CB_Work_UP_with_Market_Coeff.L_6, q_CB_Work_UP_with_Market_Coeff.Currency
FROM q_CB_Work_UP_with_Market_Coeff
GROUP BY q_CB_Work_UP_with_Market_Coeff.rep_Month, q_CB_Work_UP_with_Market_Coeff.PC, q_CB_Work_UP_with_Market_Coeff.L_1, q_CB_Work_UP_with_Market_Coeff.L_2, q_CB_Work_UP_with_Market_Coeff.L_3, q_CB_Work_UP_with_Market_Coeff.L_4, q_CB_Work_UP_with_Market_Coeff.L_5, q_CB_Work_UP_with_Market_Coeff.L_6, q_CB_Work_UP_with_Market_Coeff.Currency
PIVOT q_CB_Work_UP_with_Market_Coeff.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_with_Market_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_with_Market_Coeff_Mod.UP_with_Coeff) AS SumOfUP_with_Coeff
SELECT q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency
FROM q_CB_Work_UP_with_Market_Coeff_Mod
GROUP BY q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency
PIVOT q_CB_Work_UP_with_Market_Coeff_Mod.g_Month;

----------------------------------------------------------------------------------------------------
q_CB_UP_without_Coeff_Crosstab
TRANSFORM Sum(q_CB_Work_UP_without_Coeff.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_CB_Work_UP_without_Coeff.rep_Month, q_CB_Work_UP_without_Coeff.PC, q_CB_Work_UP_without_Coeff.L_1, q_CB_Work_UP_without_Coeff.L_2, q_CB_Work_UP_without_Coeff.L_3, q_CB_Work_UP_without_Coeff.L_4, q_CB_Work_UP_without_Coeff.L_5, q_CB_Work_UP_without_Coeff.L_6, q_CB_Work_UP_without_Coeff.rs_Currency
FROM q_CB_Work_UP_without_Coeff
GROUP BY q_CB_Work_UP_without_Coeff.rep_Month, q_CB_Work_UP_without_Coeff.PC, q_CB_Work_UP_without_Coeff.L_1, q_CB_Work_UP_without_Coeff.L_2, q_CB_Work_UP_without_Coeff.L_3, q_CB_Work_UP_without_Coeff.L_4, q_CB_Work_UP_without_Coeff.L_5, q_CB_Work_UP_without_Coeff.L_6, q_CB_Work_UP_without_Coeff.rs_Currency
PIVOT q_CB_Work_UP_without_Coeff.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_UP_without_Coeff_Crosstab_Mod
TRANSFORM Sum(q_CB_Work_UP_without_Coeff_Mod.Unit_Price_Planned) AS SumOfUnit_Price_Planned
SELECT q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency
FROM q_CB_Work_UP_without_Coeff_Mod
GROUP BY q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency
PIVOT q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff
SELECT q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_CB_Curr_Escalation_Rates.rs_currency
FROM q_CB_Analysis_ActiveM_With_Prices LEFT JOIN q_CB_Curr_Escalation_Rates ON (q_CB_Analysis_ActiveM_With_Prices.rep_Month = q_CB_Curr_Escalation_Rates.rep_Month) AND (q_CB_Analysis_ActiveM_With_Prices.PC = q_CB_Curr_Escalation_Rates.PC) AND (q_CB_Analysis_ActiveM_With_Prices.L_1 = q_CB_Curr_Escalation_Rates.L_1) AND (q_CB_Analysis_ActiveM_With_Prices.L_2 = q_CB_Curr_Escalation_Rates.L_2) AND (q_CB_Analysis_ActiveM_With_Prices.L_3 = q_CB_Curr_Escalation_Rates.L_3) AND (q_CB_Analysis_ActiveM_With_Prices.L_4 = q_CB_Curr_Escalation_Rates.L_4) AND (q_CB_Analysis_ActiveM_With_Prices.L_5 = q_CB_Curr_Escalation_Rates.L_5) AND (q_CB_Analysis_ActiveM_With_Prices.L_6 = q_CB_Curr_Escalation_Rates.L_6) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L1 = q_CB_Curr_Escalation_Rates.rs_L1) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L2 = q_CB_Curr_Escalation_Rates.rs_L2) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L3 = q_CB_Curr_Escalation_Rates.rs_L3) AND (q_CB_Analysis_ActiveM_With_Prices.rs_L4 = q_CB_Curr_Escalation_Rates.rs_L4) AND (q_CB_Analysis_ActiveM_With_Prices.currency = q_CB_Curr_Escalation_Rates.rs_currency) AND (q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon = q_CB_Curr_Escalation_Rates.Month)
GROUP BY q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, q_CB_Curr_Escalation_Rates.rs_currency
ORDER BY q_CB_Analysis_ActiveM_With_Prices.rep_Month, q_CB_Analysis_ActiveM_With_Prices.PC, q_CB_Analysis_ActiveM_With_Prices.L_1, q_CB_Analysis_ActiveM_With_Prices.L_2, q_CB_Analysis_ActiveM_With_Prices.L_3, q_CB_Analysis_ActiveM_With_Prices.L_4, q_CB_Analysis_ActiveM_With_Prices.L_5, q_CB_Analysis_ActiveM_With_Prices.L_6, q_CB_Analysis_ActiveM_With_Prices.Exp_CB_Mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff_Diff
SELECT q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Curr_Coeff_Mod.PC, q_CB_Work_UP_with_Curr_Coeff_Mod.L_1, q_CB_Work_UP_with_Curr_Coeff_Mod.L_2, q_CB_Work_UP_with_Curr_Coeff_Mod.L_3, q_CB_Work_UP_with_Curr_Coeff_Mod.L_4, q_CB_Work_UP_with_Curr_Coeff_Mod.L_5, q_CB_Work_UP_with_Curr_Coeff_Mod.L_6, q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency, q_CB_Work_UP_with_Curr_Coeff_Mod.Month, q_CB_Work_UP_with_Curr_Coeff.UP AS UP_Orj, q_CB_Work_UP_with_Curr_Coeff_Mod.UP AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_with_Curr_Coeff_Mod LEFT JOIN q_CB_Work_UP_with_Curr_Coeff ON (q_CB_Work_UP_with_Curr_Coeff_Mod.rs_Currency = q_CB_Work_UP_with_Curr_Coeff.rs_Currency) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.Month = q_CB_Work_UP_with_Curr_Coeff.Month) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_6 = q_CB_Work_UP_with_Curr_Coeff.L_6) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_5 = q_CB_Work_UP_with_Curr_Coeff.L_5) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_4 = q_CB_Work_UP_with_Curr_Coeff.L_4) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_3 = q_CB_Work_UP_with_Curr_Coeff.L_3) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_2 = q_CB_Work_UP_with_Curr_Coeff.L_2) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.L_1 = q_CB_Work_UP_with_Curr_Coeff.L_1) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.PC = q_CB_Work_UP_with_Curr_Coeff.PC) AND (q_CB_Work_UP_with_Curr_Coeff_Mod.rep_Month = q_CB_Work_UP_with_Curr_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Curr_Coeff_Mod
SELECT q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon AS [Month], Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]) AS UP, q_CB_Curr_Escalation_Rates_Mod.rs_Currency
FROM q_CB_Analysis_ActiveM_With_Prices_Mod LEFT JOIN q_CB_Curr_Escalation_Rates_Mod ON (q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month = q_CB_Curr_Escalation_Rates_Mod.rep_Month) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.PC = q_CB_Curr_Escalation_Rates_Mod.PC) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_1 = q_CB_Curr_Escalation_Rates_Mod.L_1) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_2 = q_CB_Curr_Escalation_Rates_Mod.L_2) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_3 = q_CB_Curr_Escalation_Rates_Mod.L_3) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_4 = q_CB_Curr_Escalation_Rates_Mod.L_4) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_5 = q_CB_Curr_Escalation_Rates_Mod.L_5) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.L_6 = q_CB_Curr_Escalation_Rates_Mod.L_6) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L1 = q_CB_Curr_Escalation_Rates_Mod.rs_L1) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L2 = q_CB_Curr_Escalation_Rates_Mod.rs_L2) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L3 = q_CB_Curr_Escalation_Rates_Mod.rs_L3) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_L4 = q_CB_Curr_Escalation_Rates_Mod.rs_L4) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.rs_Currency = q_CB_Curr_Escalation_Rates_Mod.rs_Currency) AND (q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon = q_CB_Curr_Escalation_Rates_Mod.Month)
GROUP BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, q_CB_Curr_Escalation_Rates_Mod.rs_Currency
ORDER BY q_CB_Analysis_ActiveM_With_Prices_Mod.rep_Month, q_CB_Analysis_ActiveM_With_Prices_Mod.PC, q_CB_Analysis_ActiveM_With_Prices_Mod.L_1, q_CB_Analysis_ActiveM_With_Prices_Mod.L_2, q_CB_Analysis_ActiveM_With_Prices_Mod.L_3, q_CB_Analysis_ActiveM_With_Prices_Mod.L_4, q_CB_Analysis_ActiveM_With_Prices_Mod.L_5, q_CB_Analysis_ActiveM_With_Prices_Mod.L_6, q_CB_Analysis_ActiveM_With_Prices_Mod.Exp_CB_Mon, Sum([an_rs_quantity]*[up_cost]*[k_USD]*[k_EUR]);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff
SELECT q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_CB_Res_UP_Market_Coeff.Currency
FROM q_CB_Res_UP_Market_Coeff
GROUP BY q_CB_Res_UP_Market_Coeff.PC, q_CB_Res_UP_Market_Coeff.L_1, q_CB_Res_UP_Market_Coeff.L_2, q_CB_Res_UP_Market_Coeff.L_3, q_CB_Res_UP_Market_Coeff.L_4, q_CB_Res_UP_Market_Coeff.L_5, q_CB_Res_UP_Market_Coeff.L_6, q_CB_Res_UP_Market_Coeff.rep_Month, q_CB_Res_UP_Market_Coeff.g_Month, q_CB_Res_UP_Market_Coeff.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff_Diff
SELECT q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month, q_CB_Work_UP_with_Market_Coeff_Mod.PC, q_CB_Work_UP_with_Market_Coeff_Mod.L_1, q_CB_Work_UP_with_Market_Coeff_Mod.L_2, q_CB_Work_UP_with_Market_Coeff_Mod.L_3, q_CB_Work_UP_with_Market_Coeff_Mod.L_4, q_CB_Work_UP_with_Market_Coeff_Mod.L_5, q_CB_Work_UP_with_Market_Coeff_Mod.L_6, q_CB_Work_UP_with_Market_Coeff_Mod.Currency, q_CB_Work_UP_with_Market_Coeff_Mod.g_Month, q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff AS UP_Orj, q_CB_Work_UP_with_Market_Coeff.UP_with_Coeff AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_with_Market_Coeff_Mod LEFT JOIN q_CB_Work_UP_with_Market_Coeff ON (q_CB_Work_UP_with_Market_Coeff_Mod.g_Month = q_CB_Work_UP_with_Market_Coeff.g_Month) AND (q_CB_Work_UP_with_Market_Coeff_Mod.Currency = q_CB_Work_UP_with_Market_Coeff.Currency) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_6 = q_CB_Work_UP_with_Market_Coeff.L_6) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_5 = q_CB_Work_UP_with_Market_Coeff.L_5) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_4 = q_CB_Work_UP_with_Market_Coeff.L_4) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_3 = q_CB_Work_UP_with_Market_Coeff.L_3) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_2 = q_CB_Work_UP_with_Market_Coeff.L_2) AND (q_CB_Work_UP_with_Market_Coeff_Mod.L_1 = q_CB_Work_UP_with_Market_Coeff.L_1) AND (q_CB_Work_UP_with_Market_Coeff_Mod.PC = q_CB_Work_UP_with_Market_Coeff.PC) AND (q_CB_Work_UP_with_Market_Coeff_Mod.rep_Month = q_CB_Work_UP_with_Market_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_with_Market_Coeff_Mod
SELECT q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.g_Month, Sum([an_rs_quantity]*[up_cost]*[up_cost_coeff]) AS UP_with_Coeff, q_CB_Res_UP_Market_Coeff_Mod.Currency
FROM q_CB_Res_UP_Market_Coeff_Mod
GROUP BY q_CB_Res_UP_Market_Coeff_Mod.PC, q_CB_Res_UP_Market_Coeff_Mod.L_1, q_CB_Res_UP_Market_Coeff_Mod.L_2, q_CB_Res_UP_Market_Coeff_Mod.L_3, q_CB_Res_UP_Market_Coeff_Mod.L_4, q_CB_Res_UP_Market_Coeff_Mod.L_5, q_CB_Res_UP_Market_Coeff_Mod.L_6, q_CB_Res_UP_Market_Coeff_Mod.rep_Month, q_CB_Res_UP_Market_Coeff_Mod.g_Month, q_CB_Res_UP_Market_Coeff_Mod.Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes.rs_Currency;

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff_Diff
SELECT q_CB_Work_UP_without_Coeff_Mod.rep_Month, q_CB_Work_UP_without_Coeff_Mod.PC, q_CB_Work_UP_without_Coeff_Mod.L_1, q_CB_Work_UP_without_Coeff_Mod.L_2, q_CB_Work_UP_without_Coeff_Mod.L_3, q_CB_Work_UP_without_Coeff_Mod.L_4, q_CB_Work_UP_without_Coeff_Mod.L_5, q_CB_Work_UP_without_Coeff_Mod.L_6, q_CB_Work_UP_without_Coeff_Mod.rs_Currency, q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Orj, q_CB_Work_UP_without_Coeff.Unit_Price_Planned AS UP_Mod, ([UP_Orj])-([UP_Mod]) AS Diff
FROM q_CB_Work_UP_without_Coeff_Mod LEFT JOIN q_CB_Work_UP_without_Coeff ON (q_CB_Work_UP_without_Coeff_Mod.Exp_CB_Mon = q_CB_Work_UP_without_Coeff.Exp_CB_Mon) AND (q_CB_Work_UP_without_Coeff_Mod.rs_Currency = q_CB_Work_UP_without_Coeff.rs_Currency) AND (q_CB_Work_UP_without_Coeff_Mod.L_6 = q_CB_Work_UP_without_Coeff.L_6) AND (q_CB_Work_UP_without_Coeff_Mod.L_5 = q_CB_Work_UP_without_Coeff.L_5) AND (q_CB_Work_UP_without_Coeff_Mod.L_4 = q_CB_Work_UP_without_Coeff.L_4) AND (q_CB_Work_UP_without_Coeff_Mod.L_3 = q_CB_Work_UP_without_Coeff.L_3) AND (q_CB_Work_UP_without_Coeff_Mod.L_2 = q_CB_Work_UP_without_Coeff.L_2) AND (q_CB_Work_UP_without_Coeff_Mod.L_1 = q_CB_Work_UP_without_Coeff.L_1) AND (q_CB_Work_UP_without_Coeff_Mod.PC = q_CB_Work_UP_without_Coeff.PC) AND (q_CB_Work_UP_without_Coeff_Mod.rep_Month = q_CB_Work_UP_without_Coeff.rep_Month);

----------------------------------------------------------------------------------------------------
q_CB_Work_UP_without_Coeff_Mod
SELECT Sum(([An_rs_quantity]*[up_Cost])) AS Unit_Price_Planned, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency
FROM q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod
GROUP BY q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rep_Month, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.PC, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_1, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_2, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_3, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_4, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_5, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.L_6, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.Exp_CB_Mon, q_CB_UP_Pre_Coeff_ActiveM_Indexes_Mod.rs_Currency;

----------------------------------------------------------------------------------------------------
q_Date_Selected
SELECT TOP 1 *
FROM (SELECT TOP 18 * FROM [t_Rnd_Budget_Active_Dates] ORDER BY t_Rnd_Budget_Active_Dates.Date_Active DESC )  AS t
ORDER BY t_Rnd_Budget_Active_Dates.Date_Active;

----------------------------------------------------------------------------------------------------
q_Exp_Diff_Curr
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr, Sum([q_CB_Exp].[Total_Expense]-[q_BB_Exp].[Total_Expense]) AS Diff
FROM q_CB_Exp LEFT JOIN q_BB_Exp ON (q_CB_Exp.up_Curr = q_BB_Exp.up_Curr) AND (q_CB_Exp.Month = q_BB_Exp.Exp_Base_Mon) AND (q_CB_Exp.L_6 = q_BB_Exp.L_6) AND (q_CB_Exp.L_5 = q_BB_Exp.L_5) AND (q_CB_Exp.L_4 = q_BB_Exp.L_4) AND (q_CB_Exp.L_3 = q_BB_Exp.L_3) AND (q_CB_Exp.L_2 = q_BB_Exp.L_2) AND (q_CB_Exp.L_1 = q_BB_Exp.L_1) AND (q_CB_Exp.P01_Code = q_BB_Exp.PC) AND (q_CB_Exp.rep_Month = q_BB_Exp.rep_Month)
WHERE (((q_CB_Exp.Month)<=DLookUp("[Last_Month]","[q_Rep_Month_Max]")))
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr;

----------------------------------------------------------------------------------------------------
q_Exp_Diff_Full
SELECT q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr, Sum([q_CB_Exp].[Total_Expense]-[q_BB_Exp].[Total_Expense]) AS Diff
FROM q_CB_Exp LEFT JOIN q_BB_Exp ON (q_CB_Exp.up_Curr = q_BB_Exp.up_Curr) AND (q_CB_Exp.Month = q_BB_Exp.Exp_Base_Mon) AND (q_CB_Exp.L_6 = q_BB_Exp.L_6) AND (q_CB_Exp.L_5 = q_BB_Exp.L_5) AND (q_CB_Exp.L_4 = q_BB_Exp.L_4) AND (q_CB_Exp.L_3 = q_BB_Exp.L_3) AND (q_CB_Exp.L_2 = q_BB_Exp.L_2) AND (q_CB_Exp.L_1 = q_BB_Exp.L_1) AND (q_CB_Exp.P01_Code = q_BB_Exp.PC) AND (q_CB_Exp.rep_Month = q_BB_Exp.rep_Month)
GROUP BY q_CB_Exp.rep_Month, q_CB_Exp.P01_Code, q_CB_Exp.L_1, q_CB_Exp.L_2, q_CB_Exp.L_3, q_CB_Exp.L_4, q_CB_Exp.L_5, q_CB_Exp.L_6, q_CB_Exp.up_Curr;

----------------------------------------------------------------------------------------------------
q_First_Budget_GT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeGT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseGT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitGT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency
HAVING t_CB_Profit_USD_ST.rep_Month="2206";

----------------------------------------------------------------------------------------------------
q_First_Budget_RT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeRT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseRT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitRT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.rep_Month="2206"AND t_CB_Profit_USD_ST.Month<=[Forms]![Comparison_Screen]![cmb_AllProject_Curr_Month];

----------------------------------------------------------------------------------------------------
q_First_Budget_RT_Grouped
SELECT q_First_Budget_RT.rep_Month, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr, Sum(q_First_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_First_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_First_Budget_RT.ProfitRT) AS ProfitRT
FROM q_First_Budget_RT
GROUP BY q_First_Budget_RT.rep_Month, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_First_Budget_RT_Grouped_Projects
SELECT q_First_Budget_RT.rep_Month, q_First_Budget_RT.PC, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr, Sum(q_First_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_First_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_First_Budget_RT.ProfitRT) AS ProfitRT
FROM q_First_Budget_RT
GROUP BY q_First_Budget_RT.rep_Month, q_First_Budget_RT.PC, q_First_Budget_RT.L_1, q_First_Budget_RT.L_2, q_First_Budget_RT.L_3, q_First_Budget_RT.L_4, q_First_Budget_RT.L_5, q_First_Budget_RT.L_6, q_First_Budget_RT.Desc_TR_L3, q_First_Budget_RT.Desc_TR_L2, q_First_Budget_RT.Desc_TR_L6, q_First_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_L6_Code_Selection
SELECT TOP 1 *
FROM (SELECT TOP 2597 * FROM [C6_Code] ORDER BY [Code_L6] )  AS t
ORDER BY [Code_L6] DESC;

----------------------------------------------------------------------------------------------------
q_L6_Selected
SELECT TOP 1 *
FROM (SELECT TOP 5 * FROM [t_Rnd_Budget_L6] ORDER BY t_Rnd_Budget_L6.L_1 DESC,t_Rnd_Budget_L6.L_2 DESC,t_Rnd_Budget_L6.L_3 DESC,t_Rnd_Budget_L6.L_4 DESC,t_Rnd_Budget_L6.L_5 DESC,t_Rnd_Budget_L6.L_6 DESC)  AS t
ORDER BY t_Rnd_Budget_L6.L_1, t_Rnd_Budget_L6.L_2, t_Rnd_Budget_L6.L_3, t_Rnd_Budget_L6.L_4, t_Rnd_Budget_L6.L_5, t_Rnd_Budget_L6.L_6;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates
SELECT
		*

	FROM 
		q_Monthly_Rates_EUR_TRY

	

UNION SELECT
		*

	FROM 
		q_Monthly_Rates_USD_TRY;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_AP
INSERT INTO t_Monthly_Curr_Rates_Mod ( [Month], Constant, Rate, Budget_Curr, rep_Month )
SELECT q_Monthly_Curr_Rates.Month, q_Monthly_Curr_Rates.Constant, q_Monthly_Curr_Rates.Rate, q_Monthly_Curr_Rates.Budget_Curr, q_Monthly_Curr_Rates.rep_Month
FROM q_Monthly_Curr_Rates
WHERE (((q_Monthly_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Diff
SELECT q_Monthly_Curr_Rates_Mod_CrossTab.Month, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_EUR_TRY-Mon_Curr_Rates.r_EUR_TRY) AS EUR_TRY, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_TRY_EUR-Mon_Curr_Rates.r_TRY_EUR) AS TRY_EUR, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_USD_TRY-Mon_Curr_Rates.r_USD_TRY) AS USD_TRY, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_TRY_USD-Mon_Curr_Rates.r_TRY_USD) AS TRY_USD, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_EUR_USD-Mon_Curr_Rates.r_EUR_USD) AS EUR_USD, ([q_Monthly_Curr_Rates_Mod_CrossTab].r_USD_EUR-Mon_Curr_Rates.r_USD_EUR) AS USD_EUR, Mon_Curr_Rates.rep_Month
FROM q_Monthly_Curr_Rates_Mod_CrossTab INNER JOIN Mon_Curr_Rates ON q_Monthly_Curr_Rates_Mod_CrossTab.Month = Mon_Curr_Rates.Month
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_CrossTab
TRANSFORM Sum(q_Monthly_Curr_Rates_Mod_Union.Rate) AS SumOfRate
SELECT q_Monthly_Curr_Rates_Mod_Union.Month
FROM q_Monthly_Curr_Rates_Mod_Union
GROUP BY q_Monthly_Curr_Rates_Mod_Union.Month
PIVOT q_Monthly_Curr_Rates_Mod_Union.Constant;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_Delete
DELETE t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.rep_Month, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_EUR_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_TRY
SELECT t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod
WHERE (((t_Monthly_Curr_Rates_Mod.Constant)="r_EUR_TRY") AND ((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_TRY_Graph
SELECT t_Monthly_Curr_Rates_ST.Constant, t_Monthly_Curr_Rates_ST.Rate, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_ST.Budget_Curr, t_Monthly_Curr_Rates_ST.Month
FROM t_Monthly_Curr_Rates_ST INNER JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant)
WHERE (((t_Monthly_Curr_Rates_ST.Constant)="r_EUR_TRY") AND ((t_Monthly_Curr_Rates_ST.Month)>=#1/1/2022#));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_EUR_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_EUR_TRY.Month, Round([q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate]/[q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate],6) AS Rate, "r_EUR_USD" AS Constant, q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_EUR_TRY INNER JOIN q_Monthly_Curr_Rates_Mod_USD_TRY ON q_Monthly_Curr_Rates_Mod_EUR_TRY.Month = q_Monthly_Curr_Rates_Mod_USD_TRY.Month
WHERE (((q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_EUR_TRY.Month, Round(1/[q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate],6) AS Rate, "r_TRY_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_EUR_TRY
WHERE (((q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_TRY
SELECT "TRY" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_TRY_TRY" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_TRY_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_USD_TRY.Month, Round(1/[q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate],6) AS Rate, "r_TRY_USD" AS Constant, q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_USD_TRY
WHERE (((q_Monthly_Curr_Rates_Mod_USD_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_Union
SELECT 
		*
	FROM 
q_Monthly_Curr_Rates_Mod_EUR_EUR
		
UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_EUR_TRY

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_EUR_USD


UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_EUR

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_TRY

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_TRY_USD

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_EUR

UNION 
SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_TRY

UNION SELECT 
		*
	FROM 
		q_Monthly_Curr_Rates_Mod_USD_USD;

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_EUR
SELECT "EUR" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_USD_TRY.Month, Round([q_Monthly_Curr_Rates_Mod_USD_TRY].[Rate]/[q_Monthly_Curr_Rates_Mod_EUR_TRY].[Rate],6) AS Rate, "r_USD_EUR" AS Constant, q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month
FROM q_Monthly_Curr_Rates_Mod_USD_TRY LEFT JOIN q_Monthly_Curr_Rates_Mod_EUR_TRY ON q_Monthly_Curr_Rates_Mod_USD_TRY.Month = q_Monthly_Curr_Rates_Mod_EUR_TRY.Month
WHERE (((q_Monthly_Curr_Rates_Mod_EUR_TRY.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_TRY
SELECT t_Monthly_Curr_Rates_Mod.Budget_Curr, t_Monthly_Curr_Rates_Mod.Month, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_Mod.Constant, t_Monthly_Curr_Rates_Mod.rep_Month
FROM t_Monthly_Curr_Rates_Mod
WHERE (((t_Monthly_Curr_Rates_Mod.Constant)="r_USD_TRY") AND ((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_TRY_Graph
SELECT t_Monthly_Curr_Rates_ST.Constant, t_Monthly_Curr_Rates_ST.Rate, t_Monthly_Curr_Rates_Mod.Rate, t_Monthly_Curr_Rates_ST.Budget_Curr, t_Monthly_Curr_Rates_ST.Month
FROM t_Monthly_Curr_Rates_ST INNER JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant)
WHERE (((t_Monthly_Curr_Rates_ST.Constant)="r_USD_TRY") AND ((t_Monthly_Curr_Rates_ST.Month)>=#1/1/2022#));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_Mod_USD_USD
SELECT "USD" AS Budget_Curr, q_Monthly_Curr_Rates_Mod_TRY_EUR.Month, 1 AS Rate, "r_USD_USD" AS Constant, q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month
FROM q_Monthly_Curr_Rates_Mod_TRY_EUR LEFT JOIN q_Monthly_Curr_Rates_Mod_TRY_USD ON q_Monthly_Curr_Rates_Mod_TRY_EUR.Month = q_Monthly_Curr_Rates_Mod_TRY_USD.Month
WHERE (((q_Monthly_Curr_Rates_Mod_TRY_USD.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Curr_Rates_MT
SELECT q_Monthly_Curr_Rates.Constant, q_Monthly_Curr_Rates.Budget_Curr, q_Monthly_Curr_Rates.Month, q_Monthly_Curr_Rates.Rate, q_Monthly_Curr_Rates.rep_Month INTO t_Monthly_Curr_Rates_ST
FROM q_Monthly_Curr_Rates
WHERE (((q_Monthly_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_EUR_TRY
SELECT Mon_Curr_Rates.Month, "r_EUR_TRY" AS Constant, Mon_Curr_Rates.r_EUR_TRY AS Rate, "TRY" AS Budget_Curr, Mon_Curr_Rates.rep_Month
FROM Mon_Curr_Rates
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_Upd_Mod
UPDATE t_Monthly_Curr_Rates_ST LEFT JOIN t_Monthly_Curr_Rates_Mod ON (t_Monthly_Curr_Rates_ST.Budget_Curr = t_Monthly_Curr_Rates_Mod.Budget_Curr) AND (t_Monthly_Curr_Rates_ST.Constant = t_Monthly_Curr_Rates_Mod.Constant) AND (t_Monthly_Curr_Rates_ST.Month = t_Monthly_Curr_Rates_Mod.Month) AND (t_Monthly_Curr_Rates_ST.rep_Month = t_Monthly_Curr_Rates_Mod.rep_Month) SET t_Monthly_Curr_Rates_Mod.Constant = [t_Monthly_Curr_Rates_ST].[Constant], t_Monthly_Curr_Rates_Mod.Budget_Curr = [t_Monthly_Curr_Rates_ST].[Budget_Curr], t_Monthly_Curr_Rates_Mod.[Month] = [t_Monthly_Curr_Rates_ST].[Month], t_Monthly_Curr_Rates_Mod.Rate = [t_Monthly_Curr_Rates_ST].[Rate], t_Monthly_Curr_Rates_Mod.rep_Month = [t_Monthly_Curr_Rates_ST].[rep_Month]
WHERE (((t_Monthly_Curr_Rates_Mod.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_Monthly_Rates_USD_TRY
SELECT Mon_Curr_Rates.Month, "r_USD_TRY" AS Constant, Mon_Curr_Rates.r_USD_TRY AS Rate, "TRY" AS Budget_Curr, Mon_Curr_Rates.rep_Month
FROM Mon_Curr_Rates
WHERE (((Mon_Curr_Rates.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_PL_Analysis_Comp
SELECT t_BB_Analysis_Add.P01_Code, t_BB_Analysis_Add.rs_L1, t_BB_Analysis_Add.rs_L2, t_BB_Analysis_Add.rs_L3, t_BB_Analysis_Add.rs_L4, t_BB_Analysis_Add.Analysis_Date, t_BB_Analysis.P01_Code
FROM t_BB_Analysis_Add LEFT JOIN t_BB_Analysis ON (t_BB_Analysis_Add.Analysis_Date = t_BB_Analysis.Analysis_Date) AND (t_BB_Analysis_Add.rs_L4 = t_BB_Analysis.rs_L4) AND (t_BB_Analysis_Add.rs_L3 = t_BB_Analysis.rs_L3) AND (t_BB_Analysis_Add.rs_L2 = t_BB_Analysis.rs_L2) AND (t_BB_Analysis_Add.rs_L1 = t_BB_Analysis.rs_L1) AND (t_BB_Analysis_Add.P01_Code = t_BB_Analysis.P01_Code)
WHERE (((t_BB_Analysis.P01_Code) Is Null));

----------------------------------------------------------------------------------------------------
q_PL_Coeff_Export
SELECT t_PL_Analysis.P01_Code, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
FROM R4_Code LEFT JOIN t_PL_Analysis ON (R4_Code.R_1_Code = t_PL_Analysis.rs_L1) AND (R4_Code.R_2_Code = t_PL_Analysis.rs_L2) AND (R4_Code.R_3_Code = t_PL_Analysis.rs_L3) AND (R4_Code.R_4_Code = t_PL_Analysis.rs_L4)
GROUP BY t_PL_Analysis.P01_Code, t_PL_Analysis.rs_L1, t_PL_Analysis.rs_L2, t_PL_Analysis.rs_L3, t_PL_Analysis.rs_L4, R4_Code.R_4_Desc_TR, R4_Code.w_UFE, R4_Code.w_TUFE, R4_Code.w_INF_USD, R4_Code.w_INF_EUR, R4_Code.w_Metal, R4_Code.w_Petrol, R4_Code.w_Cement, R4_Code.w_Electricity
HAVING (((t_PL_Analysis.P01_Code) Is Not Null));

----------------------------------------------------------------------------------------------------
q_PL_Exp
SELECT q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.P01_Code, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.Month, Sum(([Exp_CB_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_CB_Unit_Price.up_Curr, t_CB_qty.Key_R_PC_L6
FROM q_CB_Unit_Price LEFT JOIN t_CB_qty ON (q_CB_Unit_Price.Key_R_PC_L6 = t_CB_qty.Key_R_PC_L6) AND (q_CB_Unit_Price.Month = t_CB_qty.Exp_CB_Mon)
GROUP BY q_CB_Unit_Price.rep_Month, q_CB_Unit_Price.P01_Code, q_CB_Unit_Price.L_1, q_CB_Unit_Price.L_2, q_CB_Unit_Price.L_3, q_CB_Unit_Price.L_4, q_CB_Unit_Price.L_5, q_CB_Unit_Price.L_6, q_CB_Unit_Price.Month, q_CB_Unit_Price.up_Curr, t_CB_qty.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_PL_Exp_Mod
SELECT q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.Month, Sum(([Exp_CB_Qty]*[Unit_Price_Planned_Coeff])) AS Total_Expense, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Key_R_PC_L6
FROM q_CB_Unit_Price_Mod LEFT JOIN t_CB_Qty ON (q_CB_Unit_Price_Mod.g_Month = t_CB_Qty.Exp_CB_Mon) AND (q_CB_Unit_Price_Mod.Key_R_PC_L6 = t_CB_Qty.Key_R_PC_L6)
GROUP BY q_CB_Unit_Price_Mod.rep_Month, q_CB_Unit_Price_Mod.P01_Code, q_CB_Unit_Price_Mod.L_1, q_CB_Unit_Price_Mod.L_2, q_CB_Unit_Price_Mod.L_3, q_CB_Unit_Price_Mod.L_4, q_CB_Unit_Price_Mod.L_5, q_CB_Unit_Price_Mod.L_6, q_CB_Unit_Price_Mod.Month, q_CB_Unit_Price_Mod.up_Curr, q_CB_Unit_Price_Mod.Key_R_PC_L6;

----------------------------------------------------------------------------------------------------
q_PL_Indexes
SELECT t_CB_Indexes.rep_Month, t_CB_Indexes.g_Month, t_CB_Indexes.bb_Metal, t_CB_Indexes.bb_Electricity, t_CB_Indexes.bb_Cement, t_CB_Indexes.bb_Petrol, t_CB_Indexes.bb_INF_USD, t_CB_Indexes.bb_INF_EUR, t_CB_Indexes.bb_UFE, t_CB_Indexes.bb_TUFE
FROM t_CB_Indexes
WHERE (((t_CB_Indexes.rep_Month)=DLookUp("[rep_Month]","[q_Rep_Month_Max_Val]")));

----------------------------------------------------------------------------------------------------
q_R4_Code_Pool
SELECT R4_Code.R_1_Code, R4_Code.R_2_Code, R4_Code.R_3_Code, R4_Code.R_4_Code, R4_Code.Currency
FROM R4_Code
ORDER BY R4_Code.R_1_Code DESC , R4_Code.R_2_Code DESC , R4_Code.R_3_Code DESC , R4_Code.R_4_Code DESC;

----------------------------------------------------------------------------------------------------
q_R4_Code_Selection
SELECT TOP 1 *
FROM (SELECT TOP 297 * FROM [q_R4_Code_Pool] ORDER BY R4_Code.R_1_Code ,R4_Code.R_2_Code ,R4_Code.R_3_Code ,R4_Code.R_4_Code )  AS t
ORDER BY R4_Code.R_1_Code DESC , R4_Code.R_2_Code DESC , R4_Code.R_3_Code DESC , R4_Code.R_4_Code DESC;

----------------------------------------------------------------------------------------------------
q_R4_Filtered
SELECT t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4
FROM t_Rnd_Budget_R4
GROUP BY t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4
ORDER BY t_Rnd_Budget_R4.R_1, t_Rnd_Budget_R4.R_2, t_Rnd_Budget_R4.R_3, t_Rnd_Budget_R4.R_4;

----------------------------------------------------------------------------------------------------
q_R4_Selected_For_Up
SELECT TOP 1 *
FROM (SELECT TOP 5 * FROM [q_R4_Filtered] ORDER BY q_R4_Filtered.R_1 DESC,q_R4_Filtered.R_2 DESC,q_R4_Filtered.R_3 DESC,q_R4_Filtered.R_4 DESC)  AS t
ORDER BY q_R4_Filtered.R_1, q_R4_Filtered.R_2, q_R4_Filtered.R_3, q_R4_Filtered.R_4;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Max
SELECT Max(t_Rep_Month.rep_Month_Date) AS Last_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Max_Val
SELECT Max(t_Rep_Month.rep_Month) AS rep_Month
FROM t_Rep_Month;

----------------------------------------------------------------------------------------------------
q_Rep_Month_Order
SELECT t_Rep_Month.rep_Month, t_Rep_Month.rep_Month_Date, DCount("[rep_Month]","[t_Rep_Month]","int([rep_Month])<=" & Int([rep_Month])) AS RowNum
FROM t_Rep_Month
ORDER BY t_Rep_Month.rep_Month DESC , t_Rep_Month.rep_Month_Date DESC;

----------------------------------------------------------------------------------------------------
q_Second_Budget_GT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeGT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseGT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitGT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency
HAVING t_CB_Profit_USD_ST.rep_Month="2207";

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT
SELECT t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency AS up_Curr, Sum(t_CB_Profit_USD_ST.Income) AS IncomeRT, Sum(t_CB_Profit_USD_ST.Expense) AS ExpenseRT, Sum(t_CB_Profit_USD_ST.Profit) AS ProfitRT
FROM t_CB_Profit_USD_ST
GROUP BY t_CB_Profit_USD_ST.rep_Month, t_CB_Profit_USD_ST.PC, t_CB_Profit_USD_ST.L_1, t_CB_Profit_USD_ST.L_2, t_CB_Profit_USD_ST.L_3, t_CB_Profit_USD_ST.L_4, t_CB_Profit_USD_ST.L_5, t_CB_Profit_USD_ST.L_6, t_CB_Profit_USD_ST.Desc_TR_L3, t_CB_Profit_USD_ST.Desc_TR_L2, t_CB_Profit_USD_ST.Desc_TR_L6, t_CB_Profit_USD_ST.Currency, t_CB_Profit_USD_ST.Month
HAVING t_CB_Profit_USD_ST.rep_Month="2207"AND t_CB_Profit_USD_ST.Month<=[Forms]![Comparison_Screen]![cmb_AllProject_Curr_Month];

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT_Grouped
SELECT q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr, Sum(q_Second_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_Second_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_Second_Budget_RT.ProfitRT) AS ProfitRT
FROM q_Second_Budget_RT
GROUP BY q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
q_Second_Budget_RT_Grouped_Projects
SELECT q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.PC, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr, Sum(q_Second_Budget_RT.IncomeRT) AS IncomeRT, Sum(q_Second_Budget_RT.ExpenseRT) AS ExpenseRT, Sum(q_Second_Budget_RT.ProfitRT) AS ProfitRT
FROM q_Second_Budget_RT
GROUP BY q_Second_Budget_RT.rep_Month, q_Second_Budget_RT.PC, q_Second_Budget_RT.L_1, q_Second_Budget_RT.L_2, q_Second_Budget_RT.L_3, q_Second_Budget_RT.L_4, q_Second_Budget_RT.L_5, q_Second_Budget_RT.L_6, q_Second_Budget_RT.Desc_TR_L3, q_Second_Budget_RT.Desc_TR_L2, q_Second_Budget_RT.Desc_TR_L6, q_Second_Budget_RT.up_Curr;

----------------------------------------------------------------------------------------------------
