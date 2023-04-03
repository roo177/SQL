-- DROP VIEW IF EXISTS public.q_cb_mod_unit_price_pre;

CREATE OR REPLACE VIEW q_cb_mod_unit_price_pre
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.user_id,
    q_cb_mod_up_pre_coeff_activem_indexes.session_id,   
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
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text
     LEFT JOIN t_cb_exp_esc_rates_l6 ON q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_exp_esc_rates_l6.month AND q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_exp_esc_rates_l6.key_r_pc_l6::text;

