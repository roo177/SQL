-- View: public.LastM_t_pl_res_up

-- DROP VIEW public."LastM_t_pl_res_up";

CREATE OR REPLACE VIEW public."LastM_t_PL_Res_Up"
 AS

Select 
    rep_month AS "rep_Month",
    up_pr_code,
    up_rs_l1,
    up_rs_l2,
    up_rs_l3,
    up_rs_l4,
    up_cost AS "up_Cost",
    key_r4 AS "Key_R4",
    key_r4_simple as "Key_R4_Simple"
  FROM t_pl_res_up
  WHERE t_pl_res_up.rep_month::text = '2207'::text
  ORDER BY t_pl_res_up.rep_month;
  
ALTER TABLE public."LastM_t_PL_Res_Up"
    OWNER TO ictasadmin;