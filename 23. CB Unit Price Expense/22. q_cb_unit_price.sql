CREATE OR REPLACE VIEW -- ok
q_cb_unit_price AS
SELECT q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code AS p01_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month AS month, q_cb_up_coeff.g_month, q_cb_up_coeff.rs_currency AS up_curr, sum(up_cost*an_rs_quantity*up_cost_coeff_all) AS unit_price_planned_coeff, q_cb_up_coeff.key_r_pc_l6
FROM q_cb_up_coeff
GROUP BY q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month, q_cb_up_coeff.rs_currency, q_cb_up_coeff.key_r_pc_l6, q_cb_up_coeff.g_month
ORDER BY q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month, q_cb_up_coeff.g_month;
