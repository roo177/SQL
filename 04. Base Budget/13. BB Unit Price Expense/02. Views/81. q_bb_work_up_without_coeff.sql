-- View: public.q_bb_work_up_without_coeff

-- DROP VIEW public.q_bb_work_up_without_coeff;

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

ALTER TABLE public.q_bb_work_up_without_coeff
    OWNER TO ictasadmin;

