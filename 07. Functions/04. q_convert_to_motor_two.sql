-- FUNCTION: public.q_convert_to_motor_two(text)

DROP FUNCTION IF EXISTS public.q_convert_to_motor_two(text);

CREATE OR REPLACE FUNCTION public.q_convert_to_motor_two(
	motor_market_status text)
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
       q_cb_monthly_curr_rates_inc.rt_eur_try,
       q_cb_monthly_curr_rates_inc.rt_eur_usd,
       q_cb_monthly_curr_rates_inc.rt_usd_try,
       q_cb_monthly_curr_rates_inc.rt_usd_eur,
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
FROM   (q_cb_analysis_activem_with_prices
        LEFT JOIN t_cb_indexes
               ON ( q_cb_analysis_activem_with_prices.rep_month =
                    t_cb_indexes.rep_month )
                  AND ( q_cb_analysis_activem_with_prices.exp_cb_mon =
                        t_cb_indexes.month ))
       LEFT JOIN q_cb_monthly_curr_rates_inc
              ON ( q_cb_analysis_activem_with_prices.rep_month =
                             q_cb_monthly_curr_rates_inc.rep_month )
                 AND ( q_cb_analysis_activem_with_prices.pc =
                       q_cb_monthly_curr_rates_inc.pc )
                 AND ( q_cb_analysis_activem_with_prices.exp_cb_mon =
                           q_cb_monthly_curr_rates_inc.exp_cb_mon ); 

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

if motor_market_status = 'ON'::text 
THEN RAISE NOTICE 'Using Market Status On';

DROP VIEW IF EXISTS public.q_cb_unit_price_pre CASCADE;

CREATE OR REPLACE VIEW public.q_cb_unit_price_pre
 AS
 SELECT q_cb_up_pre_coeff_activem_indexes.rep_month,
    q_cb_up_pre_coeff_activem_indexes.pc,
    q_cb_up_pre_coeff_activem_indexes.l_1,
    q_cb_up_pre_coeff_activem_indexes.l_2,
    q_cb_up_pre_coeff_activem_indexes.l_3,
    q_cb_up_pre_coeff_activem_indexes.l_4,
    q_cb_up_pre_coeff_activem_indexes.l_5,
    q_cb_up_pre_coeff_activem_indexes.l_6,
    q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_up_pre_coeff_activem_indexes.curr,
    q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END AS cost_market_end_rate_change,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_cb_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text
     LEFT JOIN t_cb_exp_esc_rates_l6 ON q_cb_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_exp_esc_rates_l6.month AND q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE public.q_cb_unit_price_pre
    OWNER TO ictasadmin;

ELSE RAISE NOTICE 'Market Change OFF';

-- View: public.q_cb_unit_price_pre

DROP VIEW IF EXISTS public.q_cb_unit_price_pre CASCADE;

CREATE OR REPLACE VIEW public.q_cb_unit_price_pre
 AS
 SELECT q_cb_up_pre_coeff_activem_indexes.rep_month,
    q_cb_up_pre_coeff_activem_indexes.pc,
    q_cb_up_pre_coeff_activem_indexes.l_1,
    q_cb_up_pre_coeff_activem_indexes.l_2,
    q_cb_up_pre_coeff_activem_indexes.l_3,
    q_cb_up_pre_coeff_activem_indexes.l_4,
    q_cb_up_pre_coeff_activem_indexes.l_5,
    q_cb_up_pre_coeff_activem_indexes.l_6,
    q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_up_pre_coeff_activem_indexes.curr,
    q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_cb_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text
     LEFT JOIN t_cb_exp_esc_rates_l6 ON q_cb_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_exp_esc_rates_l6.month AND q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE public.q_cb_unit_price_pre
    OWNER TO ictasadmin;

end if;

CREATE OR REPLACE VIEW public.q_cb_unit_price
 AS
SELECT q_cb_unit_price_pre.rep_month,
       q_cb_unit_price_pre.pc,
       q_cb_unit_price_pre.l_1,
       q_cb_unit_price_pre.l_2,
       q_cb_unit_price_pre.l_3,
       q_cb_unit_price_pre.l_4,
       q_cb_unit_price_pre.l_5,
       q_cb_unit_price_pre.l_6,
       q_cb_unit_price_pre.month,
       q_cb_unit_price_pre.curr,
       round(SUM((up_cost_total) * (an_rs_quantity)),12) AS Unit_Price_Planned_Coeff,
       q_cb_unit_price_pre.key_r_pc_l6
