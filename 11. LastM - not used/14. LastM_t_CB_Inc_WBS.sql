-- View: public.LastM_t_CB_Inc_WBS

-- DROP VIEW public."LastM_t_CB_Inc_WBS";

CREATE OR REPLACE VIEW public."LastM_t_CB_Inc_WBS"
 AS
 SELECT t_cb_inc_wbs.rep_month AS "rep_Month",
    t_cb_inc_wbs.p01_code AS "P01_Code",
    t_cb_inc_wbs.c_l1 AS "c_L1",
    t_cb_inc_wbs.c_l2 AS "c_L2",
    t_cb_inc_wbs.c_l3 AS "c_L3",
    t_cb_inc_wbs.c_l4 AS "c_L4",
    t_cb_inc_wbs.c_l5 AS "c_L5",
    t_cb_inc_wbs.c_l6 AS "c_L6",
    t_cb_inc_wbs.currency AS "Currency",
    t_cb_inc_wbs.up AS "UP",
    key_r_pc_l6 AS "Key_R_PC_L6"
   FROM t_cb_inc_wbs
  WHERE t_cb_inc_wbs.rep_month::text = '2207'::text
  ORDER BY t_cb_inc_wbs.rep_month, t_cb_inc_wbs.p01_code, t_cb_inc_wbs.c_l1, t_cb_inc_wbs.c_l2, t_cb_inc_wbs.c_l3, t_cb_inc_wbs.c_l4, t_cb_inc_wbs.c_l5, t_cb_inc_wbs.c_l6, t_cb_inc_wbs.currency;

ALTER TABLE public."LastM_t_CB_Inc_WBS"
    OWNER TO ictasadmin;

