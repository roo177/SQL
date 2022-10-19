-- View: public.LastM_t_CB_Inc_Qty

-- DROP VIEW public."LastM_t_CB_Inc_Qty";

CREATE OR REPLACE VIEW public."LastM_t_CB_Inc_Qty"
 AS
 SELECT t_cb_inc_qty.rep_month AS "rep_Month",
    t_cb_inc_qty.pc AS "PC",
    t_cb_inc_qty.l_1 AS "L_1",
    t_cb_inc_qty.l_2 AS "L_2",
    t_cb_inc_qty.l_3 AS "L_3",
    t_cb_inc_qty.l_4 AS "L_4",
    t_cb_inc_qty.l_5 AS "L_5",
    t_cb_inc_qty.l_6 AS "L_6",
    t_cb_inc_qty.inc_base_mon AS "Inc_Base_Mon",
    t_cb_inc_qty.inc_base_qty AS "Inc_Base_Qty",
    key_r_pc_l6 AS "Key_R_PC_L6"
   FROM t_cb_inc_qty
  WHERE t_cb_inc_qty.rep_month::text = '2207'::text
  ORDER BY t_cb_inc_qty.rep_month, t_cb_inc_qty.pc, t_cb_inc_qty.l_1, t_cb_inc_qty.l_2, t_cb_inc_qty.l_3, t_cb_inc_qty.l_4, t_cb_inc_qty.l_5, t_cb_inc_qty.l_6, t_cb_inc_qty.inc_base_mon;

ALTER TABLE public."LastM_t_CB_Inc_Qty"
    OWNER TO ictasadmin;

