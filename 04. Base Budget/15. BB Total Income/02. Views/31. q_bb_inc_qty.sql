-- View: public.q_bb_inc_qty

-- DROP VIEW public.q_bb_inc_qty;

CREATE OR REPLACE VIEW public.q_bb_inc_qty
 AS
 SELECT t_bb_inc_qty.rep_month,
    t_bb_inc_qty.pc,
    t_bb_inc_qty.l_1,
    t_bb_inc_qty.l_2,
    t_bb_inc_qty.l_3,
    t_bb_inc_qty.l_4,
    t_bb_inc_qty.l_5,
    t_bb_inc_qty.l_6,
    t_bb_inc_qty.inc_base_mon,
    t_bb_inc_qty.inc_base_qty,
    t_bb_inc_qty.key_r_pc_l6
   FROM t_bb_inc_qty;

ALTER TABLE public.q_bb_inc_qty
    OWNER TO ictasadmin;

