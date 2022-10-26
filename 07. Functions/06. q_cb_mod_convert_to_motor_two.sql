DROP VIEW IF EXISTS q_cb_mod_up_pre_coeff_activem_indexes CASCADE;

CREATE OR REPLACE VIEW q_cb_mod_up_pre_coeff_activem_indexes
 AS
SELECT q_cb_mod_analysis_activem_with_prices.rep_month,
       q_cb_mod_analysis_activem_with_prices.pc,
       q_cb_mod_analysis_activem_with_prices.l_1,
       q_cb_mod_analysis_activem_with_prices.l_2,
       q_cb_mod_analysis_activem_with_prices.l_3,
       q_cb_mod_analysis_activem_with_prices.l_4,
       q_cb_mod_analysis_activem_with_prices.l_5,
       q_cb_mod_analysis_activem_with_prices.l_6,
       q_cb_mod_monthly_curr_rates_inc.rt_eur_try,
       q_cb_mod_monthly_curr_rates_inc.rt_eur_usd,
       q_cb_mod_monthly_curr_rates_inc.rt_usd_try,
       q_cb_mod_monthly_curr_rates_inc.rt_usd_eur,
       q_cb_mod_analysis_activem_with_prices.exp_cb_mon,
       q_cb_mod_analysis_activem_with_prices.rs_l1,
       q_cb_mod_analysis_activem_with_prices.rs_l2,
       q_cb_mod_analysis_activem_with_prices.rs_l3,
       q_cb_mod_analysis_activem_with_prices.rs_l4,
       t_cb_mod_indexes.bb_ufe,
       t_cb_mod_indexes.bb_tufe,
       t_cb_mod_indexes.bb_inf_usd,
       t_cb_mod_indexes.bb_inf_eur,
       t_cb_mod_indexes.bb_metal,
       t_cb_mod_indexes.bb_petrol,
       t_cb_mod_indexes.bb_cement,
       t_cb_mod_indexes.bb_electricity,
       q_cb_mod_analysis_activem_with_prices.currency as curr,
       q_cb_mod_analysis_activem_with_prices.an_rs_quantity,
       q_cb_mod_analysis_activem_with_prices.up_cost,
       q_cb_mod_analysis_activem_with_prices.key_r4_simple,
       q_cb_mod_analysis_activem_with_prices.key_r4,
       q_cb_mod_analysis_activem_with_prices.key_r_pc_l6,
       q_cb_mod_analysis_activem_with_prices.key_full
FROM   (q_cb_mod_analysis_activem_with_prices
        LEFT JOIN t_cb_mod_indexes
               ON ( q_cb_mod_analysis_activem_with_prices.rep_month =
                    t_cb_mod_indexes.rep_month )
                  AND ( q_cb_mod_analysis_activem_with_prices.exp_cb_mon =
                        t_cb_mod_indexes.month ))
       LEFT JOIN q_cb_mod_monthly_curr_rates_inc
              ON ( q_cb_mod_analysis_activem_with_prices.rep_month =
                             q_cb_mod_monthly_curr_rates_inc.rep_month )
                 AND ( q_cb_mod_analysis_activem_with_prices.pc =
                       q_cb_mod_monthly_curr_rates_inc.pc )
                 AND ( q_cb_mod_analysis_activem_with_prices.exp_cb_mon =
                           q_cb_mod_monthly_curr_rates_inc.exp_cb_mon ); 

