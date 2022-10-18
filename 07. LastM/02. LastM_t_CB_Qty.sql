-- View: public.LastM_t_CB_Qty

-- DROP VIEW public."LastM_t_CB_Qty";

CREATE OR REPLACE VIEW public."LastM_t_CB_Qty"
 AS
 SELECT t_cb_qty.rep_month AS "rep_Month",
    t_cb_qty.pc AS "PC",
    t_cb_qty.l_1 AS "L_1",
    t_cb_qty.l_2 AS "L_2",
    t_cb_qty.l_3 AS "L_3",
    t_cb_qty.l_4 AS "L_4",
    t_cb_qty.l_5 AS "L_5",
    t_cb_qty.l_6 AS "L_6",
    t_cb_qty.exp_cb_mon AS "Exp_CB_Mon",
    t_cb_qty.exp_cb_qty AS "Exp_CB_Qty"
   FROM t_cb_qty
  WHERE t_cb_qty.rep_month::text = '2207'::text
  ORDER BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.l_1, t_cb_qty.l_2, t_cb_qty.l_3, t_cb_qty.l_4, t_cb_qty.l_5, t_cb_qty.l_6, t_cb_qty.exp_cb_mon;

ALTER TABLE public."LastM_t_CB_Qty"
    OWNER TO ictasadmin;