FROM   q_cb_unit_price_pre
GROUP  BY q_cb_unit_price_pre.rep_month,
          q_cb_unit_price_pre.pc,
          q_cb_unit_price_pre.l_1,
          q_cb_unit_price_pre.l_2,
          q_cb_unit_price_pre.l_3,
          q_cb_unit_price_pre.l_4,
          q_cb_unit_price_pre.l_5,
          q_cb_unit_price_pre.l_6,
          q_cb_unit_price_pre.month,
          q_cb_unit_price_pre.curr,
          q_cb_unit_price_pre.key_r_pc_l6
ORDER  BY q_cb_unit_price_pre.rep_month,
          q_cb_unit_price_pre.pc,
          q_cb_unit_price_pre.l_1,
          q_cb_unit_price_pre.l_2,
          q_cb_unit_price_pre.l_3,
          q_cb_unit_price_pre.l_4,
          q_cb_unit_price_pre.l_5,
          q_cb_unit_price_pre.l_6,
          q_cb_unit_price_pre.month; 

-- View: public.q_pl_exp

--DROP VIEW public.q_pl_exp CASCADE;

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
    round(sum(t_cb_qty.exp_cb_qty * q_cb_unit_price.unit_price_planned_coeff),12) AS total_expense,
    q_cb_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_unit_price
     LEFT JOIN t_cb_qty ON q_cb_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY q_cb_unit_price.rep_month, q_cb_unit_price.pc, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.month, q_cb_unit_price.curr, t_cb_qty.key_r_pc_l6;

ALTER TABLE public.q_pl_exp
    OWNER TO ictasadmin;

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
    q_bb_monthly_curr_rates_inc.rt_eur_try,
    q_bb_monthly_curr_rates_inc.rt_eur_usd,
    q_bb_monthly_curr_rates_inc.rt_usd_try,
    q_bb_monthly_curr_rates_inc.rt_usd_eur,
    q_bb_analysis_activem_with_prices.exp_base_mon,
    q_bb_analysis_activem_with_prices.rs_l1,
    q_bb_analysis_activem_with_prices.rs_l2,
    q_bb_analysis_activem_with_prices.rs_l3,
    q_bb_analysis_activem_with_prices.rs_l4,
    t_bb_indexes.r_ufe,
    t_bb_indexes.r_tufe,
    t_bb_indexes.r_inf_usd,
    t_bb_indexes.r_inf_eur,
    t_bb_indexes.r_metal,
    t_bb_indexes.r_petrol,
    t_bb_indexes.r_cement,
    t_bb_indexes.r_electricity,
    q_bb_analysis_activem_with_prices.curr,
    q_bb_analysis_activem_with_prices.an_rs_quantity,
    q_bb_analysis_activem_with_prices.up_cost,
    q_bb_analysis_activem_with_prices.key_r4_simple,
    q_bb_analysis_activem_with_prices.key_r4,
    q_bb_analysis_activem_with_prices.key_r_pc_l6,
    q_bb_analysis_activem_with_prices.key_full
   FROM q_bb_analysis_activem_with_prices
     LEFT JOIN t_bb_indexes ON q_bb_analysis_activem_with_prices.rep_month::text = t_bb_indexes.rep_month::text AND q_bb_analysis_activem_with_prices.exp_base_mon = t_bb_indexes.month AND q_bb_analysis_activem_with_prices.pc::text = t_bb_indexes.pc::text
     LEFT JOIN q_bb_monthly_curr_rates_inc ON q_bb_analysis_activem_with_prices.rep_month::text = q_bb_monthly_curr_rates_inc.rep_month::text AND q_bb_analysis_activem_with_prices.pc::text = q_bb_monthly_curr_rates_inc.pc::text AND q_bb_analysis_activem_with_prices.exp_base_mon = q_bb_monthly_curr_rates_inc.exp_base_mon;

