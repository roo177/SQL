CREATE OR REPLACE VIEW -- ok
q_cb_profit_eur AS
SELECT 
t_cb_profit_st.rep_month, 
t_cb_profit_st.pc, 
t_cb_profit_st.l_1, 
t_cb_profit_st.l_2, 
t_cb_profit_st.l_3, 
t_cb_profit_st.l_4, 
t_cb_profit_st.l_5, 
t_cb_profit_st.l_6, 
t_cb_profit_st.month, 
'EUR' AS currency, 
s1.income as income, 
s1.expense as expense,  
s1.income-s1.expense AS profit, 
t_cb_profit_st.key_r_pc_l6
FROM t_cb_profit_st LEFT JOIN mon_curr_rates ON (t_cb_profit_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_profit_st.month = mon_curr_rates.month), 
LATERAL ( SELECT CASE WHEN t_cb_profit_st.currency='USD' then t_cb_profit_st.income*r_usd_eur else case when t_cb_profit_st.currency='TRY'then 
t_cb_profit_st.income*r_try_eur else t_cb_profit_st.income END END, CASE WHEN t_cb_profit_st.currency='USD' then t_cb_profit_st.expense*r_usd_eur 
else case when t_cb_profit_st.currency='TRY' then t_cb_profit_st.expense*r_try_eur else t_cb_profit_st.expense end end ) AS s1(income, expense)
ORDER BY 
t_cb_profit_st.rep_month, 
t_cb_profit_st.pc, 
t_cb_profit_st.l_1, 
t_cb_profit_st.l_2, 
t_cb_profit_st.l_3, 
t_cb_profit_st.l_4, 
t_cb_profit_st.l_5, 
t_cb_profit_st.l_6;
