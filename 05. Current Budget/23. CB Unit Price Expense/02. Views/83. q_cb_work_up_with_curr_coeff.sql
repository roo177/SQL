-- View: public.q_cb_work_up_with_curr_coeff

-- DROP VIEW public.q_cb_work_up_with_curr_coeff;

CREATE OR REPLACE VIEW public.q_cb_work_up_with_curr_coeff
 AS
 SELECT q_cb_analysis_activem_with_prices.rep_month,
    q_cb_analysis_activem_with_prices.pc,
    q_cb_analysis_activem_with_prices.l_1,
    q_cb_analysis_activem_with_prices.l_2,
    q_cb_analysis_activem_with_prices.l_3,
    q_cb_analysis_activem_with_prices.l_4,
    q_cb_analysis_activem_with_prices.l_5,
    q_cb_analysis_activem_with_prices.l_6,
    q_cb_analysis_activem_with_prices.exp_cb_mon AS month,
    sum(q_cb_analysis_activem_with_prices.an_rs_quantity * q_cb_analysis_activem_with_prices.up_cost * q_cb_curr_escalation_rates.k_usd * q_cb_curr_escalation_rates.k_eur) AS up,
    q_cb_curr_escalation_rates.rs_currency
   FROM q_cb_analysis_activem_with_prices
     LEFT JOIN q_cb_curr_escalation_rates ON q_cb_analysis_activem_with_prices.rep_month::text = q_cb_curr_escalation_rates.rep_month::text AND q_cb_analysis_activem_with_prices.pc::text = q_cb_curr_escalation_rates.pc::text AND q_cb_analysis_activem_with_prices.l_1::text = q_cb_curr_escalation_rates.l_1::text AND q_cb_analysis_activem_with_prices.l_2::text = q_cb_curr_escalation_rates.l_2::text AND q_cb_analysis_activem_with_prices.l_3::text = q_cb_curr_escalation_rates.l_3::text AND q_cb_analysis_activem_with_prices.l_4::text = q_cb_curr_escalation_rates.l_4::text AND q_cb_analysis_activem_with_prices.l_5::text = q_cb_curr_escalation_rates.l_5::text AND q_cb_analysis_activem_with_prices.l_6::text = q_cb_curr_escalation_rates.l_6::text AND q_cb_analysis_activem_with_prices.rs_l1::text = q_cb_curr_escalation_rates.rs_l1::text AND q_cb_analysis_activem_with_prices.rs_l2::text = q_cb_curr_escalation_rates.rs_l2::text AND q_cb_analysis_activem_with_prices.rs_l3::text = q_cb_curr_escalation_rates.rs_l3::text AND q_cb_analysis_activem_with_prices.rs_l4::text = q_cb_curr_escalation_rates.rs_l4::text AND q_cb_analysis_activem_with_prices.currency::text = q_cb_curr_escalation_rates.rs_currency::text AND q_cb_analysis_activem_with_prices.exp_cb_mon = q_cb_curr_escalation_rates.month
  GROUP BY q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon, q_cb_curr_escalation_rates.rs_currency
  ORDER BY q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon, (sum(q_cb_analysis_activem_with_prices.an_rs_quantity * q_cb_analysis_activem_with_prices.up_cost * q_cb_curr_escalation_rates.k_usd * q_cb_curr_escalation_rates.k_eur));

ALTER TABLE public.q_cb_work_up_with_curr_coeff
    OWNER TO ictasadmin;

