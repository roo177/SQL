-- View: public.LastM_t_pl_analysis

-- DROP VIEW public."LastM_t_pl_analysis";

CREATE OR REPLACE VIEW public."LastM_t_PL_Analysis"
 AS
 SELECT t_pl_analysis.rep_month AS "rep_Month",
    t_pl_analysis.p01_code AS "P01_Code",
    t_pl_analysis.L_Comb AS "L_Comb",
    t_pl_analysis.rs_L1 AS "rs_L1",
    t_pl_analysis.rs_L2 AS "rs_L2",
    t_pl_analysis.rs_L3 AS "rs_L3",
    t_pl_analysis.rs_L4 AS "rs_L4",
    t_pl_analysis.An_rs_quantity AS "An_rs_quantity",
    t_pl_analysis.l_1 AS "L_1",
    t_pl_analysis.l_2 AS "L_2",
    t_pl_analysis.l_3 AS "L_3",
    t_pl_analysis.l_4 AS "L_4",
    t_pl_analysis.l_5 AS "L_5",
    t_pl_analysis.l_6 AS "L_6",
    t_pl_analysis.rs_L1 || '.' || t_pl_analysis.rs_l2 || '.' || t_pl_analysis.rs_l3 || '.' || t_pl_analysis.rs_l4 AS "Key_R4_Simple",
    t_pl_analysis.rep_Month  ||  '.'  ||  t_pl_analysis.P01_Code  ||  '.' ||  t_pl_analysis.L_1  ||  '.'  ||  t_pl_analysis.L_2 ||  '.'  ||  t_pl_analysis.L_3  ||  '.'  ||  t_pl_analysis.L_4  ||  '.'  ||  t_pl_analysis.L_5  ||  '.'  ||  t_pl_analysis.L_6 AS "Key_R_PC_L6",
    t_pl_analysis.rep_Month  ||  '.'  ||  t_pl_analysis.P01_Code  ||  '.'  ||  t_pl_analysis.rs_L1  ||  '.'  ||  t_pl_analysis.rs_L2  ||  '.'  ||  t_pl_analysis.rs_L3  ||  '.'  ||  t_pl_analysis.rs_L4 AS "Key_R4",
    t_pl_analysis.rep_Month  || '.' ||  t_pl_analysis.P01_Code  ||  '.'  ||  t_pl_analysis.L_1  || '.' || t_pl_analysis.L_2 || '.' || t_pl_analysis.L_3 || '.' || t_pl_analysis.L_4 || '.' || t_pl_analysis.L_5 || '.' || t_pl_analysis.L_6 || '.' || t_pl_analysis.rs_L1 || '.' || t_pl_analysis.rs_L2 || '.' || t_pl_analysis.rs_L3 || '.' || t_pl_analysis.rs_L4 AS "Key_Full",
    t_pl_analysis.r_loss AS "r_loss"
  FROM t_pl_analysis
  WHERE t_pl_analysis.rep_month::text = '2207'::text
  ORDER BY t_pl_analysis.rep_month;
  
ALTER TABLE public."LastM_t_PL_Analysis"
    OWNER TO ictasadmin;
