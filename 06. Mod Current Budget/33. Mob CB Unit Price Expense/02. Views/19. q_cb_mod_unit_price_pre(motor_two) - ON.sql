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
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END AS cost_market_end_rate_change,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_mod_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    t_cb_mod_analysis.an_rs_quantity,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_mod_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN temp_r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = temp_r4_code.key_r4_simple::text
     LEFT JOIN t_cb_mod_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_mod_analysis.key_full::text
     LEFT JOIN t_cb_mod_exp_esc_rates_l6 ON q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_mod_exp_esc_rates_l6.month AND q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_mod_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE public.q_cb_mod_unit_price_pre
    OWNER TO ictasadmin;
