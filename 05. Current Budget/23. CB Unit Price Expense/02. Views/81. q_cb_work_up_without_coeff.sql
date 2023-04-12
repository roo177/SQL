-- View: public.q_cb_work_up_without_coeff

-- DROP VIEW public.q_cb_work_up_without_coeff;

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

ALTER TABLE public.q_cb_work_up_without_coeff
    OWNER TO ictasadmin;

