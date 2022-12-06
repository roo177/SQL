-- View: public.q_bb_unit_price_pre

DROP VIEW public.q_bb_unit_price_pre CASCADE;

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
    t_bb_analysis.an_rs_quantity,
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

