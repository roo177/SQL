CREATE OR REPLACE VIEW -- ok
q_bb_exp AS
SELECT t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.g_month AS exp_base_mon, sum((exp_base_qty*unit_price_planned_coeff)) AS total_expense, q_bb_unit_price.up_curr, q_bb_unit_price.key_r_pc_l6
FROM t_bb_qty right join q_bb_unit_price ON (t_bb_qty.pc = q_bb_unit_price.p01_code) AND (t_bb_qty.l_1 = q_bb_unit_price.l_1) AND (t_bb_qty.l_2 = q_bb_unit_price.l_2) AND (t_bb_qty.l_3 = q_bb_unit_price.l_3) AND (t_bb_qty.l_4 = q_bb_unit_price.l_4) AND (t_bb_qty.l_5 = q_bb_unit_price.l_5) AND (t_bb_qty.l_6 = q_bb_unit_price.l_6) AND (t_bb_qty.exp_base_mon = q_bb_unit_price.g_month) AND (t_bb_qty.rep_month = q_bb_unit_price.rep_month)
GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.g_month, q_bb_unit_price.up_curr, q_bb_unit_price.key_r_pc_l6;
