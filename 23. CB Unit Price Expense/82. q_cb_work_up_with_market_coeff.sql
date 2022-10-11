-- View: public.q_cb_work_up_with_market_coeff

-- DROP VIEW public.q_cb_work_up_with_market_coeff;

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
    q_cb_res_up_market_coeff.g_month,
    sum(q_cb_res_up_market_coeff.an_rs_quantity * q_cb_res_up_market_coeff.up_cost * q_cb_res_up_market_coeff.up_cost_coeff) AS up_with_coeff,
    q_cb_res_up_market_coeff.currency
   FROM q_cb_res_up_market_coeff
  GROUP BY q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.currency;

ALTER TABLE public.q_cb_work_up_with_market_coeff
    OWNER TO ictasadmin;