ALTER TABLE public.q_bb_up_pre_coeff_activem_indexes
    OWNER TO ictasadmin;


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
    (1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.r_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.r_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.r_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.r_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.r_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.r_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.r_electricity) AS up_cost_coeff,
    q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS "month",
    q_bb_up_pre_coeff_activem_indexes.up_cost,
    q_bb_up_pre_coeff_activem_indexes.an_rs_quantity,
    r4_code.currency as curr,
    q_bb_up_pre_coeff_activem_indexes.key_r4_simple,
    q_bb_up_pre_coeff_activem_indexes.key_r4,
    q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_bb_up_pre_coeff_activem_indexes.key_full,
    (((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS key_full_comb
   FROM q_bb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.r_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.r_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.r_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.r_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.r_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.r_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.r_electricity)), q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.up_cost, q_bb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_bb_up_pre_coeff_activem_indexes.key_r4_simple, q_bb_up_pre_coeff_activem_indexes.key_r4, q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_bb_up_pre_coeff_activem_indexes.key_full, ((((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_base_mon)
  ORDER BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, q_bb_up_pre_coeff_activem_indexes.exp_base_mon;

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

if motor_market_status = 'ON'::text 
THEN RAISE NOTICE 'ON';

DROP VIEW IF EXISTS public.q_bb_unit_price_pre;

CREATE OR REPLACE VIEW public.q_bb_unit_price_pre
 AS
 SELECT q_bb_up_pre_coeff_activem_indexes.rep_month,
    q_bb_up_pre_coeff_activem_indexes.pc,
    q_bb_up_pre_coeff_activem_indexes.l_1,
    q_bb_up_pre_coeff_activem_indexes.l_2,
    q_bb_up_pre_coeff_activem_indexes.l_3,
    q_bb_up_pre_coeff_activem_indexes.l_4,
    q_bb_up_pre_coeff_activem_indexes.l_5,
    q_bb_up_pre_coeff_activem_indexes.l_6,
    q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS month,
    q_bb_up_pre_coeff_activem_indexes.curr,
    q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_ufe) + r4_code.w_tufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_tufe) + r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * ((1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * ((1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END AS cost_market_end_rate_change,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * ((1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * ((1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity)) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_bb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_ufe) + r4_code.w_tufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_tufe) + r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_bb_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_bb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_bb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_bb_analysis ON q_bb_up_pre_coeff_activem_indexes.key_full::text = t_bb_analysis.key_full::text
     LEFT JOIN t_bb_exp_esc_rates_l6 ON q_bb_up_pre_coeff_activem_indexes.exp_base_mon = t_bb_exp_esc_rates_l6.month AND q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_bb_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE public.q_bb_unit_price_pre
    OWNER TO ictasadmin;

ELSE RAISE NOTICE 'OFF';

-- View: public.q_bb_unit_price_pre

DROP VIEW IF EXISTS public.q_bb_unit_price_pre CASCADE;

CREATE OR REPLACE VIEW public.q_bb_unit_price_pre
 AS
 SELECT q_bb_up_pre_coeff_activem_indexes.rep_month,
    q_bb_up_pre_coeff_activem_indexes.pc,
    q_bb_up_pre_coeff_activem_indexes.l_1,
    q_bb_up_pre_coeff_activem_indexes.l_2,
    q_bb_up_pre_coeff_activem_indexes.l_3,
    q_bb_up_pre_coeff_activem_indexes.l_4,
    q_bb_up_pre_coeff_activem_indexes.l_5,
    q_bb_up_pre_coeff_activem_indexes.l_6,
    q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS month,
    q_bb_up_pre_coeff_activem_indexes.curr,
    q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_ufe) + r4_code.w_tufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_tufe) + r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                ELSE
                CASE
                    WHEN q_bb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                    ELSE q_bb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_bb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_ufe) + r4_code.w_tufe * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_tufe) + r4_code.w_metal * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_metal) + r4_code.w_petrol * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_petrol) + r4_code.w_cement * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_cement) + r4_code.w_electricity * (1::numeric + q_bb_up_pre_coeff_activem_indexes.r_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_bb_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_bb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_bb_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_bb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_bb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_bb_analysis ON q_bb_up_pre_coeff_activem_indexes.key_full::text = t_bb_analysis.key_full::text
     LEFT JOIN t_bb_exp_esc_rates_l6 ON q_bb_up_pre_coeff_activem_indexes.exp_base_mon = t_bb_exp_esc_rates_l6.month AND q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_bb_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE public.q_bb_unit_price_pre
    OWNER TO ictasadmin;

end if;

CREATE OR REPLACE VIEW public.q_bb_unit_price
 AS
SELECT q_bb_unit_price_pre.rep_month,
       q_bb_unit_price_pre.pc,
       q_bb_unit_price_pre.l_1,
       q_bb_unit_price_pre.l_2,
       q_bb_unit_price_pre.l_3,
       q_bb_unit_price_pre.l_4,
       q_bb_unit_price_pre.l_5,
       q_bb_unit_price_pre.l_6,
       q_bb_unit_price_pre.month,
       q_bb_unit_price_pre.curr,
       SUM((up_cost_total) * (an_rs_quantity)) AS Unit_Price_Planned_Coeff,
       q_bb_unit_price_pre.key_r_pc_l6
FROM   q_bb_unit_price_pre
GROUP  BY q_bb_unit_price_pre.rep_month,
          q_bb_unit_price_pre.pc,
          q_bb_unit_price_pre.l_1,
          q_bb_unit_price_pre.l_2,
          q_bb_unit_price_pre.l_3,
          q_bb_unit_price_pre.l_4,
          q_bb_unit_price_pre.l_5,
          q_bb_unit_price_pre.l_6,
          q_bb_unit_price_pre.month,
          q_bb_unit_price_pre.curr,
          q_bb_unit_price_pre.key_r_pc_l6
ORDER  BY q_bb_unit_price_pre.rep_month,
          q_bb_unit_price_pre.pc,
          q_bb_unit_price_pre.l_1,
          q_bb_unit_price_pre.l_2,
          q_bb_unit_price_pre.l_3,
          q_bb_unit_price_pre.l_4,
          q_bb_unit_price_pre.l_5,
          q_bb_unit_price_pre.l_6,
          q_bb_unit_price_pre.month; 

CREATE OR REPLACE VIEW public.q_bb_pl_exp
 AS
 SELECT t_bb_qty.rep_month,
    t_bb_qty.pc,
    t_bb_qty.l_1,
    t_bb_qty.l_2,
    t_bb_qty.l_3,
    t_bb_qty.l_4,
    t_bb_qty.l_5,
    t_bb_qty.l_6,
    q_bb_unit_price.month,
    sum(t_bb_qty.exp_base_qty * q_bb_unit_price.unit_price_planned_coeff) AS total_expense,
    q_bb_unit_price.curr,
    q_bb_unit_price.key_r_pc_l6
   FROM t_bb_qty
     RIGHT JOIN q_bb_unit_price ON t_bb_qty.pc::text = q_bb_unit_price.pc::text AND t_bb_qty.l_1::text = q_bb_unit_price.l_1::text AND t_bb_qty.l_2::text = q_bb_unit_price.l_2::text AND t_bb_qty.l_3::text = q_bb_unit_price.l_3::text AND t_bb_qty.l_4::text = q_bb_unit_price.l_4::text AND t_bb_qty.l_5::text = q_bb_unit_price.l_5::text AND t_bb_qty.l_6::text = q_bb_unit_price.l_6::text AND t_bb_qty.exp_base_mon = q_bb_unit_price.month AND t_bb_qty.rep_month::text = q_bb_unit_price.rep_month::text
  GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.month, q_bb_unit_price.curr, q_bb_unit_price.key_r_pc_l6;

ALTER TABLE public.q_bb_pl_exp
    OWNER TO ictasadmin;

CREATE OR REPLACE VIEW public.q_bb_exp
 AS
 SELECT q_bb_pl_exp.rep_month,
    q_bb_pl_exp.pc,
    q_bb_pl_exp.l_1,
    q_bb_pl_exp.l_2,
    q_bb_pl_exp.l_3,
    q_bb_pl_exp.l_4,
    q_bb_pl_exp.l_5,
    q_bb_pl_exp.l_6,
    q_bb_pl_exp.month,
    q_bb_pl_exp.total_expense,
    q_bb_pl_exp.curr,
    q_bb_pl_exp.key_r_pc_l6
   FROM q_bb_pl_exp
  WHERE q_bb_pl_exp.total_expense <> 0::numeric
UNION ALL
 SELECT t_bb_exp.rep_month,
    t_bb_exp.pc,
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

ALTER TABLE public.q_bb_exp
    OWNER TO ictasadmin;

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
    q_bb_up_pre_coeff_activem_indexes.exp_base_mon,
    q_bb_up_pre_coeff_activem_indexes.curr
   FROM q_bb_up_pre_coeff_activem_indexes
  GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.curr;

RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_convert_to_motor_two(text)
    OWNER TO ictasadmin;