DROP VIEW q_cb_mod_res_up_market_coeff;
CREATE TEMPORARY VIEW q_cb_mod_res_up_market_coeff
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l1,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l2,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l3,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l4 ,
    (1::numeric + temp_r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + temp_r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + temp_r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + temp_r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + temp_r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + temp_r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + temp_r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + temp_r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS "month",
    q_cb_mod_up_pre_coeff_activem_indexes.up_cost,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
    temp_r4_code.currency as curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_cb_mod_up_pre_coeff_activem_indexes.key_full,
    (((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS key_full_comb
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN temp_r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = temp_r4_code.key_r4_simple::text
  GROUP BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + temp_r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + temp_r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + temp_r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + temp_r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + temp_r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + temp_r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + temp_r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + temp_r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)), q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_mod_up_pre_coeff_activem_indexes.up_cost, q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity, temp_r4_code.currency, q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_mod_up_pre_coeff_activem_indexes.key_r4, q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_mod_up_pre_coeff_activem_indexes.key_full, ((((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon)
  ORDER BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon;

DROP VIEW q_cb_mod_up_coeff;
CREATE TEMPORARY VIEW q_cb_mod_up_coeff
 AS
 SELECT q_cb_mod_res_up_market_coeff.rep_month,
    q_cb_mod_res_up_market_coeff.pc,
    q_cb_mod_res_up_market_coeff.l_1,
    q_cb_mod_res_up_market_coeff.l_2,
    q_cb_mod_res_up_market_coeff.l_3,
    q_cb_mod_res_up_market_coeff.l_4,
    q_cb_mod_res_up_market_coeff.l_5,
    q_cb_mod_res_up_market_coeff.l_6,
    q_cb_mod_res_up_market_coeff.rs_l1,
    q_cb_mod_res_up_market_coeff.rs_l2,
    q_cb_mod_res_up_market_coeff.rs_l3,
    q_cb_mod_res_up_market_coeff.rs_l4,
    q_cb_mod_res_up_market_coeff.month,
    q_cb_mod_res_up_market_coeff.up_cost_coeff,
    q_cb_mod_curr_escalation_rates.k_usd,
    q_cb_mod_curr_escalation_rates.k_eur,
    round(q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur, 6) AS up_cost_coeff_all,
    q_cb_mod_res_up_market_coeff.up_cost,
    q_cb_mod_res_up_market_coeff.curr,
    q_cb_mod_res_up_market_coeff.key_full,
    q_cb_mod_res_up_market_coeff.an_rs_quantity,
    q_cb_mod_res_up_market_coeff.key_r_pc_l6
   FROM q_cb_mod_res_up_market_coeff
     LEFT JOIN q_cb_mod_curr_escalation_rates ON q_cb_mod_res_up_market_coeff.key_full_comb = q_cb_mod_curr_escalation_rates.key_full_comb
  GROUP BY q_cb_mod_res_up_market_coeff.rep_month, q_cb_mod_res_up_market_coeff.pc, q_cb_mod_res_up_market_coeff.l_1, q_cb_mod_res_up_market_coeff.l_2, q_cb_mod_res_up_market_coeff.l_3, q_cb_mod_res_up_market_coeff.l_4, q_cb_mod_res_up_market_coeff.l_5, q_cb_mod_res_up_market_coeff.l_6, q_cb_mod_res_up_market_coeff.rs_l1, q_cb_mod_res_up_market_coeff.rs_l2, q_cb_mod_res_up_market_coeff.rs_l3, q_cb_mod_res_up_market_coeff.rs_l4, q_cb_mod_res_up_market_coeff.month, q_cb_mod_res_up_market_coeff.up_cost_coeff, q_cb_mod_curr_escalation_rates.k_usd, q_cb_mod_curr_escalation_rates.k_eur, (round(q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur, 6)), q_cb_mod_res_up_market_coeff.up_cost, q_cb_mod_res_up_market_coeff.curr, q_cb_mod_res_up_market_coeff.key_full, q_cb_mod_res_up_market_coeff.an_rs_quantity, q_cb_mod_res_up_market_coeff.key_r_pc_l6;

DROP VIEW q_cb_mod_unit_price_pre;
CREATE TEMPORARY VIEW q_cb_mod_unit_price_pre
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_mod_up_pre_coeff_activem_indexes.curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
            ELSE
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
            END
        END AS cost_exc_inf_usd,
        CASE
            WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
            ELSE
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
            END
        END AS cost_exc_inf_eur,
    q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) AS cost_market,
        CASE
            WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
            ELSE
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
            END
        END +
        CASE
            WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
            ELSE
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
            END
        END + q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) AS up_cost_total,
    t_cb_mod_analysis.an_rs_quantity
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN temp_r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = temp_r4_code.key_r4_simple::text
     LEFT JOIN t_cb_mod_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_mod_analysis.key_full::text;

ALTER TABLE q_cb_mod_unit_price_pre
    OWNER TO ictasadmin;

DROP VIEW q_cb_mod_unit_price;
CREATE OR REPLACE VIEW q_cb_mod_unit_price
 AS
SELECT q_cb_mod_unit_price_pre.rep_month,
       q_cb_mod_unit_price_pre.pc,
       q_cb_mod_unit_price_pre.l_1,
       q_cb_mod_unit_price_pre.l_2,
       q_cb_mod_unit_price_pre.l_3,
       q_cb_mod_unit_price_pre.l_4,
       q_cb_mod_unit_price_pre.l_5,
       q_cb_mod_unit_price_pre.l_6,
       q_cb_mod_unit_price_pre.month,
       q_cb_mod_unit_price_pre.curr,
       SUM((up_cost_total) * (an_rs_quantity)) AS unit_price_planned_coeff,
       q_cb_mod_unit_price_pre.key_r_pc_l6
FROM   q_cb_mod_unit_price_pre
GROUP  BY q_cb_mod_unit_price_pre.rep_month,
          q_cb_mod_unit_price_pre.pc,
          q_cb_mod_unit_price_pre.l_1,
          q_cb_mod_unit_price_pre.l_2,
          q_cb_mod_unit_price_pre.l_3,
          q_cb_mod_unit_price_pre.l_4,
          q_cb_mod_unit_price_pre.l_5,
          q_cb_mod_unit_price_pre.l_6,
          q_cb_mod_unit_price_pre.month,
          q_cb_mod_unit_price_pre.curr,
          q_cb_mod_unit_price_pre.key_r_pc_l6
ORDER  BY q_cb_mod_unit_price_pre.rep_month,
          q_cb_mod_unit_price_pre.pc,
          q_cb_mod_unit_price_pre.l_1,
          q_cb_mod_unit_price_pre.l_2,
          q_cb_mod_unit_price_pre.l_3,
          q_cb_mod_unit_price_pre.l_4,
          q_cb_mod_unit_price_pre.l_5,
          q_cb_mod_unit_price_pre.l_6,
          q_cb_mod_unit_price_pre.month; 

CREATE OR REPLACE VIEW q_pl_exp
 AS
 SELECT q_cb_mod_unit_price.rep_month,
    q_cb_mod_unit_price.pc,
    q_cb_mod_unit_price.l_1,
    q_cb_mod_unit_price.l_2,
    q_cb_mod_unit_price.l_3,
    q_cb_mod_unit_price.l_4,
    q_cb_mod_unit_price.l_5,
    q_cb_mod_unit_price.l_6,
    q_cb_mod_unit_price.month,
    sum(t_cb_qty.exp_cb_qty * q_cb_mod_unit_price.unit_price_planned_coeff) AS total_expense,
    q_cb_mod_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_mod_unit_price
     LEFT JOIN t_cb_qty ON q_cb_mod_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_mod_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY q_cb_mod_unit_price.rep_month, q_cb_mod_unit_price.pc, q_cb_mod_unit_price.l_1, q_cb_mod_unit_price.l_2, q_cb_mod_unit_price.l_3, q_cb_mod_unit_price.l_4, q_cb_mod_unit_price.l_5, q_cb_mod_unit_price.l_6, q_cb_mod_unit_price.month, q_cb_mod_unit_price.curr, t_cb_qty.key_r_pc_l6;

DROP VIEW IF EXISTS q_cb_mod_exp;
CREATE TEMPORARY VIEW q_cb_mod_exp AS

SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
total_expense,
curr,
key_r_pc_l6

FROM 
q_pl_mod_exp
		
Where total_expense <>0

UNION 

ALL SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
exp_ac_mon,
exp_ac_exp,
curr,
key_r_pc_l6

	FROM 
		t_cb_exp

Where exp_ac_exp <>0 AND rep_month = (SELECT MAX(rep_month) from t_rep_month); 


CREATE OR REPLACE VIEW q_cb_work_up_with_market_coeff
 AS
 SELECT q_cb_mod_res_up_market_coeff.pc,
    q_cb_mod_res_up_market_coeff.l_1,
    q_cb_mod_res_up_market_coeff.l_2,
    q_cb_mod_res_up_market_coeff.l_3,
    q_cb_mod_res_up_market_coeff.l_4,
    q_cb_mod_res_up_market_coeff.l_5,
    q_cb_mod_res_up_market_coeff.l_6,
    q_cb_mod_res_up_market_coeff.rep_month,
    q_cb_mod_res_up_market_coeff.month,
    sum(q_cb_mod_res_up_market_coeff.an_rs_quantity * q_cb_mod_res_up_market_coeff.up_cost * q_cb_mod_res_up_market_coeff.up_cost_coeff) AS up_with_coeff,
    q_cb_mod_res_up_market_coeff.curr
   FROM q_cb_mod_res_up_market_coeff
  GROUP BY q_cb_mod_res_up_market_coeff.pc, q_cb_mod_res_up_market_coeff.l_1, q_cb_mod_res_up_market_coeff.l_2, q_cb_mod_res_up_market_coeff.l_3, q_cb_mod_res_up_market_coeff.l_4, q_cb_mod_res_up_market_coeff.l_5, q_cb_mod_res_up_market_coeff.l_6, q_cb_mod_res_up_market_coeff.rep_month, q_cb_mod_res_up_market_coeff.month, q_cb_mod_res_up_market_coeff.curr;

CREATE OR REPLACE VIEW q_cb_work_up_without_coeff
 AS
 SELECT sum(q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity * q_cb_mod_up_pre_coeff_activem_indexes.up_cost) AS unit_price_planned,
    q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon,
    q_cb_mod_up_pre_coeff_activem_indexes.curr
   FROM q_cb_mod_up_pre_coeff_activem_indexes
  GROUP BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_mod_up_pre_coeff_activem_indexes.curr;

ALTER FUNCTION q_convert_to_motor_two()
    OWNER TO ictasadmin;