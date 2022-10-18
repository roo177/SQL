-- View: public.LastM_t_BB_Qty

-- DROP VIEW public.LastM_t_BB_Qty;

CREATE OR REPLACE VIEW public."LastM_t_BB_Qty"
 AS
 SELECT t_BB_Qty.rep_Month,
    t_BB_Qty.PC,
    t_BB_Qty.L_1,
    t_BB_Qty.L_2,
    t_BB_Qty.L_3,
    t_BB_Qty.L_4,
    t_BB_Qty.L_5,
    t_BB_Qty.L_6,
    t_BB_Qty.Exp_Base_Mon,
    t_BB_Qty.Exp_Base_Qty
   FROM t_BB_Qty
  WHERE t_BB_Qty.rep_Month::text = '2207'::text
  ORDER BY t_BB_Qty.rep_Month, t_BB_Qty.PC, t_BB_Qty.L_1, t_BB_Qty.L_2, t_BB_Qty.L_3, t_BB_Qty.L_4, t_BB_Qty.L_5, t_BB_Qty.L_6, t_BB_Qty.Exp_Base_Mon;

ALTER TABLE public."LastM_t_BB_Qty"
    OWNER TO ictasadmin;

