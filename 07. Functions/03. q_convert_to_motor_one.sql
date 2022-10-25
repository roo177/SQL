-- FUNCTION: public.q_convert_to_motor_one()

DROP FUNCTION IF EXISTS public.q_convert_to_motor_one();

CREATE OR REPLACE FUNCTION public.q_convert_to_motor_one(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

DROP VIEW IF EXISTS q_cb_up_pre_coeff_activem_indexes CASCADE;

CREATE OR REPLACE VIEW public.q_cb_up_pre_coeff_activem_indexes
 AS
 SELECT q_cb_analysis_activem_with_prices.rep_month,
    q_cb_analysis_activem_with_prices.pc,
    q_cb_analysis_activem_with_prices.l_1,
    q_cb_analysis_activem_with_prices.l_2,
    q_cb_analysis_activem_with_prices.l_3,
    q_cb_analysis_activem_with_prices.l_4,
    q_cb_analysis_activem_with_prices.l_5,
    q_cb_analysis_activem_with_prices.l_6,
    q_cb_analysis_activem_with_prices.exp_cb_mon,
    q_cb_analysis_activem_with_prices.rs_l1,
    q_cb_analysis_activem_with_prices.rs_l2,
    q_cb_analysis_activem_with_prices.rs_l3,
    q_cb_analysis_activem_with_prices.rs_l4,
    t_cb_indexes.bb_ufe,
    t_cb_indexes.bb_tufe,
    t_cb_indexes.bb_inf_usd,
    t_cb_indexes.bb_inf_eur,
    t_cb_indexes.bb_metal,
    t_cb_indexes.bb_petrol,
    t_cb_indexes.bb_cement,
    t_cb_indexes.bb_electricity,
    q_cb_analysis_activem_with_prices.curr,
    q_cb_analysis_activem_with_prices.an_rs_quantity,
    q_cb_analysis_activem_with_prices.up_cost,
    q_cb_analysis_activem_with_prices.key_r4_simple,
    q_cb_analysis_activem_with_prices.key_r4,
    q_cb_analysis_activem_with_prices.key_r_pc_l6,
    q_cb_analysis_activem_with_prices.key_full
   FROM q_cb_analysis_activem_with_prices
     LEFT JOIN t_cb_indexes ON q_cb_analysis_activem_with_prices.exp_cb_mon = t_cb_indexes.month AND q_cb_analysis_activem_with_prices.rep_month::text = t_cb_indexes.rep_month::text;

CREATE OR REPLACE VIEW public.q_cb_res_up_market_coeff
 AS
 SELECT q_cb_up_pre_coeff_activem_indexes.rep_month,
    q_cb_up_pre_coeff_activem_indexes.pc,
    q_cb_up_pre_coeff_activem_indexes.l_1,
    q_cb_up_pre_coeff_activem_indexes.l_2,
    q_cb_up_pre_coeff_activem_indexes.l_3,
    q_cb_up_pre_coeff_activem_indexes.l_4,
    q_cb_up_pre_coeff_activem_indexes.l_5,
    q_cb_up_pre_coeff_activem_indexes.l_6,
    q_cb_up_pre_coeff_activem_indexes.rs_l1,
    q_cb_up_pre_coeff_activem_indexes.rs_l2,
    q_cb_up_pre_coeff_activem_indexes.rs_l3,
    q_cb_up_pre_coeff_activem_indexes.rs_l4 ,
    (1::numeric + r4_code.w_ufe * q_cb_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
    q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS "month",
    q_cb_up_pre_coeff_activem_indexes.up_cost,
    q_cb_up_pre_coeff_activem_indexes.an_rs_quantity,
    r4_code.currency as curr,
    q_cb_up_pre_coeff_activem_indexes.key_r4_simple,
    q_cb_up_pre_coeff_activem_indexes.key_r4,
    q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_cb_up_pre_coeff_activem_indexes.key_full,
    (((q_cb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS key_full_comb
   FROM q_cb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.rs_l1, q_cb_up_pre_coeff_activem_indexes.rs_l2, q_cb_up_pre_coeff_activem_indexes.rs_l3, q_cb_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_cb_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_up_pre_coeff_activem_indexes.bb_electricity)), q_cb_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes.up_cost, q_cb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_cb_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_up_pre_coeff_activem_indexes.key_r4, q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_up_pre_coeff_activem_indexes.key_full, ((((q_cb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_up_pre_coeff_activem_indexes.exp_cb_mon)
  ORDER BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.rs_l1, q_cb_up_pre_coeff_activem_indexes.rs_l2, q_cb_up_pre_coeff_activem_indexes.rs_l3, q_cb_up_pre_coeff_activem_indexes.rs_l4, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon;

CREATE OR REPLACE VIEW public.q_cb_up_coeff
 AS
 SELECT q_cb_res_up_market_coeff.rep_month,
    q_cb_res_up_market_coeff.pc,
    q_cb_res_up_market_coeff.l_1,
    q_cb_res_up_market_coeff.l_2,
    q_cb_res_up_market_coeff.l_3,
    q_cb_res_up_market_coeff.l_4,
    q_cb_res_up_market_coeff.l_5,
    q_cb_res_up_market_coeff.l_6,
    q_cb_res_up_market_coeff.rs_l1,
    q_cb_res_up_market_coeff.rs_l2,
    q_cb_res_up_market_coeff.rs_l3,
    q_cb_res_up_market_coeff.rs_l4,
    q_cb_res_up_market_coeff.month,
    q_cb_res_up_market_coeff.up_cost_coeff,
    q_cb_curr_escalation_rates.k_usd,
    q_cb_curr_escalation_rates.k_eur,
    round(q_cb_res_up_market_coeff.up_cost_coeff * q_cb_curr_escalation_rates.k_usd * q_cb_curr_escalation_rates.k_eur, 6) AS up_cost_coeff_all,
    q_cb_res_up_market_coeff.up_cost,
    q_cb_res_up_market_coeff.curr,
    q_cb_res_up_market_coeff.key_full,
    q_cb_res_up_market_coeff.an_rs_quantity,
    q_cb_res_up_market_coeff.key_r_pc_l6
   FROM q_cb_res_up_market_coeff
     LEFT JOIN q_cb_curr_escalation_rates ON q_cb_res_up_market_coeff.key_full_comb = q_cb_curr_escalation_rates.key_full_comb
  GROUP BY q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.rs_l1, q_cb_res_up_market_coeff.rs_l2, q_cb_res_up_market_coeff.rs_l3, q_cb_res_up_market_coeff.rs_l4, q_cb_res_up_market_coeff.month, q_cb_res_up_market_coeff.up_cost_coeff, q_cb_curr_escalation_rates.k_usd, q_cb_curr_escalation_rates.k_eur, (round(q_cb_res_up_market_coeff.up_cost_coeff * q_cb_curr_escalation_rates.k_usd * q_cb_curr_escalation_rates.k_eur, 6)), q_cb_res_up_market_coeff.up_cost, q_cb_res_up_market_coeff.curr, q_cb_res_up_market_coeff.key_full, q_cb_res_up_market_coeff.an_rs_quantity, q_cb_res_up_market_coeff.key_r_pc_l6;

CREATE OR REPLACE VIEW public.q_cb_unit_price
 AS
 SELECT q_cb_up_coeff.rep_month,
    q_cb_up_coeff.pc,
    q_cb_up_coeff.l_1,
    q_cb_up_coeff.l_2,
    q_cb_up_coeff.l_3,
    q_cb_up_coeff.l_4,
    q_cb_up_coeff.l_5,
    q_cb_up_coeff.l_6,
    q_cb_up_coeff.month,
    q_cb_up_coeff.curr,
    sum(q_cb_up_coeff.up_cost * q_cb_up_coeff.an_rs_quantity * q_cb_up_coeff.up_cost_coeff_all) AS unit_price_planned_coeff,
    q_cb_up_coeff.key_r_pc_l6
   FROM q_cb_up_coeff
  GROUP BY q_cb_up_coeff.rep_month, q_cb_up_coeff.pc, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.month, q_cb_up_coeff.curr, q_cb_up_coeff.key_r_pc_l6
  ORDER BY q_cb_up_coeff.rep_month, q_cb_up_coeff.pc, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.month;

CREATE OR REPLACE VIEW public.q_pl_exp
 AS
 SELECT q_cb_unit_price.rep_month,
    q_cb_unit_price.pc,
    q_cb_unit_price.l_1,
    q_cb_unit_price.l_2,
    q_cb_unit_price.l_3,
    q_cb_unit_price.l_4,
    q_cb_unit_price.l_5,
    q_cb_unit_price.l_6,
    q_cb_unit_price.month,
    sum(t_cb_qty.exp_cb_qty * q_cb_unit_price.unit_price_planned_coeff) AS total_expense,
    q_cb_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_unit_price
     LEFT JOIN t_cb_qty ON q_cb_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY q_cb_unit_price.rep_month, q_cb_unit_price.pc, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.month, q_cb_unit_price.curr, t_cb_qty.key_r_pc_l6;

CREATE OR REPLACE VIEW public.q_cb_exp
 AS
 SELECT q_pl_exp.rep_month,
    q_pl_exp.pc,
    q_pl_exp.l_1,
    q_pl_exp.l_2,
    q_pl_exp.l_3,
    q_pl_exp.l_4,
    q_pl_exp.l_5,
    q_pl_exp.l_6,
    q_pl_exp.month,
    q_pl_exp.total_expense,
    q_pl_exp.curr,
    q_pl_exp.key_r_pc_l6
   FROM q_pl_exp
  WHERE q_pl_exp.total_expense <> 0::numeric
UNION ALL
 SELECT t_cb_exp.rep_month,
    t_cb_exp.pc AS pc,
    t_cb_exp.l_1,
    t_cb_exp.l_2,
    t_cb_exp.l_3,
    t_cb_exp.l_4,
    t_cb_exp.l_5,
    t_cb_exp.l_6,
    t_cb_exp.exp_ac_mon AS month,
    t_cb_exp.exp_ac_exp AS total_expense,
    t_cb_exp.curr,
    t_cb_exp.key_r_pc_l6
   FROM t_cb_exp
  WHERE t_cb_exp.exp_ac_exp <> 0::numeric;

CREATE OR REPLACE VIEW public.q_cb_work_up_with_market_coeff
 AS
 SELECT q_cb_res_up_market_coeff.pc,
    q_cb_res_up_market_coeff.l_1,
    q_cb_res_up_market_coeff.l_2,
    q_cb_res_up_market_coeff.l_3,
    q_cb_res_up_market_coeff.l_4,
    q_cb_res_up_market_coeff.l_5,
    q_cb_res_up_market_coeff.l_6,
    q_cb_res_up_market_coeff.rep_month,
    q_cb_res_up_market_coeff.month,
    sum(q_cb_res_up_market_coeff.an_rs_quantity * q_cb_res_up_market_coeff.up_cost * q_cb_res_up_market_coeff.up_cost_coeff) AS up_with_coeff,
    q_cb_res_up_market_coeff.curr
   FROM q_cb_res_up_market_coeff
  GROUP BY q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.month, q_cb_res_up_market_coeff.curr;

CREATE OR REPLACE VIEW public.q_cb_work_up_without_coeff
 AS
 SELECT sum(q_cb_up_pre_coeff_activem_indexes.an_rs_quantity * q_cb_up_pre_coeff_activem_indexes.up_cost) AS unit_price_planned,
    q_cb_up_pre_coeff_activem_indexes.rep_month,
    q_cb_up_pre_coeff_activem_indexes.pc,
    q_cb_up_pre_coeff_activem_indexes.l_1,
    q_cb_up_pre_coeff_activem_indexes.l_2,
    q_cb_up_pre_coeff_activem_indexes.l_3,
    q_cb_up_pre_coeff_activem_indexes.l_4,
    q_cb_up_pre_coeff_activem_indexes.l_5,
    q_cb_up_pre_coeff_activem_indexes.l_6,
    q_cb_up_pre_coeff_activem_indexes.exp_cb_mon,
    q_cb_up_pre_coeff_activem_indexes.curr
   FROM q_cb_up_pre_coeff_activem_indexes
  GROUP BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes.curr;


ALTER FUNCTION public.q_convert_to_motor_one()
    OWNER TO ictasadmin;

DROP VIEW IF EXISTS q_bb_up_pre_coeff_activem_indexes CASCADE;

CREATE OR REPLACE VIEW public.q_bb_up_pre_coeff_activem_indexes
 AS
 SELECT q_bb_analysis_activem_with_prices.rep_month,
    q_bb_analysis_activem_with_prices.pc,
    q_bb_analysis_activem_with_prices.l_1,
    q_bb_analysis_activem_with_prices.l_2,
    q_bb_analysis_activem_with_prices.l_3,
    q_bb_analysis_activem_with_prices.l_4,
    q_bb_analysis_activem_with_prices.l_5,
    q_bb_analysis_activem_with_prices.l_6,
    q_bb_analysis_activem_with_prices.exp_bb_mon,
    q_bb_analysis_activem_with_prices.rs_l1,
    q_bb_analysis_activem_with_prices.rs_l2,
    q_bb_analysis_activem_with_prices.rs_l3,
    q_bb_analysis_activem_with_prices.rs_l4,
    t_bb_indexes.bb_ufe,
    t_bb_indexes.bb_tufe,
    t_bb_indexes.bb_inf_usd,
    t_bb_indexes.bb_inf_eur,
    t_bb_indexes.bb_metal,
    t_bb_indexes.bb_petrol,
    t_bb_indexes.bb_cement,
    t_bb_indexes.bb_electricity,
    q_bb_analysis_activem_with_prices.curr,
    q_bb_analysis_activem_with_prices.an_rs_quantity,
    q_bb_analysis_activem_with_prices.up_cost,
    q_bb_analysis_activem_with_prices.key_r4_simple,
    q_bb_analysis_activem_with_prices.key_r4,
    q_bb_analysis_activem_with_prices.key_r_pc_l6,
    q_bb_analysis_activem_with_prices.key_full
   FROM q_bb_analysis_activem_with_prices
     LEFT JOIN t_bb_indexes ON q_bb_analysis_activem_with_prices.exp_bb_mon = t_bb_indexes.month AND q_bb_analysis_activem_with_prices.rep_month::text = t_bb_indexes.rep_month::text;

CREATE OR REPLACE VIEW public.q_bb_res_up_market_coeff
 AS
 SELECT q_bb_up_pre_coeff_activem_indexes.rep_month,
    q_bb_up_pre_coeff_activem_indexes.pc,
    q_bb_up_pre_coeff_activem_indexes.l_1,
    q_bb_up_pre_coeff_activem_indexes.l_2,
    q_bb_up_pre_coeff_activem_indexes.l_3,
    q_bb_up_pre_coeff_activem_indexes.l_4,
    q_bb_up_pre_coeff_activem_indexes.l_5,
    q_bb_up_pre_coeff_activem_indexes.l_6,
    q_bb_up_pre_coeff_activem_indexes.rs_l1,
    q_bb_up_pre_coeff_activem_indexes.rs_l2,
    q_bb_up_pre_coeff_activem_indexes.rs_l3,
    q_bb_up_pre_coeff_activem_indexes.rs_l4 ,
    (1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
    q_bb_up_pre_coeff_activem_indexes.exp_bb_mon AS "month",
    q_bb_up_pre_coeff_activem_indexes.up_cost,
    q_bb_up_pre_coeff_activem_indexes.an_rs_quantity,
    r4_code.currency as curr,
    q_bb_up_pre_coeff_activem_indexes.key_r4_simple,
    q_bb_up_pre_coeff_activem_indexes.key_r4,
    q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_bb_up_pre_coeff_activem_indexes.key_full,
    (((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_bb_mon AS key_full_comb
   FROM q_bb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.bb_electricity)), q_bb_up_pre_coeff_activem_indexes.exp_bb_mon, q_bb_up_pre_coeff_activem_indexes.up_cost, q_bb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_bb_up_pre_coeff_activem_indexes.key_r4_simple, q_bb_up_pre_coeff_activem_indexes.key_r4, q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_bb_up_pre_coeff_activem_indexes.key_full, ((((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_bb_mon)
  ORDER BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, q_bb_up_pre_coeff_activem_indexes.exp_bb_mon;

CREATE OR REPLACE VIEW public.q_bb_up_coeff
 AS
 SELECT q_bb_res_up_market_coeff.rep_month,
    q_bb_res_up_market_coeff.pc,
    q_bb_res_up_market_coeff.l_1,
    q_bb_res_up_market_coeff.l_2,
    q_bb_res_up_market_coeff.l_3,
    q_bb_res_up_market_coeff.l_4,
    q_bb_res_up_market_coeff.l_5,
    q_bb_res_up_market_coeff.l_6,
    q_bb_res_up_market_coeff.rs_l1,
    q_bb_res_up_market_coeff.rs_l2,
    q_bb_res_up_market_coeff.rs_l3,
    q_bb_res_up_market_coeff.rs_l4,
    q_bb_res_up_market_coeff.month,
    q_bb_res_up_market_coeff.up_cost_coeff,
    q_bb_curr_escalation_rates.k_usd,
    q_bb_curr_escalation_rates.k_eur,
    round(q_bb_res_up_market_coeff.up_cost_coeff * q_bb_curr_escalation_rates.k_usd * q_bb_curr_escalation_rates.k_eur, 6) AS up_cost_coeff_all,
    q_bb_res_up_market_coeff.up_cost,
    q_bb_res_up_market_coeff.curr,
    q_bb_res_up_market_coeff.key_full,
    q_bb_res_up_market_coeff.an_rs_quantity,
    q_bb_res_up_market_coeff.key_r_pc_l6
   FROM q_bb_res_up_market_coeff
     LEFT JOIN q_bb_curr_escalation_rates ON q_bb_res_up_market_coeff.key_full_comb = q_bb_curr_escalation_rates.key_full_comb
  GROUP BY q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.rs_l1, q_bb_res_up_market_coeff.rs_l2, q_bb_res_up_market_coeff.rs_l3, q_bb_res_up_market_coeff.rs_l4, q_bb_res_up_market_coeff.month, q_bb_res_up_market_coeff.up_cost_coeff, q_bb_curr_escalation_rates.k_usd, q_bb_curr_escalation_rates.k_eur, (round(q_bb_res_up_market_coeff.up_cost_coeff * q_bb_curr_escalation_rates.k_usd * q_bb_curr_escalation_rates.k_eur, 6)), q_bb_res_up_market_coeff.up_cost, q_bb_res_up_market_coeff.curr, q_bb_res_up_market_coeff.key_full, q_bb_res_up_market_coeff.an_rs_quantity, q_bb_res_up_market_coeff.key_r_pc_l6;

CREATE OR REPLACE VIEW public.q_bb_unit_price
 AS
 SELECT q_bb_up_coeff.rep_month,
    q_bb_up_coeff.pc,
    q_bb_up_coeff.l_1,
    q_bb_up_coeff.l_2,
    q_bb_up_coeff.l_3,
    q_bb_up_coeff.l_4,
    q_bb_up_coeff.l_5,
    q_bb_up_coeff.l_6,
    q_bb_up_coeff.month,
    q_bb_up_coeff.curr,
    sum(q_bb_up_coeff.up_cost * q_bb_up_coeff.an_rs_quantity * q_bb_up_coeff.up_cost_coeff_all) AS unit_price_planned_coeff,
    q_bb_up_coeff.key_r_pc_l6
   FROM q_bb_up_coeff
  GROUP BY q_bb_up_coeff.rep_month, q_bb_up_coeff.pc, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.month, q_bb_up_coeff.curr, q_bb_up_coeff.key_r_pc_l6
  ORDER BY q_bb_up_coeff.rep_month, q_bb_up_coeff.pc, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.month;

CREATE OR REPLACE VIEW public.q_pl_exp
 AS
 SELECT q_bb_unit_price.rep_month,
    q_bb_unit_price.pc,
    q_bb_unit_price.l_1,
    q_bb_unit_price.l_2,
    q_bb_unit_price.l_3,
    q_bb_unit_price.l_4,
    q_bb_unit_price.l_5,
    q_bb_unit_price.l_6,
    q_bb_unit_price.month,
    sum(t_bb_qty.exp_bb_qty * q_bb_unit_price.unit_price_planned_coeff) AS total_expense,
    q_bb_unit_price.curr,
    t_bb_qty.key_r_pc_l6
   FROM q_bb_unit_price
     LEFT JOIN t_bb_qty ON q_bb_unit_price.key_r_pc_l6::text = t_bb_qty.key_r_pc_l6::text AND q_bb_unit_price.month = t_bb_qty.exp_bb_mon
  GROUP BY q_bb_unit_price.rep_month, q_bb_unit_price.pc, q_bb_unit_price.l_1, q_bb_unit_price.l_2, q_bb_unit_price.l_3, q_bb_unit_price.l_4, q_bb_unit_price.l_5, q_bb_unit_price.l_6, q_bb_unit_price.month, q_bb_unit_price.curr, t_bb_qty.key_r_pc_l6;

CREATE OR REPLACE VIEW public.q_bb_exp
 AS
 SELECT q_pl_exp.rep_month,
    q_pl_exp.pc,
    q_pl_exp.l_1,
    q_pl_exp.l_2,
    q_pl_exp.l_3,
    q_pl_exp.l_4,
    q_pl_exp.l_5,
    q_pl_exp.l_6,
    q_pl_exp.month,
    q_pl_exp.total_expense,
    q_pl_exp.curr,
    q_pl_exp.key_r_pc_l6
   FROM q_pl_exp
  WHERE q_pl_exp.total_expense <> 0::numeric
UNION ALL
 SELECT t_bb_exp.rep_month,
    t_bb_exp.pc AS pc,
    t_bb_exp.l_1,
    t_bb_exp.l_2,
    t_bb_exp.l_3,
    t_bb_exp.l_4,
    t_bb_exp.l_5,
    t_bb_exp.l_6,
    t_bb_exp.exp_ac_mon AS month,
    t_bb_exp.exp_ac_exp AS total_expense,
    t_bb_exp.curr,
    t_bb_exp.key_r_pc_l6
   FROM t_bb_exp
  WHERE t_bb_exp.exp_ac_exp <> 0::numeric;

CREATE OR REPLACE VIEW public.q_bb_work_up_with_market_coeff
 AS
 SELECT q_bb_res_up_market_coeff.pc,
    q_bb_res_up_market_coeff.l_1,
    q_bb_res_up_market_coeff.l_2,
    q_bb_res_up_market_coeff.l_3,
    q_bb_res_up_market_coeff.l_4,
    q_bb_res_up_market_coeff.l_5,
    q_bb_res_up_market_coeff.l_6,
    q_bb_res_up_market_coeff.rep_month,
    q_bb_res_up_market_coeff.month,
    sum(q_bb_res_up_market_coeff.an_rs_quantity * q_bb_res_up_market_coeff.up_cost * q_bb_res_up_market_coeff.up_cost_coeff) AS up_with_coeff,
    q_bb_res_up_market_coeff.curr
   FROM q_bb_res_up_market_coeff
  GROUP BY q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.month, q_bb_res_up_market_coeff.curr;

CREATE OR REPLACE VIEW public.q_bb_work_up_without_coeff
 AS
 SELECT sum(q_bb_up_pre_coeff_activem_indexes.an_rs_quantity * q_bb_up_pre_coeff_activem_indexes.up_cost) AS unit_price_planned,
    q_bb_up_pre_coeff_activem_indexes.rep_month,
    q_bb_up_pre_coeff_activem_indexes.pc,
    q_bb_up_pre_coeff_activem_indexes.l_1,
    q_bb_up_pre_coeff_activem_indexes.l_2,
    q_bb_up_pre_coeff_activem_indexes.l_3,
    q_bb_up_pre_coeff_activem_indexes.l_4,
    q_bb_up_pre_coeff_activem_indexes.l_5,
    q_bb_up_pre_coeff_activem_indexes.l_6,
    q_bb_up_pre_coeff_activem_indexes.exp_bb_mon,
    q_bb_up_pre_coeff_activem_indexes.curr
   FROM q_bb_up_pre_coeff_activem_indexes
  GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.exp_bb_mon, q_bb_up_pre_coeff_activem_indexes.curr;

RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_convert_to_motor_one()
    OWNER TO ictasadmin;
