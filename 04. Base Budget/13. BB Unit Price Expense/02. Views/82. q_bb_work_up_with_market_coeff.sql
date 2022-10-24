-- View: public.q_bb_work_up_with_market_coeff

-- DROP VIEW public.q_bb_work_up_with_market_coeff;

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

ALTER TABLE public.q_bb_work_up_with_market_coeff
    OWNER TO ictasadmin;

