CREATE OR REPLACE VIEW --ok
q_cb_project_months AS
SELECT t_cb_profit_st.rep_month, t_cb_profit_st.pc, t_001_projects.r03_s_name AS name
FROM t_cb_profit_st LEFT JOIN t_001_projects ON t_cb_profit_st.pc = t_001_projects.p_code
GROUP BY t_cb_profit_st.rep_month, t_cb_profit_st.pc, t_001_projects.r03_s_name
ORDER BY t_cb_profit_st.rep_month DESC;
