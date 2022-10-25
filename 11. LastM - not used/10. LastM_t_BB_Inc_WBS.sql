-- View: public.LastM_t_BB_Inc_WBS

-- DROP VIEW public."LastM_t_BB_Inc_WBS";

CREATE OR REPLACE VIEW public."LastM_t_BB_Inc_WBS"
 AS
 SELECT t_BB_Inc_WBS.rep_Month,
    t_BB_Inc_WBS.P01_Code,
    t_BB_Inc_WBS.c_L1,
    t_BB_Inc_WBS.c_L2,
    t_BB_Inc_WBS.c_L3,
    t_BB_Inc_WBS.c_L4,
    t_BB_Inc_WBS.c_L5,
    t_BB_Inc_WBS.c_L6,
    t_BB_Inc_WBS.Currency,
    t_BB_Inc_WBS.UP,
    t_BB_Inc_WBS.key_r_pc_l6    
   FROM t_BB_Inc_WBS
  WHERE t_BB_Inc_WBS.rep_Month::text = '2207'::text
  ORDER BY t_BB_Inc_WBS.rep_Month, t_BB_Inc_WBS.P01_Code, t_BB_Inc_WBS.c_L1, t_BB_Inc_WBS.c_L2, t_BB_Inc_WBS.c_L3, t_BB_Inc_WBS.c_L4, t_BB_Inc_WBS.c_L5, t_BB_Inc_WBS.c_L6, t_BB_Inc_WBS.Currency;

ALTER TABLE public."LastM_t_BB_Inc_WBS"
    OWNER TO ictasadmin;

