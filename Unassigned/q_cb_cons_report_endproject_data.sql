CREATE OR REPLACE VIEW -- ok
q_cb_cons_report_endproject_data AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, sum(t_cb_profit_usd_st.income) AS income, sum(t_cb_profit_usd_st.expense) AS expense, sum(t_cb_profit_usd_st.profit) AS profit, t_cb_profit_usd_st.currency
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency;
