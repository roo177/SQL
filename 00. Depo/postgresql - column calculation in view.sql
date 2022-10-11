select cost1,
       quantity_1,
       cost_2,
       quantity_2
       total_1 + total_2 as total_3
from (
    select cost_1, 
           quantity_1, 
           cost_2, 
           quantity_2, 
           (cost_1 * quantity_1) as total_1,
           (cost_2 * quantity_2) as total_2
    from data
) t



SELECT cost_1, quantity_1, cost_2, quantity_2, total_1, total_2,
       total_1 + total_2 AS total_3
FROM data
,LATERAL(SELECT cost_1 * quantity_1, cost_2 * quantity_2) AS s1(total_1,total_2);



CREATE OR REPLACE VIEW 
q_bb_inc_calculation AS 
SELECT t_bb_inc_qty.rep_month, t_bb_inc_qty.pc, t_bb_inc_qty.l_1, t_bb_inc_qty.l_2, t_bb_inc_qty.l_3, t_bb_inc_qty.l_4, t_bb_inc_qty.l_5, t_bb_inc_qty.l_6, t_bb_inc_qty.inc_base_mon, 
t_bb_inc_wbs.up, 
t_bb_inc_wbs.currency, 
t_bb_inc_qty.inc_base_qty, 
up * inc_rate_1 * inc_rate_2 AS up_total,
up * inc_rate_1 * inc_rate_2 * inc_base_qty AS inc_total, 
t_bb_inc_qty.key_r_pc_l6
FROM ((t_bb_inc_qty LEFT JOIN t_bb_inc_esc_rates_l6 ON (t_bb_inc_qty.rep_month = t_bb_inc_esc_rates_l6.rep_month) AND (t_bb_inc_qty.pc = t_bb_inc_esc_rates_l6.p01_code) AND (t_bb_inc_qty.l_1 = t_bb_inc_esc_rates_l6.c_l1) AND (t_bb_inc_qty.l_2 = t_bb_inc_esc_rates_l6.c_l2) AND (t_bb_inc_qty.l_3 = t_bb_inc_esc_rates_l6.c_l3) AND (t_bb_inc_qty.l_4 = t_bb_inc_esc_rates_l6.c_l4) AND (t_bb_inc_qty.l_5 = t_bb_inc_esc_rates_l6.c_l5) AND (t_bb_inc_qty.l_6 = t_bb_inc_esc_rates_l6.c_l6) AND (t_bb_inc_qty.inc_base_mon = t_bb_inc_esc_rates_l6.month)) LEFT JOIN t_bb_inc_esc_rates_pcode ON (t_bb_inc_qty.rep_month = t_bb_inc_esc_rates_pcode.rep_month) AND (t_bb_inc_qty.pc = t_bb_inc_esc_rates_pcode.p01_code) AND (t_bb_inc_qty.inc_base_mon = t_bb_inc_esc_rates_pcode.month)) LEFT JOIN t_bb_inc_wbs ON t_bb_inc_qty.key_r_pc_l6 = t_bb_inc_wbs.key_r_pc_l6,
LATERAL (SELECT 
CASE WHEN (t_bb_inc_esc_rates_l6.inc_rate is null) THEN 1 ELSE (1+t_bb_inc_esc_rates_l6.inc_rate) END, 
CASE WHEN (t_bb_inc_esc_rates_pcode.inc_rate_pcode is null) THEN 1 ELSE (1+t_bb_inc_esc_rates_pcode.inc_rate_pcode) END)
AS s1(inc_rate_1,inc_rate_2);
