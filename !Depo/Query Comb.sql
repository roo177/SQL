CREATE OR REPLACE VIEW 
q_ac_bb_exp_crosstab AS -- not ok
transform sum(t_ac_bb_exp.exp_ac_exp) AS sumofexp_ac_exp
SELECT t_ac_bb_exp.rep_month, t_ac_bb_exp.pc, t_ac_bb_exp.l_1, t_ac_bb_exp.l_2, t_ac_bb_exp.l_3, t_ac_bb_exp.l_4, t_ac_bb_exp.l_5, t_ac_bb_exp.l_6, t_ac_bb_exp.up_curr
FROM t_ac_bb_exp
GROUP BY t_ac_bb_exp.rep_month, t_ac_bb_exp.pc, t_ac_bb_exp.l_1, t_ac_bb_exp.l_2, t_ac_bb_exp.l_3, t_ac_bb_exp.l_4, t_ac_bb_exp.l_5, t_ac_bb_exp.l_6, t_ac_bb_exp.up_curr
PIVOT t_ac_bb_exp.exp_ac_mon;

CREATE OR REPLACE VIEW -- ok
q_ac_bb_exp_lastm AS
SELECT max(t_ac_bb_exp.exp_ac_mon) AS lastm, t_ac_bb_exp.pc, t_ac_bb_exp.l_1, t_ac_bb_exp.l_2, t_ac_bb_exp.l_3, t_ac_bb_exp.l_4, t_ac_bb_exp.l_5, t_ac_bb_exp.l_6, t_ac_bb_exp.rep_month
FROM t_ac_bb_exp
GROUP BY t_ac_bb_exp.pc, t_ac_bb_exp.l_1, t_ac_bb_exp.l_2, t_ac_bb_exp.l_3, t_ac_bb_exp.l_4, t_ac_bb_exp.l_5, t_ac_bb_exp.l_6, t_ac_bb_exp.rep_month;

CREATE OR REPLACE VIEW  -- not ok
q_ac_exp_crosstab AS
transform sum(t_ac_exp.exp_ac_exp) AS sumofexp_ac_exp
SELECT t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6, t_ac_exp.up_curr
FROM t_ac_exp
GROUP BY t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6, t_ac_exp.up_curr
PIVOT t_ac_exp.exp_ac_mon;

CREATE OR REPLACE VIEW -- not ok
q_ac_indexes_delete_mod AS
DELETE t_ac_indexes_mod.rep_month, t_ac_indexes_mod.g_month, t_ac_indexes_mod.bb_metal, t_ac_indexes_mod.bb_electricity, t_ac_indexes_mod.bb_cement, t_ac_indexes_mod.bb_petrol, t_ac_indexes_mod.bb_inf_usd, t_ac_indexes_mod.bb_inf_eur, t_ac_indexes_mod.bb_ufe, t_ac_indexes_mod.bb_tufe
FROM t_ac_indexes_mod;

CREATE OR REPLACE VIEW -- not ok
q_ac_indexes_graph AS
SELECT t_cb_indexes.bb_metal, t_ac_indexes_mod.bb_metal, t_cb_indexes.bb_electricity, t_ac_indexes_mod.bb_electricity, t_cb_indexes.bb_cement, t_ac_indexes_mod.bb_cement, t_cb_indexes.bb_petrol, t_ac_indexes_mod.bb_petrol, t_cb_indexes.bb_inf_usd, t_ac_indexes_mod.bb_inf_usd, t_cb_indexes.bb_inf_eur, t_ac_indexes_mod.bb_inf_eur, t_cb_indexes.bb_ufe, t_ac_indexes_mod.bb_ufe, t_cb_indexes.bb_tufe, t_ac_indexes_mod.bb_tufe, t_cb_indexes.g_month
FROM t_cb_indexes right join t_ac_indexes_mod ON (t_cb_indexes.rep_month = t_ac_indexes_mod.rep_month) AND (t_cb_indexes.g_month = t_ac_indexes_mod.g_month)
WHERE (((t_cb_indexes.g_month)>#1/1/2022#) AND ((t_ac_indexes_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW 
q_ac_indexes_mod_ap AS -- not ok
insert into t_ac_indexes_mod ( rep_month, g_month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe )
SELECT t_cb_indexes.rep_month, t_cb_indexes.g_month, t_cb_indexes.bb_metal, t_cb_indexes.bb_electricity, t_cb_indexes.bb_cement, t_cb_indexes.bb_petrol, t_cb_indexes.bb_inf_usd, t_cb_indexes.bb_inf_eur, t_cb_indexes.bb_ufe, t_cb_indexes.bb_tufe
FROM t_cb_indexes
WHERE (((t_cb_indexes.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW 
q_ac_indexes_reset AS -- not ok
UPDATE t_ac_indexes_mod LEFT JOIN t_cb_indexes ON (t_ac_indexes_mod.rep_month = t_cb_indexes.rep_month) AND (t_ac_indexes_mod.g_month = t_cb_indexes.g_month) SET t_ac_indexes_mod.g_month = t_cb_indexes.g_month, t_ac_indexes_mod.bb_metal = t_cb_indexes.bb_metal, t_ac_indexes_mod.bb_electricity = t_cb_indexes.bb_electricity, t_ac_indexes_mod.bb_cement = t_cb_indexes.bb_cement, t_ac_indexes_mod.bb_petrol = t_cb_indexes.bb_petrol, t_ac_indexes_mod.bb_inf_usd = t_cb_indexes.bb_inf_usd, t_ac_indexes_mod.bb_inf_eur = t_cb_indexes.bb_inf_eur, t_ac_indexes_mod.bb_ufe = t_cb_indexes.bb_ufe, t_ac_indexes_mod.bb_tufe = t_cb_indexes.bb_tufe, t_ac_indexes_mod.rep_month = t_cb_indexes.rep_month
WHERE (((t_ac_indexes_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW --ok
q_active_rep_month AS
SELECT max(t_rep_month.rep_month) AS active_rep_month
FROM t_rep_month;

CREATE OR REPLACE VIEW --ok
q_bb_active_months_res_qty AS
SELECT t_bb_analysis.rep_month, t_bb_analysis.p01_code AS pc, q_bb_qty_activem_works.exp_base_mon, t_bb_analysis.an_rs_quantity, t_bb_analysis.key_r4, q_bb_qty_activem_works.key_r_pc_l6, t_bb_analysis.key_full, t_bb_analysis.l_1, t_bb_analysis.l_2, t_bb_analysis.l_3, t_bb_analysis.rs_l1, t_bb_analysis.rs_l2, t_bb_analysis.rs_l3, t_bb_analysis.rs_l4, t_bb_analysis.l_4, t_bb_analysis.l_5, t_bb_analysis.l_6, t_bb_analysis.key_r4_simple
FROM q_bb_qty_activem_works LEFT JOIN t_bb_analysis ON q_bb_qty_activem_works.key_r_pc_l6 = t_bb_analysis.key_r_pc_l6;

CREATE OR REPLACE VIEW --ok
q_bb_analysis_activem_with_prices AS
SELECT q_bb_active_months_res_qty.rep_month, q_bb_active_months_res_qty.pc, q_bb_active_months_res_qty.exp_base_mon, q_bb_active_months_res_qty.an_rs_quantity, q_bb_active_months_res_qty.key_r4, q_bb_active_months_res_qty.key_r_pc_l6, q_bb_active_months_res_qty.key_full, t_pl_res_up.up_cost, q_bb_active_months_res_qty.l_1, q_bb_active_months_res_qty.l_2, q_bb_active_months_res_qty.l_3, q_bb_active_months_res_qty.l_4, q_bb_active_months_res_qty.l_5, q_bb_active_months_res_qty.l_6, q_bb_active_months_res_qty.rs_l1, q_bb_active_months_res_qty.rs_l2, q_bb_active_months_res_qty.rs_l3, q_bb_active_months_res_qty.rs_l4, r4_code.currency, q_bb_active_months_res_qty.key_r4_simple
FROM (q_bb_active_months_res_qty LEFT JOIN t_pl_res_up ON q_bb_active_months_res_qty.key_r4 = t_pl_res_up.key_r4) LEFT JOIN r4_code ON q_bb_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple;

CREATE OR REPLACE VIEW --ok
q_bb_curr_base_month AS
SELECT q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month
FROM t_rep_month right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

CREATE OR REPLACE VIEW --ok
q_bb_curr_base_val AS
SELECT q_bb_curr_base_month.rep_month, q_bb_curr_base_month.rep_month_date, t_bb_mon_curr_rates.r_eur_eur, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_try_eur, t_bb_mon_curr_rates.r_try_try, t_bb_mon_curr_rates.r_try_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, t_bb_mon_curr_rates.r_usd_usd, q_bb_curr_base_month.pc
FROM q_bb_curr_base_month LEFT JOIN t_bb_mon_curr_rates ON (q_bb_curr_base_month.pc = t_bb_mon_curr_rates.p_code) AND (q_bb_curr_base_month.rep_month_date = t_bb_mon_curr_rates.month) AND (q_bb_curr_base_month.rep_month = t_bb_mon_curr_rates.rep_month)
GROUP BY q_bb_curr_base_month.rep_month, q_bb_curr_base_month.rep_month_date, t_bb_mon_curr_rates.r_eur_eur, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_try_eur, t_bb_mon_curr_rates.r_try_try, t_bb_mon_curr_rates.r_try_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, t_bb_mon_curr_rates.r_usd_usd, q_bb_curr_base_month.pc;

CREATE OR REPLACE VIEW -- ok
q_bb_curr_escalation_rates AS
 SELECT q_bb_active_months_res_qty.rep_month,
    q_bb_active_months_res_qty.pc,
    q_bb_active_months_res_qty.l_1,
    q_bb_active_months_res_qty.l_2,
    q_bb_active_months_res_qty.l_3,
    q_bb_active_months_res_qty.l_4,
    q_bb_active_months_res_qty.l_5,
    q_bb_active_months_res_qty.l_6,
    q_bb_active_months_res_qty.exp_base_mon AS month,
    q_bb_active_months_res_qty.rs_l1,
    q_bb_active_months_res_qty.rs_l2,
    q_bb_active_months_res_qty.rs_l3,
    q_bb_active_months_res_qty.rs_l4,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_usd_try * r4_code.w_inf_usd, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'EUR'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_usd_eur * r4_code.w_inf_usd, 6)
                ELSE 1::numeric
            END
        END AS k_usd,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_eur_try * r4_code.w_inf_eur, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'USD'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_eur_usd * r4_code.w_inf_eur, 6)
                ELSE 1::numeric
            END
        END AS k_eur,
    r4_code.w_inf_usd,
    r4_code.w_inf_eur,
    r4_code.currency AS rs_currency,
    q_bb_active_months_res_qty.key_r4_simple,
    q_bb_active_months_res_qty.key_full,
    q_bb_active_months_res_qty.key_r_pc_l6,
    q_bb_active_months_res_qty.key_r4,
    (((q_bb_active_months_res_qty.key_full::text || '.'::text) || r4_code.currency::text) || '.'::text) || q_bb_active_months_res_qty.exp_base_mon::DATE AS key_full_comb
   FROM q_bb_active_months_res_qty
     LEFT JOIN q_bb_monthly_curr_rates_inc ON q_bb_active_months_res_qty.exp_base_mon = q_bb_monthly_curr_rates_inc.exp_base_mon AND q_bb_active_months_res_qty.pc::text = q_bb_monthly_curr_rates_inc.pc::text AND q_bb_active_months_res_qty.rep_month::text = q_bb_monthly_curr_rates_inc.rep_month::text
     LEFT JOIN r4_code ON q_bb_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text;

CREATE OR REPLACE VIEW -- ok
q_bb_exp AS
SELECT t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.g_month AS exp_base_mon, sum((exp_base_qty*unit_price_planned_coeff)) AS total_expense, q_bb_unit_price.up_curr, q_bb_unit_price.key_r_pc_l6
FROM t_bb_qty right join q_bb_unit_price ON (t_bb_qty.pc = q_bb_unit_price.p01_code) AND (t_bb_qty.l_1 = q_bb_unit_price.l_1) AND (t_bb_qty.l_2 = q_bb_unit_price.l_2) AND (t_bb_qty.l_3 = q_bb_unit_price.l_3) AND (t_bb_qty.l_4 = q_bb_unit_price.l_4) AND (t_bb_qty.l_5 = q_bb_unit_price.l_5) AND (t_bb_qty.l_6 = q_bb_unit_price.l_6) AND (t_bb_qty.exp_base_mon = q_bb_unit_price.g_month) AND (t_bb_qty.rep_month = q_bb_unit_price.rep_month)
GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.g_month, q_bb_unit_price.up_curr, q_bb_unit_price.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_dist_eur_with_dummy AS
transform sum(q_bb_exp_eur_with_dummy.eur_expense) AS eur_expense
SELECT q_bb_exp_eur_with_dummy.rep_month, q_bb_exp_eur_with_dummy.pc, q_bb_exp_eur_with_dummy.l_1, q_bb_exp_eur_with_dummy.l_2, q_bb_exp_eur_with_dummy.l_3, q_bb_exp_eur_with_dummy.l_4, q_bb_exp_eur_with_dummy.l_5, q_bb_exp_eur_with_dummy.l_6, q_bb_exp_eur_with_dummy.up_curr_conv
FROM q_bb_exp_eur_with_dummy
GROUP BY q_bb_exp_eur_with_dummy.rep_month, q_bb_exp_eur_with_dummy.pc, q_bb_exp_eur_with_dummy.l_1, q_bb_exp_eur_with_dummy.l_2, q_bb_exp_eur_with_dummy.l_3, q_bb_exp_eur_with_dummy.l_4, q_bb_exp_eur_with_dummy.l_5, q_bb_exp_eur_with_dummy.l_6, q_bb_exp_eur_with_dummy.up_curr_conv
PIVOT q_bb_exp_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_dist_try_with_dummy AS
transform sum(q_bb_exp_try_with_dummy.try_expense) AS sumoftry_expense
SELECT q_bb_exp_try_with_dummy.rep_month, q_bb_exp_try_with_dummy.pc, q_bb_exp_try_with_dummy.l_1, q_bb_exp_try_with_dummy.l_2, q_bb_exp_try_with_dummy.l_3, q_bb_exp_try_with_dummy.l_4, q_bb_exp_try_with_dummy.l_5, q_bb_exp_try_with_dummy.l_6, q_bb_exp_try_with_dummy.up_curr_conv
FROM q_bb_exp_try_with_dummy
GROUP BY q_bb_exp_try_with_dummy.rep_month, q_bb_exp_try_with_dummy.pc, q_bb_exp_try_with_dummy.l_1, q_bb_exp_try_with_dummy.l_2, q_bb_exp_try_with_dummy.l_3, q_bb_exp_try_with_dummy.l_4, q_bb_exp_try_with_dummy.l_5, q_bb_exp_try_with_dummy.l_6, q_bb_exp_try_with_dummy.up_curr_conv
PIVOT q_bb_exp_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_dist_usd_with_dummy AS
transform sum(q_bb_exp_usd_with_dummy.usd_expense) AS sumofusd_expense
SELECT q_bb_exp_usd_with_dummy.rep_month, q_bb_exp_usd_with_dummy.pc, q_bb_exp_usd_with_dummy.l_1, q_bb_exp_usd_with_dummy.l_2, q_bb_exp_usd_with_dummy.l_3, q_bb_exp_usd_with_dummy.l_4, q_bb_exp_usd_with_dummy.l_5, q_bb_exp_usd_with_dummy.l_6, q_bb_exp_usd_with_dummy.up_curr_conv
FROM q_bb_exp_usd_with_dummy
GROUP BY q_bb_exp_usd_with_dummy.rep_month, q_bb_exp_usd_with_dummy.pc, q_bb_exp_usd_with_dummy.l_1, q_bb_exp_usd_with_dummy.l_2, q_bb_exp_usd_with_dummy.l_3, q_bb_exp_usd_with_dummy.l_4, q_bb_exp_usd_with_dummy.l_5, q_bb_exp_usd_with_dummy.l_6, q_bb_exp_usd_with_dummy.up_curr_conv
PIVOT q_bb_exp_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_dist_with_dummy AS
transform sum(q_bb_exp_with_dummy.total_expense) AS sumoftotal_expense
SELECT q_bb_exp_with_dummy.rep_month, q_bb_exp_with_dummy.pc, q_bb_exp_with_dummy.l_1, q_bb_exp_with_dummy.l_2, q_bb_exp_with_dummy.l_3, q_bb_exp_with_dummy.l_4, q_bb_exp_with_dummy.l_5, q_bb_exp_with_dummy.l_6, q_bb_exp_with_dummy.up_curr, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")) AS exc_try, iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_bb_exp_with_dummy
GROUP BY q_bb_exp_with_dummy.rep_month, q_bb_exp_with_dummy.pc, q_bb_exp_with_dummy.l_1, q_bb_exp_with_dummy.l_2, q_bb_exp_with_dummy.l_3, q_bb_exp_with_dummy.l_4, q_bb_exp_with_dummy.l_5, q_bb_exp_with_dummy.l_6, q_bb_exp_with_dummy.up_curr, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")), iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")), iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur"))
PIVOT q_bb_exp_with_dummy.exp_base_mon;

CREATE OR REPLACE VIEW --ok
q_bb_exp_eur AS
SELECT t_bb_exp_total_st.rep_month, t_bb_exp_total_st.pc, t_bb_exp_total_st.l_1, t_bb_exp_total_st.l_2, t_bb_exp_total_st.l_3, t_bb_exp_total_st.l_4, t_bb_exp_total_st.l_5, t_bb_exp_total_st.l_6, t_bb_exp_total_st.total_expense, t_bb_exp_total_st.up_curr, 
CASE WHEN
up_curr='eur' THEN total_expense ELSE 
CASE WHEN up_curr='usd'THEN total_expense*r_usd_eur ELSE total_expense*r_try_eur END END AS eur_expense, 
'eur' AS up_curr_conv, 
t_bb_exp_total_st.month AS month, 
t_bb_exp_total_st.key_r_pc_l6
FROM t_bb_exp_total_st LEFT JOIN t_bb_mon_curr_rates ON (t_bb_exp_total_st.month = t_bb_mon_curr_rates.month) AND (t_bb_exp_total_st.pc = t_bb_mon_curr_rates.p_code) AND (t_bb_exp_total_st.rep_month = t_bb_mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok 
q_bb_exp_eur_mt AS
SELECT q_bb_exp_eur.rep_month, q_bb_exp_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_eur.month, q_bb_exp_eur.l_1, q_bb_exp_eur.l_2, q_bb_exp_eur.l_3, q_bb_exp_eur.l_4, q_bb_exp_eur.l_5, q_bb_exp_eur.l_6, q_bb_exp_eur.eur_expense, q_bb_exp_eur.up_curr_conv, q_bb_exp_eur.key_r_pc_l6 into t_bb_exp_eur_st
FROM q_bb_exp_eur LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_bb_exp_eur.l_1 = c3_code.c_l1) AND (q_bb_exp_eur.l_2 = c3_code.c_l2) AND (q_bb_exp_eur.l_3 = c3_code.c_l3)
GROUP BY q_bb_exp_eur.rep_month, q_bb_exp_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_eur.month, q_bb_exp_eur.l_1, q_bb_exp_eur.l_2, q_bb_exp_eur.l_3, q_bb_exp_eur.l_4, q_bb_exp_eur.l_5, q_bb_exp_eur.l_6, q_bb_exp_eur.eur_expense, q_bb_exp_eur.up_curr_conv, q_bb_exp_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_bb_exp_eur

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW 
q_bb_exp_total AS
SELECT 
*
FROM 
q_bb_exp
		
UNION ALL SELECT 
*
FROM 
t_ac_bb_exp;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_total_mt AS
SELECT q_bb_exp_total.rep_month, q_bb_exp_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_total.exp_base_mon AS month, q_bb_exp_total.total_expense, q_bb_exp_total.up_curr, q_bb_exp_total.l_1, q_bb_exp_total.l_2, q_bb_exp_total.l_3, q_bb_exp_total.l_4, q_bb_exp_total.l_5, q_bb_exp_total.l_6, q_bb_exp_total.key_r_pc_l6 into t_bb_exp_total_st
FROM q_bb_exp_total LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_bb_exp_total.l_1 = c3_code.c_l1) AND (q_bb_exp_total.l_2 = c3_code.c_l2) AND (q_bb_exp_total.l_3 = c3_code.c_l3)
GROUP BY q_bb_exp_total.rep_month, q_bb_exp_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_total.exp_base_mon, q_bb_exp_total.total_expense, q_bb_exp_total.up_curr, q_bb_exp_total.l_1, q_bb_exp_total.l_2, q_bb_exp_total.l_3, q_bb_exp_total.l_4, q_bb_exp_total.l_5, q_bb_exp_total.l_6, q_bb_exp_total.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_bb_exp_try AS
SELECT t_bb_exp_total_st.rep_month, t_bb_exp_total_st.pc, t_bb_exp_total_st.l_1, t_bb_exp_total_st.l_2, t_bb_exp_total_st.l_3, t_bb_exp_total_st.l_4, t_bb_exp_total_st.l_5, t_bb_exp_total_st.l_6, t_bb_exp_total_st.total_expense, t_bb_exp_total_st.up_curr, 
CASE WHEN up_curr='try' THEN total_expense ELSE CASE WHEN up_curr='usd' THEN total_expense*r_usd_try ELSE total_expense*r_eur_try END END AS try_expense, 'try' AS up_curr_conv, t_bb_exp_total_st.month AS month, t_bb_exp_total_st.key_r_pc_l6
FROM t_bb_exp_total_st LEFT JOIN t_bb_mon_curr_rates ON (t_bb_exp_total_st.month = t_bb_mon_curr_rates.month) AND (t_bb_exp_total_st.pc = t_bb_mon_curr_rates.p_code) AND (t_bb_exp_total_st.rep_month = t_bb_mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_try_mt AS
SELECT q_bb_exp_try.rep_month, q_bb_exp_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_try.month, q_bb_exp_try.l_1, q_bb_exp_try.l_2, q_bb_exp_try.l_3, q_bb_exp_try.l_4, q_bb_exp_try.l_5, q_bb_exp_try.l_6, q_bb_exp_try.try_expense, q_bb_exp_try.up_curr_conv, q_bb_exp_try.key_r_pc_l6 into t_bb_exp_try_st
FROM q_bb_exp_try LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_bb_exp_try.l_3 = c3_code.c_l3) AND (q_bb_exp_try.l_2 = c3_code.c_l2) AND (q_bb_exp_try.l_1 = c3_code.c_l1)
GROUP BY q_bb_exp_try.rep_month, q_bb_exp_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_try.month, q_bb_exp_try.l_1, q_bb_exp_try.l_2, q_bb_exp_try.l_3, q_bb_exp_try.l_4, q_bb_exp_try.l_5, q_bb_exp_try.l_6, q_bb_exp_try.try_expense, q_bb_exp_try.up_curr_conv, q_bb_exp_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_bb_exp_try

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_bb_exp_usd AS
SELECT t_bb_exp_total_st.rep_month, t_bb_exp_total_st.pc, t_bb_exp_total_st.l_1, t_bb_exp_total_st.l_2, t_bb_exp_total_st.l_3, t_bb_exp_total_st.l_4, t_bb_exp_total_st.l_5, t_bb_exp_total_st.l_6, t_bb_exp_total_st.total_expense, t_bb_exp_total_st.up_curr, 
CASE WHEN up_curr='usd'THEN total_expense ELSE CASE WHEN up_curr='try' THEN total_expense*r_try_usd ELSE total_expense*r_eur_usd END END AS usd_expense, 'usd' AS up_curr_conv, t_bb_exp_total_st.month AS month, t_bb_exp_total_st.key_r_pc_l6
FROM t_bb_exp_total_st LEFT JOIN t_bb_mon_curr_rates ON (t_bb_exp_total_st.month = t_bb_mon_curr_rates.month) AND (t_bb_exp_total_st.pc = t_bb_mon_curr_rates.p_code) AND (t_bb_exp_total_st.rep_month = t_bb_mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_usd_mt AS
SELECT q_bb_exp_usd.rep_month, q_bb_exp_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_usd.month, q_bb_exp_usd.l_1, q_bb_exp_usd.l_2, q_bb_exp_usd.l_3, q_bb_exp_usd.l_4, q_bb_exp_usd.l_5, q_bb_exp_usd.l_6, q_bb_exp_usd.usd_expense, q_bb_exp_usd.up_curr_conv, q_bb_exp_usd.key_r_pc_l6 into t_bb_exp_usd_st
FROM q_bb_exp_usd LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_bb_exp_usd.l_3 = c3_code.c_l3) AND (q_bb_exp_usd.l_2 = c3_code.c_l2) AND (q_bb_exp_usd.l_1 = c3_code.c_l1)
GROUP BY q_bb_exp_usd.rep_month, q_bb_exp_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_exp_usd.month, q_bb_exp_usd.l_1, q_bb_exp_usd.l_2, q_bb_exp_usd.l_3, q_bb_exp_usd.l_4, q_bb_exp_usd.l_5, q_bb_exp_usd.l_6, q_bb_exp_usd.usd_expense, q_bb_exp_usd.up_curr_conv, q_bb_exp_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_bb_exp_usd

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_bb_exp_with_dummy AS
SELECT 
*
FROM 
q_bb_exp_total

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW  -- ok
q_bb_inc_calculation AS
SELECT t_bb_inc_qty.rep_month, t_bb_inc_qty.pc, t_bb_inc_qty.l_1, t_bb_inc_qty.l_2, t_bb_inc_qty.l_3, t_bb_inc_qty.l_4, t_bb_inc_qty.l_5, t_bb_inc_qty.l_6, t_bb_inc_qty.inc_base_mon, 
t_bb_inc_wbs.up, 
t_bb_inc_wbs.currency, 
t_bb_inc_qty.inc_base_qty, 
up * inc_rate_1 * inc_rate_2 AS up_total,
up * inc_rate_1 * inc_rate_2 * inc_base_qty AS inc_total, 
t_bb_inc_qty.key_r_pc_l6
FROM ((t_bb_inc_qty LEFT JOIN t_bb_inc_esc_rates_l6 ON (t_bb_inc_qty.rep_month = t_bb_inc_esc_rates_l6.rep_month) AND (t_bb_inc_qty.pc = t_bb_inc_esc_rates_l6.p01_code) AND (t_bb_inc_qty.l_1 = t_bb_inc_esc_rates_l6.c_l1) AND (t_bb_inc_qty.l_2 = t_bb_inc_esc_rates_l6.c_l2) AND (t_bb_inc_qty.l_3 = t_bb_inc_esc_rates_l6.c_l3) AND (t_bb_inc_qty.l_4 = t_bb_inc_esc_rates_l6.c_l4) AND (t_bb_inc_qty.l_5 = t_bb_inc_esc_rates_l6.c_l5) AND (t_bb_inc_qty.l_6 = t_bb_inc_esc_rates_l6.c_l6) AND (t_bb_inc_qty.inc_base_mon = t_bb_inc_esc_rates_l6.month)) LEFT JOIN t_bb_inc_esc_rates_pcode ON (t_bb_inc_qty.rep_month = t_bb_inc_esc_rates_pcode.rep_month) AND (t_bb_inc_qty.pc = t_bb_inc_esc_rates_pcode.p01_code) AND (t_bb_inc_qty.inc_base_mon = t_bb_inc_esc_rates_pcode.month)) LEFT JOIN t_bb_inc_wbs ON t_bb_inc_qty.key_r_pc_l6 = t_bb_inc_wbs.key_r_pc_l6,
LATERAL (SELECT 
CASE WHEN (t_bb_inc_esc_rates_l6.inc_rate is null) THEN 1 ELSE (1+t_bb_inc_esc_rates_l6.inc_rate) END, 
CASE WHEN (t_bb_inc_esc_rates_pcode.inc_rate_pcode is null) THEN 1 ELSE (1+t_bb_inc_esc_rates_pcode.inc_rate_pcode) END)
AS s1(inc_rate_1,inc_rate_2);

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_dist_eur_with_dummy AS
transform sum(q_bb_inc_eur_with_dummy.eur_income) AS eur_income
SELECT q_bb_inc_eur_with_dummy.rep_month, q_bb_inc_eur_with_dummy.pc, q_bb_inc_eur_with_dummy.l_1, q_bb_inc_eur_with_dummy.l_2, q_bb_inc_eur_with_dummy.l_3, q_bb_inc_eur_with_dummy.l_4, q_bb_inc_eur_with_dummy.l_5, q_bb_inc_eur_with_dummy.l_6, q_bb_inc_eur_with_dummy.up_curr_conv
FROM q_bb_inc_eur_with_dummy
GROUP BY q_bb_inc_eur_with_dummy.rep_month, q_bb_inc_eur_with_dummy.pc, q_bb_inc_eur_with_dummy.l_1, q_bb_inc_eur_with_dummy.l_2, q_bb_inc_eur_with_dummy.l_3, q_bb_inc_eur_with_dummy.l_4, q_bb_inc_eur_with_dummy.l_5, q_bb_inc_eur_with_dummy.l_6, q_bb_inc_eur_with_dummy.up_curr_conv
PIVOT q_bb_inc_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_dist_try_with_dummy AS 
transform sum(q_bb_inc_try_with_dummy.try_income) AS try_income
SELECT q_bb_inc_try_with_dummy.rep_month, q_bb_inc_try_with_dummy.pc, q_bb_inc_try_with_dummy.l_1, q_bb_inc_try_with_dummy.l_2, q_bb_inc_try_with_dummy.l_3, q_bb_inc_try_with_dummy.l_4, q_bb_inc_try_with_dummy.l_5, q_bb_inc_try_with_dummy.l_6, q_bb_inc_try_with_dummy.up_curr_conv
FROM q_bb_inc_try_with_dummy
GROUP BY q_bb_inc_try_with_dummy.rep_month, q_bb_inc_try_with_dummy.pc, q_bb_inc_try_with_dummy.l_1, q_bb_inc_try_with_dummy.l_2, q_bb_inc_try_with_dummy.l_3, q_bb_inc_try_with_dummy.l_4, q_bb_inc_try_with_dummy.l_5, q_bb_inc_try_with_dummy.l_6, q_bb_inc_try_with_dummy.up_curr_conv
PIVOT q_bb_inc_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_dist_usd_with_dummy AS
transform sum(q_bb_inc_usd_with_dummy.usd_income) AS usd_income
SELECT q_bb_inc_usd_with_dummy.rep_month, q_bb_inc_usd_with_dummy.pc, q_bb_inc_usd_with_dummy.l_1, q_bb_inc_usd_with_dummy.l_2, q_bb_inc_usd_with_dummy.l_3, q_bb_inc_usd_with_dummy.l_4, q_bb_inc_usd_with_dummy.l_5, q_bb_inc_usd_with_dummy.l_6, q_bb_inc_usd_with_dummy.up_curr_conv
FROM q_bb_inc_usd_with_dummy
GROUP BY q_bb_inc_usd_with_dummy.rep_month, q_bb_inc_usd_with_dummy.pc, q_bb_inc_usd_with_dummy.l_1, q_bb_inc_usd_with_dummy.l_2, q_bb_inc_usd_with_dummy.l_3, q_bb_inc_usd_with_dummy.l_4, q_bb_inc_usd_with_dummy.l_5, q_bb_inc_usd_with_dummy.l_6, q_bb_inc_usd_with_dummy.up_curr_conv
PIVOT q_bb_inc_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_dist_with_dummy AS
transform sum(q_bb_inc_with_dummy.inc_total) AS total_income
SELECT q_bb_inc_with_dummy.rep_month, q_bb_inc_with_dummy.pc, q_bb_inc_with_dummy.l_1, q_bb_inc_with_dummy.l_2, q_bb_inc_with_dummy.l_3, q_bb_inc_with_dummy.l_4, q_bb_inc_with_dummy.l_5, q_bb_inc_with_dummy.l_6, q_bb_inc_with_dummy.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")) AS exc_try, iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_bb_inc_with_dummy
GROUP BY q_bb_inc_with_dummy.rep_month, q_bb_inc_with_dummy.pc, q_bb_inc_with_dummy.l_1, q_bb_inc_with_dummy.l_2, q_bb_inc_with_dummy.l_3, q_bb_inc_with_dummy.l_4, q_bb_inc_with_dummy.l_5, q_bb_inc_with_dummy.l_6, q_bb_inc_with_dummy.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")), iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")), iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur"))
PIVOT q_bb_inc_with_dummy.inc_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_inc_eur AS
SELECT t_bb_inc_total_st.rep_month, t_bb_inc_total_st.pc, t_bb_inc_total_st.l_1, t_bb_inc_total_st.l_2, t_bb_inc_total_st.l_3, t_bb_inc_total_st.l_4, t_bb_inc_total_st.l_5, t_bb_inc_total_st.l_6, t_bb_inc_total_st.inc_total, t_bb_inc_total_st.currency, 
CASE WHEN currency='eur'THEN inc_total ELSE CASE WHEN currency='usd' THEN inc_total*r_usd_eur ELSE inc_total*r_try_eur END END AS eur_income, 
'eur' AS up_curr_conv, t_bb_inc_total_st.inc_base_mon AS month, 
t_bb_inc_total_st.key_r_pc_l6
FROM t_bb_inc_total_st LEFT JOIN mon_curr_rates ON (t_bb_inc_total_st.inc_base_mon = mon_curr_rates.month) AND (t_bb_inc_total_st.rep_month = mon_curr_rates.rep_month)
ORDER BY t_bb_inc_total_st.rep_month, t_bb_inc_total_st.pc, t_bb_inc_total_st.l_1, t_bb_inc_total_st.l_2, t_bb_inc_total_st.l_3, t_bb_inc_total_st.l_4, t_bb_inc_total_st.l_5, t_bb_inc_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_eur_mt AS
SELECT q_bb_inc_eur.rep_month, q_bb_inc_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_eur.month, q_bb_inc_eur.eur_income, q_bb_inc_eur.up_curr_conv, q_bb_inc_eur.l_1, q_bb_inc_eur.l_2, q_bb_inc_eur.l_3, q_bb_inc_eur.l_4, q_bb_inc_eur.l_5, q_bb_inc_eur.l_6, c6_code.DESC_tr_l6, q_bb_inc_eur.key_r_pc_l6 into t_bb_inc_eur_st
FROM (q_bb_inc_eur LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_bb_inc_eur.l_3 = c3_code.c_l3) AND (q_bb_inc_eur.l_2 = c3_code.c_l2) AND (q_bb_inc_eur.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_bb_inc_eur.l_6 = c6_code.c_l6) AND (q_bb_inc_eur.l_5 = c6_code.c_l5) AND (q_bb_inc_eur.l_4 = c6_code.c_l4) AND (q_bb_inc_eur.l_3 = c6_code.c_l3) AND (q_bb_inc_eur.l_2 = c6_code.c_l2) AND (q_bb_inc_eur.l_1 = c6_code.c_l1)
GROUP BY q_bb_inc_eur.rep_month, q_bb_inc_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_eur.month, q_bb_inc_eur.eur_income, q_bb_inc_eur.up_curr_conv, q_bb_inc_eur.l_1, q_bb_inc_eur.l_2, q_bb_inc_eur.l_3, q_bb_inc_eur.l_4, q_bb_inc_eur.l_5, q_bb_inc_eur.l_6, c6_code.DESC_tr_l6, q_bb_inc_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_income,
up_curr_conv,
key_r_pc_l6


FROM 
q_bb_inc_eur

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_qty AS
SELECT *
FROM t_bb_inc_qty;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_qty_crosstab AS
transform sum(q_bb_inc_qty.inc_base_qty) AS inc_base_qty
SELECT q_bb_inc_qty.rep_month, q_bb_inc_qty.pc, q_bb_inc_qty.l_1, q_bb_inc_qty.l_2, q_bb_inc_qty.l_3, q_bb_inc_qty.l_4, q_bb_inc_qty.l_5, q_bb_inc_qty.l_6
FROM q_bb_inc_qty
GROUP BY q_bb_inc_qty.rep_month, q_bb_inc_qty.pc, q_bb_inc_qty.l_1, q_bb_inc_qty.l_2, q_bb_inc_qty.l_3, q_bb_inc_qty.l_4, q_bb_inc_qty.l_5, q_bb_inc_qty.l_6
ORDER BY q_bb_inc_qty.rep_month, q_bb_inc_qty.pc, q_bb_inc_qty.l_1, q_bb_inc_qty.l_2, q_bb_inc_qty.l_3, q_bb_inc_qty.l_4, q_bb_inc_qty.l_5, q_bb_inc_qty.l_6
PIVOT q_bb_inc_qty.inc_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_inc_total AS
SELECT 
q_bb_inc_calculation.rep_month, 
q_bb_inc_calculation.pc, 
q_bb_inc_calculation.l_1, 
q_bb_inc_calculation.l_2, 
q_bb_inc_calculation.l_3, 
q_bb_inc_calculation.l_4, 
q_bb_inc_calculation.l_5, 
q_bb_inc_calculation.l_6, 
q_bb_inc_calculation.inc_base_mon, 
sum(q_bb_inc_calculation.inc_total) AS inc_total, 
q_bb_inc_calculation.currency, 
q_bb_inc_calculation.key_r_pc_l6
FROM q_bb_inc_calculation
GROUP BY q_bb_inc_calculation.rep_month, q_bb_inc_calculation.pc, q_bb_inc_calculation.l_1, q_bb_inc_calculation.l_2, q_bb_inc_calculation.l_3, q_bb_inc_calculation.l_4, q_bb_inc_calculation.l_5, q_bb_inc_calculation.l_6, q_bb_inc_calculation.inc_base_mon, q_bb_inc_calculation.currency, q_bb_inc_calculation.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_total_mt AS
SELECT q_bb_inc_total.rep_month, q_bb_inc_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_total.inc_base_mon, q_bb_inc_total.inc_total, q_bb_inc_total.currency, q_bb_inc_total.l_1, q_bb_inc_total.l_2, q_bb_inc_total.l_3, q_bb_inc_total.l_4, q_bb_inc_total.l_5, q_bb_inc_total.l_6, c6_code.DESC_tr_l6, q_bb_inc_total.key_r_pc_l6 into t_bb_inc_total_st
FROM (q_bb_inc_total LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_bb_inc_total.l_1 = c3_code.c_l1) AND (q_bb_inc_total.l_2 = c3_code.c_l2) AND (q_bb_inc_total.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_bb_inc_total.l_1 = c6_code.c_l1) AND (q_bb_inc_total.l_2 = c6_code.c_l2) AND (q_bb_inc_total.l_3 = c6_code.c_l3) AND (q_bb_inc_total.l_4 = c6_code.c_l4) AND (q_bb_inc_total.l_5 = c6_code.c_l5) AND (q_bb_inc_total.l_6 = c6_code.c_l6)
GROUP BY q_bb_inc_total.rep_month, q_bb_inc_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_total.inc_base_mon, q_bb_inc_total.inc_total, q_bb_inc_total.currency, q_bb_inc_total.l_1, q_bb_inc_total.l_2, q_bb_inc_total.l_3, q_bb_inc_total.l_4, q_bb_inc_total.l_5, q_bb_inc_total.l_6, c6_code.DESC_tr_l6, q_bb_inc_total.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_bb_inc_try AS
SELECT 
t_bb_inc_total_st.rep_month, 
t_bb_inc_total_st.pc, 
t_bb_inc_total_st.l_1, 
t_bb_inc_total_st.l_2, 
t_bb_inc_total_st.l_3, 
t_bb_inc_total_st.l_4, 
t_bb_inc_total_st.l_5, 
t_bb_inc_total_st.l_6, 
t_bb_inc_total_st.inc_total, 
t_bb_inc_total_st.currency, 
CASE WHEN currency='try'THEN inc_total ELSE CASE WHEN currency='usd' THEN inc_total*r_usd_try ELSE inc_total*r_eur_try END END AS try_income, 'try' AS up_curr_conv, 
t_bb_inc_total_st.inc_base_mon AS month, 
t_bb_inc_total_st.key_r_pc_l6
FROM t_bb_inc_total_st LEFT JOIN mon_curr_rates ON (t_bb_inc_total_st.rep_month = mon_curr_rates.rep_month) AND (t_bb_inc_total_st.inc_base_mon = mon_curr_rates.month)
ORDER BY t_bb_inc_total_st.rep_month, t_bb_inc_total_st.pc, t_bb_inc_total_st.l_1, t_bb_inc_total_st.l_2, t_bb_inc_total_st.l_3, t_bb_inc_total_st.l_4, t_bb_inc_total_st.l_5, t_bb_inc_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_try_mt AS
SELECT q_bb_inc_try.rep_month, q_bb_inc_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_try.month, q_bb_inc_try.try_income, q_bb_inc_try.up_curr_conv, q_bb_inc_try.l_1, q_bb_inc_try.l_2, q_bb_inc_try.l_3, q_bb_inc_try.l_4, q_bb_inc_try.l_5, q_bb_inc_try.l_6, c6_code.DESC_tr_l6, q_bb_inc_try.key_r_pc_l6 into t_bb_inc_try_st
FROM (q_bb_inc_try LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_bb_inc_try.l_1 = c3_code.c_l1) AND (q_bb_inc_try.l_2 = c3_code.c_l2) AND (q_bb_inc_try.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_bb_inc_try.l_1 = c6_code.c_l1) AND (q_bb_inc_try.l_2 = c6_code.c_l2) AND (q_bb_inc_try.l_3 = c6_code.c_l3) AND (q_bb_inc_try.l_4 = c6_code.c_l4) AND (q_bb_inc_try.l_5 = c6_code.c_l5) AND (q_bb_inc_try.l_6 = c6_code.c_l6)
GROUP BY q_bb_inc_try.rep_month, q_bb_inc_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_try.month, q_bb_inc_try.try_income, q_bb_inc_try.up_curr_conv, q_bb_inc_try.l_1, q_bb_inc_try.l_2, q_bb_inc_try.l_3, q_bb_inc_try.l_4, q_bb_inc_try.l_5, q_bb_inc_try.l_6, c6_code.DESC_tr_l6, q_bb_inc_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_bb_inc_try

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_bb_inc_usd AS
SELECT 
t_bb_inc_total_st.rep_month, 
t_bb_inc_total_st.pc, 
t_bb_inc_total_st.l_1, 
t_bb_inc_total_st.l_2, 
t_bb_inc_total_st.l_3, 
t_bb_inc_total_st.l_4, 
t_bb_inc_total_st.l_5, 
t_bb_inc_total_st.l_6, 
t_bb_inc_total_st.inc_total, 
t_bb_inc_total_st.currency, 
CASE WHEN currency='usd' THEN inc_total ELSE CASE WHEN currency='try' THEN inc_total*r_try_usd ELSE inc_total*r_eur_usd END END AS usd_income, 
'usd' AS up_curr_conv, 
t_bb_inc_total_st.inc_base_mon AS month, t_bb_inc_total_st.key_r_pc_l6
FROM t_bb_inc_total_st LEFT JOIN mon_curr_rates ON (t_bb_inc_total_st.rep_month = mon_curr_rates.rep_month) AND (t_bb_inc_total_st.inc_base_mon = mon_curr_rates.month)
ORDER BY t_bb_inc_total_st.rep_month, t_bb_inc_total_st.pc, t_bb_inc_total_st.l_1, t_bb_inc_total_st.l_2, t_bb_inc_total_st.l_3, t_bb_inc_total_st.l_4, t_bb_inc_total_st.l_5, t_bb_inc_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_usd_mt AS
SELECT q_bb_inc_usd.rep_month, q_bb_inc_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_usd.month, q_bb_inc_usd.usd_income, q_bb_inc_usd.up_curr_conv, q_bb_inc_usd.l_1, q_bb_inc_usd.l_2, q_bb_inc_usd.l_3, q_bb_inc_usd.l_4, q_bb_inc_usd.l_5, q_bb_inc_usd.l_6, c6_code.DESC_tr_l6, q_bb_inc_usd.key_r_pc_l6 into t_bb_inc_usd_st
FROM (q_bb_inc_usd LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_bb_inc_usd.l_1 = c3_code.c_l1) AND (q_bb_inc_usd.l_2 = c3_code.c_l2) AND (q_bb_inc_usd.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_bb_inc_usd.l_1 = c6_code.c_l1) AND (q_bb_inc_usd.l_2 = c6_code.c_l2) AND (q_bb_inc_usd.l_3 = c6_code.c_l3) AND (q_bb_inc_usd.l_4 = c6_code.c_l4) AND (q_bb_inc_usd.l_5 = c6_code.c_l5) AND (q_bb_inc_usd.l_6 = c6_code.c_l6)
GROUP BY q_bb_inc_usd.rep_month, q_bb_inc_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_inc_usd.month, q_bb_inc_usd.usd_income, q_bb_inc_usd.up_curr_conv, q_bb_inc_usd.l_1, q_bb_inc_usd.l_2, q_bb_inc_usd.l_3, q_bb_inc_usd.l_4, q_bb_inc_usd.l_5, q_bb_inc_usd.l_6, c6_code.DESC_tr_l6, q_bb_inc_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_inc_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_bb_inc_usd

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok 
q_bb_inc_with_dummy AS
SELECT 
*
FROM 
q_bb_inc_total

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok 
q_bb_monthly_curr_rates_activem AS
SELECT q_bb_qty_activem_works_monthly.rep_month, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, q_bb_qty_activem_works_monthly.exp_base_mon
FROM q_bb_qty_activem_works_monthly LEFT JOIN t_bb_mon_curr_rates ON (q_bb_qty_activem_works_monthly.pc = t_bb_mon_curr_rates.p_code) AND (q_bb_qty_activem_works_monthly.rep_month = t_bb_mon_curr_rates.rep_month) AND (q_bb_qty_activem_works_monthly.exp_base_mon = t_bb_mon_curr_rates.month)
GROUP BY q_bb_qty_activem_works_monthly.rep_month, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, q_bb_qty_activem_works_monthly.exp_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_monthly_curr_rates_inc AS
SELECT q_bb_qty_activem_works_monthly.rep_month, q_bb_qty_activem_works_monthly.pc, q_bb_qty_activem_works_monthly.exp_base_mon, q_bb_monthly_curr_rates_activem.r_eur_try/q_bb_curr_base_val.r_eur_try-1 AS rt_eur_try, q_bb_monthly_curr_rates_activem.r_eur_usd/q_bb_curr_base_val.r_eur_usd-1 AS rt_eur_usd, q_bb_monthly_curr_rates_activem.r_usd_try/q_bb_curr_base_val.r_usd_try-1 AS rt_usd_try, q_bb_monthly_curr_rates_activem.r_usd_eur/q_bb_curr_base_val.r_usd_eur-1 AS rt_usd_eur
FROM (q_bb_qty_activem_works_monthly LEFT JOIN q_bb_monthly_curr_rates_activem ON (q_bb_qty_activem_works_monthly.exp_base_mon = q_bb_monthly_curr_rates_activem.exp_base_mon) AND (q_bb_qty_activem_works_monthly.rep_month = q_bb_monthly_curr_rates_activem.rep_month)) LEFT JOIN q_bb_curr_base_val ON (q_bb_qty_activem_works_monthly.pc = q_bb_curr_base_val.pc) AND (q_bb_qty_activem_works_monthly.rep_month = q_bb_curr_base_val.rep_month)
GROUP BY q_bb_qty_activem_works_monthly.rep_month, q_bb_qty_activem_works_monthly.pc, q_bb_qty_activem_works_monthly.exp_base_mon, q_bb_monthly_curr_rates_activem.r_eur_try/q_bb_curr_base_val.r_eur_try-1, q_bb_monthly_curr_rates_activem.r_eur_usd/q_bb_curr_base_val.r_eur_usd-1, q_bb_monthly_curr_rates_activem.r_usd_try/q_bb_curr_base_val.r_usd_try-1, q_bb_monthly_curr_rates_activem.r_usd_eur/q_bb_curr_base_val.r_usd_eur-1;

CREATE OR REPLACE VIEW -- ok
q_bb_pr_wbs AS
SELECT t_bb_inc_total_st.rep_month
	,t_bb_inc_total_st.pc
	,t_bb_inc_total_st.l_1
	,t_bb_inc_total_st.l_2
	,t_bb_inc_total_st.l_3
	,t_bb_inc_total_st.l_4
	,t_bb_inc_total_st.l_5
	,t_bb_inc_total_st.l_6
	,t_bb_inc_total_st.currency
	,t_bb_inc_total_st.inc_base_mon AS month 
	,t_bb_inc_total_st.key_r_pc_l6
FROM t_bb_inc_total_st 
GROUP BY t_bb_inc_total_st.rep_month
	,t_bb_inc_total_st.pc
	,t_bb_inc_total_st.l_1
	,t_bb_inc_total_st.l_2
	,t_bb_inc_total_st.l_3
	,t_bb_inc_total_st.l_4
	,t_bb_inc_total_st.l_5
	,t_bb_inc_total_st.l_6
	,t_bb_inc_total_st.currency
	,t_bb_inc_total_st.inc_base_mon 
	,t_bb_inc_total_st.key_r_pc_l6
HAVING (((sum(t_bb_inc_total_st.inc_total))<>0)) 
UNION SELECT t_q_cb_exp.rep_month
	,t_q_cb_exp.pc
	,t_q_cb_exp.l_1
	,t_q_cb_exp.l_2
	,t_q_cb_exp.l_3
	,t_q_cb_exp.l_4
	,t_q_cb_exp.l_5
	,t_q_cb_exp.l_6
	,t_q_cb_exp.up_curr
	,t_q_cb_exp.month AS month 
	,t_q_cb_exp.key_r_pc_l6
FROM t_q_cb_exp 
GROUP BY t_q_cb_exp.rep_month
	,t_q_cb_exp.pc
	,t_q_cb_exp.l_1
	,t_q_cb_exp.l_2
	,t_q_cb_exp.l_3
	,t_q_cb_exp.l_4
	,t_q_cb_exp.l_5
	,t_q_cb_exp.l_6
	,t_q_cb_exp.up_curr
	,t_q_cb_exp.month 
	,t_q_cb_exp.key_r_pc_l6	
HAVING (((sum(t_q_cb_exp.total_expense))<>0));

CREATE OR REPLACE VIEW -- ok
q_bb_profit AS
SELECT q_bb_pr_wbs.rep_month, 
q_bb_pr_wbs.pc, 
q_bb_pr_wbs.l_1, 
q_bb_pr_wbs.l_2, 
q_bb_pr_wbs.l_3, 
q_bb_pr_wbs.l_4, 
q_bb_pr_wbs.l_5, 
q_bb_pr_wbs.l_6, 
q_bb_pr_wbs.currency, 
q_bb_pr_wbs.month,
s1.income AS income,
s1.expense AS expense, 
income-expense AS profit, 
q_bb_pr_wbs.key_r_pc_l6
FROM (q_bb_pr_wbs LEFT JOIN t_bb_inc_total_st ON (q_bb_pr_wbs.currency = t_bb_inc_total_st.currency) AND (q_bb_pr_wbs.month = t_bb_inc_total_st.inc_base_mon) AND (q_bb_pr_wbs.key_r_pc_l6 = t_bb_inc_total_st.key_r_pc_l6)) LEFT JOIN t_bb_exp_total_st ON (q_bb_pr_wbs.currency = t_bb_exp_total_st.up_curr) AND (q_bb_pr_wbs.month = t_bb_exp_total_st.month) AND (q_bb_pr_wbs.key_r_pc_l6 = t_bb_exp_total_st.key_r_pc_l6),
LATERAL (SELECT 
CASE WHEN inc_total is null THEN 0 ELSE inc_total END, 
CASE WHEN total_expense is null THEN 0 ELSE total_expense END) AS s1(income, expense) 
ORDER BY q_bb_pr_wbs.rep_month, q_bb_pr_wbs.pc, q_bb_pr_wbs.l_1, q_bb_pr_wbs.l_2, q_bb_pr_wbs.l_3, q_bb_pr_wbs.l_4, q_bb_pr_wbs.l_5, q_bb_pr_wbs.l_6, q_bb_pr_wbs.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_dist_eur_with_dummy AS
transform sum(q_bb_profit_eur_with_dummy.profit) AS profit
SELECT q_bb_profit_eur_with_dummy.rep_month, q_bb_profit_eur_with_dummy.pc, q_bb_profit_eur_with_dummy.l_1, q_bb_profit_eur_with_dummy.l_2, q_bb_profit_eur_with_dummy.l_3, q_bb_profit_eur_with_dummy.l_4, q_bb_profit_eur_with_dummy.l_5, q_bb_profit_eur_with_dummy.l_6, q_bb_profit_eur_with_dummy.curr
FROM q_bb_profit_eur_with_dummy
GROUP BY q_bb_profit_eur_with_dummy.rep_month, q_bb_profit_eur_with_dummy.pc, q_bb_profit_eur_with_dummy.l_1, q_bb_profit_eur_with_dummy.l_2, q_bb_profit_eur_with_dummy.l_3, q_bb_profit_eur_with_dummy.l_4, q_bb_profit_eur_with_dummy.l_5, q_bb_profit_eur_with_dummy.l_6, q_bb_profit_eur_with_dummy.curr
ORDER BY q_bb_profit_eur_with_dummy.rep_month, q_bb_profit_eur_with_dummy.pc, q_bb_profit_eur_with_dummy.l_1, q_bb_profit_eur_with_dummy.l_2, q_bb_profit_eur_with_dummy.l_3, q_bb_profit_eur_with_dummy.l_4, q_bb_profit_eur_with_dummy.l_5, q_bb_profit_eur_with_dummy.l_6
PIVOT q_bb_profit_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_dist_try_with_dummy AS
transform sum(q_bb_profit_try_with_dummy.profit) AS profit
SELECT q_bb_profit_try_with_dummy.rep_month, q_bb_profit_try_with_dummy.pc, q_bb_profit_try_with_dummy.l_1, q_bb_profit_try_with_dummy.l_2, q_bb_profit_try_with_dummy.l_3, q_bb_profit_try_with_dummy.l_4, q_bb_profit_try_with_dummy.l_5, q_bb_profit_try_with_dummy.l_6, q_bb_profit_try_with_dummy.curr
FROM q_bb_profit_try_with_dummy
GROUP BY q_bb_profit_try_with_dummy.rep_month, q_bb_profit_try_with_dummy.pc, q_bb_profit_try_with_dummy.l_1, q_bb_profit_try_with_dummy.l_2, q_bb_profit_try_with_dummy.l_3, q_bb_profit_try_with_dummy.l_4, q_bb_profit_try_with_dummy.l_5, q_bb_profit_try_with_dummy.l_6, q_bb_profit_try_with_dummy.curr
ORDER BY q_bb_profit_try_with_dummy.rep_month, q_bb_profit_try_with_dummy.pc, q_bb_profit_try_with_dummy.l_1, q_bb_profit_try_with_dummy.l_2, q_bb_profit_try_with_dummy.l_3, q_bb_profit_try_with_dummy.l_4, q_bb_profit_try_with_dummy.l_5, q_bb_profit_try_with_dummy.l_6
PIVOT q_bb_profit_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_dist_usd_with_dummy AS
transform sum(q_bb_profit_usd_with_dummy.profit) AS profit
SELECT q_bb_profit_usd_with_dummy.rep_month, q_bb_profit_usd_with_dummy.pc, q_bb_profit_usd_with_dummy.l_1, q_bb_profit_usd_with_dummy.l_2, q_bb_profit_usd_with_dummy.l_3, q_bb_profit_usd_with_dummy.l_4, q_bb_profit_usd_with_dummy.l_5, q_bb_profit_usd_with_dummy.l_6, q_bb_profit_usd_with_dummy.curr
FROM q_bb_profit_usd_with_dummy
GROUP BY q_bb_profit_usd_with_dummy.rep_month, q_bb_profit_usd_with_dummy.pc, q_bb_profit_usd_with_dummy.l_1, q_bb_profit_usd_with_dummy.l_2, q_bb_profit_usd_with_dummy.l_3, q_bb_profit_usd_with_dummy.l_4, q_bb_profit_usd_with_dummy.l_5, q_bb_profit_usd_with_dummy.l_6, q_bb_profit_usd_with_dummy.curr
ORDER BY q_bb_profit_usd_with_dummy.rep_month, q_bb_profit_usd_with_dummy.pc, q_bb_profit_usd_with_dummy.l_1, q_bb_profit_usd_with_dummy.l_2, q_bb_profit_usd_with_dummy.l_3, q_bb_profit_usd_with_dummy.l_4, q_bb_profit_usd_with_dummy.l_5, q_bb_profit_usd_with_dummy.l_6
PIVOT q_bb_profit_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_dist_with_dummy AS
transform sum(q_bb_profit_with_dummy.profit) AS sumofprofit
SELECT q_bb_profit_with_dummy.rep_month, q_bb_profit_with_dummy.pc, q_bb_profit_with_dummy.l_1, q_bb_profit_with_dummy.l_2, q_bb_profit_with_dummy.l_3, q_bb_profit_with_dummy.l_4, q_bb_profit_with_dummy.l_5, q_bb_profit_with_dummy.l_6, q_bb_profit_with_dummy.curr
FROM q_bb_profit_with_dummy
GROUP BY q_bb_profit_with_dummy.rep_month, q_bb_profit_with_dummy.pc, q_bb_profit_with_dummy.l_1, q_bb_profit_with_dummy.l_2, q_bb_profit_with_dummy.l_3, q_bb_profit_with_dummy.l_4, q_bb_profit_with_dummy.l_5, q_bb_profit_with_dummy.l_6, q_bb_profit_with_dummy.curr
ORDER BY q_bb_profit_with_dummy.rep_month, q_bb_profit_with_dummy.pc, q_bb_profit_with_dummy.l_1, q_bb_profit_with_dummy.l_2, q_bb_profit_with_dummy.l_3, q_bb_profit_with_dummy.l_4, q_bb_profit_with_dummy.l_5, q_bb_profit_with_dummy.l_6, q_bb_profit_with_dummy.month
PIVOT q_bb_profit_with_dummy.month;

CREATE OR REPLACE VIEW -- ok
q_bb_profit_eur AS
SELECT t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6, t_bb_profit_total_st.month, 'eur' AS currency, 
s1.income as income,
s1.expense as expense,
s1.income-s1.expense AS profit, t_bb_profit_total_st.key_r_pc_l6
FROM t_bb_profit_total_st LEFT JOIN mon_curr_rates ON (t_bb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_bb_profit_total_st.month = mon_curr_rates.month),
LATERAL (SELECT 
CASE WHEN t_bb_profit_total_st.currency='usd' THEN t_bb_profit_total_st.income*r_usd_eur ELSE CASE WHEN t_bb_profit_total_st.currency='try' THEN t_bb_profit_total_st.income*r_try_eur ELSE t_bb_profit_total_st.income END END, 
CASE WHEN t_bb_profit_total_st.currency='usd' THEN t_bb_profit_total_st.expense*r_usd_eur ELSE CASE WHEN t_bb_profit_total_st.currency='try'  THEN t_bb_profit_total_st.expense*r_try_eur ELSE t_bb_profit_total_st.expense END END) AS s1(income, expense)
ORDER BY t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_eur_mt AS
SELECT q_bb_profit_eur.rep_month, q_bb_profit_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_eur.month, q_bb_profit_eur.expense, q_bb_profit_eur.income, q_bb_profit_eur.currency, q_bb_profit_eur.l_1, q_bb_profit_eur.l_2, q_bb_profit_eur.l_3, q_bb_profit_eur.l_4, q_bb_profit_eur.l_5, q_bb_profit_eur.l_6, q_bb_profit_eur.profit, c6_code.DESC_tr_l6, q_bb_profit_eur.key_r_pc_l6 into t_bb_profit_eur_st
FROM ((q_bb_profit_eur LEFT JOIN c3_code ON (q_bb_profit_eur.l_3 = c3_code.c_l3) AND (q_bb_profit_eur.l_2 = c3_code.c_l2) AND (q_bb_profit_eur.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_bb_profit_eur.l_2 = c2_code.c_l2) AND (q_bb_profit_eur.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_bb_profit_eur.l_6 = c6_code.c_l6) AND (q_bb_profit_eur.l_5 = c6_code.c_l5) AND (q_bb_profit_eur.l_4 = c6_code.c_l4) AND (q_bb_profit_eur.l_3 = c6_code.c_l3) AND (q_bb_profit_eur.l_2 = c6_code.c_l2) AND (q_bb_profit_eur.l_1 = c6_code.c_l1)
GROUP BY q_bb_profit_eur.rep_month, q_bb_profit_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_eur.month, q_bb_profit_eur.expense, q_bb_profit_eur.income, q_bb_profit_eur.currency, q_bb_profit_eur.l_1, q_bb_profit_eur.l_2, q_bb_profit_eur.l_3, q_bb_profit_eur.l_4, q_bb_profit_eur.l_5, q_bb_profit_eur.l_6, q_bb_profit_eur.profit, c6_code.DESC_tr_l6, q_bb_profit_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_bb_profit_eur

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_total_mt AS
SELECT q_bb_profit.rep_month, q_bb_profit.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit.month, q_bb_profit.expense, q_bb_profit.income, q_bb_profit.currency, q_bb_profit.l_1, q_bb_profit.l_2, q_bb_profit.l_3, q_bb_profit.l_4, q_bb_profit.l_5, q_bb_profit.l_6, q_bb_profit.profit, c6_code.DESC_tr_l6, q_bb_profit.key_r_pc_l6 into t_bb_profit_total_st
FROM ((q_bb_profit LEFT JOIN c3_code ON (q_bb_profit.l_3 = c3_code.c_l3) AND (q_bb_profit.l_2 = c3_code.c_l2) AND (q_bb_profit.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_bb_profit.l_2 = c2_code.c_l2) AND (q_bb_profit.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_bb_profit.l_6 = c6_code.c_l6) AND (q_bb_profit.l_5 = c6_code.c_l5) AND (q_bb_profit.l_4 = c6_code.c_l4) AND (q_bb_profit.l_3 = c6_code.c_l3) AND (q_bb_profit.l_2 = c6_code.c_l2) AND (q_bb_profit.l_1 = c6_code.c_l1)
GROUP BY q_bb_profit.rep_month, q_bb_profit.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit.month, q_bb_profit.expense, q_bb_profit.income, q_bb_profit.currency, q_bb_profit.l_1, q_bb_profit.l_2, q_bb_profit.l_3, q_bb_profit.l_4, q_bb_profit.l_5, q_bb_profit.l_6, q_bb_profit.profit, c6_code.DESC_tr_l6, q_bb_profit.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_bb_profit_try AS
SELECT t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6, t_bb_profit_total_st.month, 'try' AS currency, s1.income as income, s1.expense as expense, s1.income-s1.expense AS profit, t_bb_profit_total_st.key_r_pc_l6
FROM t_bb_profit_total_st LEFT JOIN mon_curr_rates ON (t_bb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_bb_profit_total_st.month = mon_curr_rates.month),
LATERAL ( SELECT 
CASE WHEN t_bb_profit_total_st.currency='usd' THEN t_bb_profit_total_st.income*r_usd_try ELSE CASE WHEN t_bb_profit_total_st.currency='eur'THEN t_bb_profit_total_st.income*r_eur_try ELSE t_bb_profit_total_st.income END END, CASE WHEN t_bb_profit_total_st.currency='usd' THEN t_bb_profit_total_st.expense*r_usd_try ELSE CASE WHEN t_bb_profit_total_st.currency='eur' THEN t_bb_profit_total_st.expense*r_eur_try ELSE t_bb_profit_total_st.expense END END) AS s1(income,expense)
ORDER BY t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_try_mt AS
SELECT q_bb_profit_try.rep_month, q_bb_profit_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_try.month, q_bb_profit_try.expense, q_bb_profit_try.income, q_bb_profit_try.currency, q_bb_profit_try.l_1, q_bb_profit_try.l_2, q_bb_profit_try.l_3, q_bb_profit_try.l_4, q_bb_profit_try.l_5, q_bb_profit_try.l_6, q_bb_profit_try.profit, c6_code.DESC_tr_l6, q_bb_profit_try.key_r_pc_l6 into t_bb_profit_try_st
FROM ((q_bb_profit_try LEFT JOIN c3_code ON (q_bb_profit_try.l_3 = c3_code.c_l3) AND (q_bb_profit_try.l_2 = c3_code.c_l2) AND (q_bb_profit_try.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_bb_profit_try.l_2 = c2_code.c_l2) AND (q_bb_profit_try.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_bb_profit_try.l_6 = c6_code.c_l6) AND (q_bb_profit_try.l_5 = c6_code.c_l5) AND (q_bb_profit_try.l_4 = c6_code.c_l4) AND (q_bb_profit_try.l_3 = c6_code.c_l3) AND (q_bb_profit_try.l_2 = c6_code.c_l2) AND (q_bb_profit_try.l_1 = c6_code.c_l1)
GROUP BY q_bb_profit_try.rep_month, q_bb_profit_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_try.month, q_bb_profit_try.expense, q_bb_profit_try.income, q_bb_profit_try.currency, q_bb_profit_try.l_1, q_bb_profit_try.l_2, q_bb_profit_try.l_3, q_bb_profit_try.l_4, q_bb_profit_try.l_5, q_bb_profit_try.l_6, q_bb_profit_try.profit, c6_code.DESC_tr_l6, q_bb_profit_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_bb_profit_try

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_bb_profit_usd AS
SELECT t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6, t_bb_profit_total_st.month, 'usd' AS currency, s1.income as income, s1.expense as expense, s1.income-s1.expense AS profit, t_bb_profit_total_st.key_r_pc_l6
FROM t_bb_profit_total_st LEFT JOIN mon_curr_rates ON (t_bb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_bb_profit_total_st.month = mon_curr_rates.month), LATERAL ( SELECT
case when t_bb_profit_total_st.currency='eur' then t_bb_profit_total_st.income*r_eur_usd else case when t_bb_profit_total_st.currency='try' then t_bb_profit_total_st.income*r_try_usd else t_bb_profit_total_st.income end end, case when t_bb_profit_total_st.currency='eur' then t_bb_profit_total_st.expense*r_eur_usd else case when t_bb_profit_total_st.currency='try' then t_bb_profit_total_st.expense*r_try_usd else t_bb_profit_total_st.expense end end) AS s1(income, expense)
ORDER BY t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_bb_profit_total_st.l_1, t_bb_profit_total_st.l_2, t_bb_profit_total_st.l_3, t_bb_profit_total_st.l_4, t_bb_profit_total_st.l_5, t_bb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_usd_mt AS
SELECT q_bb_profit_usd.rep_month, q_bb_profit_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_usd.month, q_bb_profit_usd.expense, q_bb_profit_usd.income, q_bb_profit_usd.currency, q_bb_profit_usd.l_1, q_bb_profit_usd.l_2, q_bb_profit_usd.l_3, q_bb_profit_usd.l_4, q_bb_profit_usd.l_5, q_bb_profit_usd.l_6, q_bb_profit_usd.profit, c6_code.DESC_tr_l6, q_bb_profit_usd.key_r_pc_l6 into t_bb_profit_usd_st
FROM ((q_bb_profit_usd LEFT JOIN c3_code ON (q_bb_profit_usd.l_3 = c3_code.c_l3) AND (q_bb_profit_usd.l_2 = c3_code.c_l2) AND (q_bb_profit_usd.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_bb_profit_usd.l_2 = c2_code.c_l2) AND (q_bb_profit_usd.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_bb_profit_usd.l_6 = c6_code.c_l6) AND (q_bb_profit_usd.l_5 = c6_code.c_l5) AND (q_bb_profit_usd.l_4 = c6_code.c_l4) AND (q_bb_profit_usd.l_3 = c6_code.c_l3) AND (q_bb_profit_usd.l_2 = c6_code.c_l2) AND (q_bb_profit_usd.l_1 = c6_code.c_l1)
GROUP BY q_bb_profit_usd.rep_month, q_bb_profit_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_bb_profit_usd.month, q_bb_profit_usd.expense, q_bb_profit_usd.income, q_bb_profit_usd.currency, q_bb_profit_usd.l_1, q_bb_profit_usd.l_2, q_bb_profit_usd.l_3, q_bb_profit_usd.l_4, q_bb_profit_usd.l_5, q_bb_profit_usd.l_6, q_bb_profit_usd.profit, c6_code.DESC_tr_l6, q_bb_profit_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_bb_profit_usd

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_bb_profit_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency AS curr,
month,
profit

FROM 
q_bb_profit

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr AS curr,
g_month AS month,
total_expense AS profit

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW --ok
q_bb_project_months AS
SELECT t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_001_projects.r03_s_name AS name
FROM t_bb_profit_total_st LEFT JOIN t_001_projects ON t_bb_profit_total_st.pc = t_001_projects.p_code
GROUP BY t_bb_profit_total_st.rep_month, t_bb_profit_total_st.pc, t_001_projects.r03_s_name
ORDER BY t_bb_profit_total_st.rep_month DESC;

CREATE OR REPLACE VIEW -- ok
q_bb_qty_activem_works AS
SELECT t_bb_qty.key_r_pc_l6, t_bb_qty.exp_base_mon
FROM t_bb_qty LEFT JOIN t_rep_month ON t_bb_qty.rep_month = t_rep_month.rep_month
WHERE (((t_bb_qty.exp_base_mon)>t_rep_month.rep_month_date) AND ((t_bb_qty.exp_base_qty)<>0))
ORDER BY t_bb_qty.key_r_pc_l6, t_bb_qty.exp_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_qty_activem_works_monthly AS
SELECT t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.exp_base_mon
FROM t_bb_qty LEFT JOIN t_rep_month ON t_bb_qty.rep_month = t_rep_month.rep_month
WHERE (((t_bb_qty.exp_base_mon)>t_rep_month.rep_month_date) AND ((t_bb_qty.exp_base_qty)<>0))
GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.exp_base_mon
ORDER BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.exp_base_mon;

CREATE OR REPLACE VIEW -- not ok
q_bb_qty_crosstab AS
transform sum(t_bb_qty.exp_base_qty) AS sumofexp_base_qty
SELECT t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6
FROM t_bb_qty
GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6
ORDER BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6
PIVOT t_bb_qty.exp_base_mon;

CREATE OR REPLACE VIEW -- not ok
q_bb_qty_dummy_full AS
SELECT t_rep_month.rep_month, q_budget_project_months.pc AS p_code, t_bb_exp_dummy_part.l_1, t_bb_exp_dummy_part.l_2, t_bb_exp_dummy_part.l_3, t_bb_exp_dummy_part.l_4, t_bb_exp_dummy_part.l_5, t_bb_exp_dummy_part.l_6, t_months.g_month, t_bb_exp_dummy_part.total_expense, t_bb_exp_dummy_part.up_curr, q_budget_project_months.rep_month+'.'+pc+'.'+l_1+'.'+l_2+'.'+l_3+'.'+l_4+'.'+l_5+'.'+l_6 AS key_r_pc_l6
FROM t_months, t_bb_exp_dummy_part, t_rep_month INNER JOIN q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
GROUP BY t_rep_month.rep_month, q_budget_project_months.pc, t_bb_exp_dummy_part.l_1, t_bb_exp_dummy_part.l_2, t_bb_exp_dummy_part.l_3, t_bb_exp_dummy_part.l_4, t_bb_exp_dummy_part.l_5, t_bb_exp_dummy_part.l_6, t_months.g_month, t_bb_exp_dummy_part.total_expense, t_bb_exp_dummy_part.up_curr, q_budget_project_months.rep_month+'.'+pc+'.'+l_1+'.'+l_2+'.'+l_3+'.'+l_4+'.'+l_5+'.'+l_6;

CREATE OR REPLACE VIEW -- ok
q_bb_res_up_market_coeff AS
SELECT q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1 AS r_1_code, q_bb_up_pre_coeff_activem_indexes.rs_l2 AS r_2_code, q_bb_up_pre_coeff_activem_indexes.rs_l3 AS r_3_code, q_bb_up_pre_coeff_activem_indexes.rs_l4 AS r_4_code, (1+w_ufe*r_ufe)*(1+w_tufe*r_tufe)*(1+w_inf_usd*r_inf_usd)*(1+w_inf_eur*r_inf_eur)*(1+w_metal*r_metal)*(1+w_petrol*r_petrol)*(1+w_cement*r_cement)*(1+w_electricity*r_electricity) AS up_cost_coeff, q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS g_month, q_bb_up_pre_coeff_activem_indexes.up_cost, q_bb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_bb_up_pre_coeff_activem_indexes.key_r4_simple, q_bb_up_pre_coeff_activem_indexes.key_r4, q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_bb_up_pre_coeff_activem_indexes.key_full, key_full || '.' || q_bb_up_pre_coeff_activem_indexes.rs_currency || '.' || q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS key_full_comb
FROM q_bb_up_pre_coeff_activem_indexes LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple = r4_code.key_r4_simple
GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, (1+w_ufe*r_ufe)*(1+w_tufe*r_tufe)*(1+w_inf_usd*r_inf_usd)*(1+w_inf_eur*r_inf_eur)*(1+w_metal*r_metal)*(1+w_petrol*r_petrol)*(1+w_cement*r_cement)*(1+w_electricity*r_electricity), q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.up_cost, q_bb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_bb_up_pre_coeff_activem_indexes.key_r4_simple, q_bb_up_pre_coeff_activem_indexes.key_r4, q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_bb_up_pre_coeff_activem_indexes.key_full, key_full || '.' || q_bb_up_pre_coeff_activem_indexes.rs_currency || '.' || q_bb_up_pre_coeff_activem_indexes.exp_base_mon
ORDER BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, q_bb_up_pre_coeff_activem_indexes.exp_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_unit_price AS
SELECT q_bb_up_coeff.rep_month, q_bb_up_coeff.up_pr_code AS p01_code, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.g_month AS month, q_bb_up_coeff.g_month, q_bb_up_coeff.rs_currency AS up_curr, sum(up_cost*an_rs_quantity*up_cost_coeff_all) AS unit_price_planned_coeff, q_bb_up_coeff.key_r_pc_l6
FROM q_bb_up_coeff
GROUP BY q_bb_up_coeff.rep_month, q_bb_up_coeff.up_pr_code, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.g_month, q_bb_up_coeff.rs_currency, q_bb_up_coeff.key_r_pc_l6, q_bb_up_coeff.g_month
ORDER BY q_bb_up_coeff.rep_month, q_bb_up_coeff.up_pr_code, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.g_month, q_bb_up_coeff.g_month;

CREATE OR REPLACE VIEW -- not ok
q_bb_unit_price_crosstab AS
transform sum(q_bb_unit_price.unit_price_planned_coeff) AS sumofunit_price_planned_coeff
SELECT q_bb_unit_price.rep_month, q_bb_unit_price.l_1, q_bb_unit_price.l_2, q_bb_unit_price.l_3, q_bb_unit_price.l_4, q_bb_unit_price.l_5, q_bb_unit_price.l_6, q_bb_unit_price.up_curr, q_bb_unit_price.p01_code
FROM q_bb_unit_price
GROUP BY q_bb_unit_price.rep_month, q_bb_unit_price.l_1, q_bb_unit_price.l_2, q_bb_unit_price.l_3, q_bb_unit_price.l_4, q_bb_unit_price.l_5, q_bb_unit_price.l_6, q_bb_unit_price.up_curr, q_bb_unit_price.p01_code
PIVOT q_bb_unit_price.month;

CREATE OR REPLACE VIEW 
q_bb_up_check AS
SELECT q_bb_exp.rep_month, q_bb_exp.pc, q_bb_exp.l_1, q_bb_exp.l_2, q_bb_exp.l_3, q_bb_exp.l_4, q_bb_exp.l_5, q_bb_exp.l_6, q_bb_exp.up_curr, sum(q_bb_exp.total_expense) AS total_expense, sum(q_bb_qty.exp_base_qty) AS quantity, c6_code.unit, q_bb_work_up_without_coeff.unit_price_planned AS up_without_coeff, total_expense / quantity AS up_average_with_coeff, up_average_with_coeff/up_without_coeff AS up_average_coeff
FROM ((q_bb_exp LEFT JOIN q_bb_qty ON (q_bb_exp.l_6 = q_bb_qty.l_6) AND (q_bb_exp.l_5 = q_bb_qty.l_5) AND (q_bb_exp.l_4 = q_bb_qty.l_4) AND (q_bb_exp.l_3 = q_bb_qty.l_3) AND (q_bb_exp.l_2 = q_bb_qty.l_2) AND (q_bb_exp.l_1 = q_bb_qty.l_1) AND (q_bb_exp.pc = q_bb_qty.pc) AND (q_bb_exp.rep_month = q_bb_qty.rep_month)) LEFT JOIN q_bb_work_up_without_coeff ON (q_bb_exp.l_6 = q_bb_work_up_without_coeff.l_6) AND (q_bb_exp.l_5 = q_bb_work_up_without_coeff.l_5) AND (q_bb_exp.l_4 = q_bb_work_up_without_coeff.l_4) AND (q_bb_exp.l_3 = q_bb_work_up_without_coeff.l_3) AND (q_bb_exp.l_2 = q_bb_work_up_without_coeff.l_2) AND (q_bb_exp.l_1 = q_bb_work_up_without_coeff.l_1) AND (q_bb_exp.pc = q_bb_work_up_without_coeff.pc) AND (q_bb_exp.rep_month = q_bb_work_up_without_coeff.rep_month)) LEFT JOIN c6_code ON (q_bb_exp.l_6 = c6_code.c_l6) AND (q_bb_exp.l_5 = c6_code.c_l5) AND (q_bb_exp.l_4 = c6_code.c_l4) AND (q_bb_exp.l_3 = c6_code.c_l3) AND (q_bb_exp.l_2 = c6_code.c_l2) AND (q_bb_exp.l_1 = c6_code.c_l1)
GROUP BY q_bb_exp.rep_month, q_bb_exp.pc, q_bb_exp.l_1, q_bb_exp.l_2, q_bb_exp.l_3, q_bb_exp.l_4, q_bb_exp.l_5, q_bb_exp.l_6, q_bb_exp.up_curr, c6_code.unit, q_bb_work_up_without_coeff.unit_price_planned;

CREATE OR REPLACE VIEW -- ok
q_bb_up_coeff AS
SELECT q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.pc AS up_pr_code, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.r_1_code AS up_rs_l1, q_bb_res_up_market_coeff.r_2_code AS up_rs_l2, q_bb_res_up_market_coeff.r_3_code AS up_rs_l3, q_bb_res_up_market_coeff.r_4_code AS up_rs_l4, q_bb_res_up_market_coeff.g_month, q_bb_res_up_market_coeff.up_cost_coeff, q_bb_curr_escalation_rates.k_usd, q_bb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6) AS up_cost_coeff_all, q_bb_res_up_market_coeff.up_cost, q_bb_res_up_market_coeff.currency AS rs_currency, q_bb_res_up_market_coeff.key_full, q_bb_res_up_market_coeff.an_rs_quantity, q_bb_res_up_market_coeff.key_r_pc_l6
FROM q_bb_res_up_market_coeff LEFT JOIN q_bb_curr_escalation_rates ON q_bb_res_up_market_coeff.key_full_comb = q_bb_curr_escalation_rates.key_full_comb
GROUP BY q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.r_1_code, q_bb_res_up_market_coeff.r_2_code, q_bb_res_up_market_coeff.r_3_code, q_bb_res_up_market_coeff.r_4_code, q_bb_res_up_market_coeff.g_month, q_bb_res_up_market_coeff.up_cost_coeff, q_bb_curr_escalation_rates.k_usd, q_bb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6), q_bb_res_up_market_coeff.up_cost, q_bb_res_up_market_coeff.currency, q_bb_res_up_market_coeff.key_full, q_bb_res_up_market_coeff.an_rs_quantity, q_bb_res_up_market_coeff.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_bb_up_pre_coeff_activem_indexes AS
SELECT q_bb_analysis_activem_with_prices.rep_month, q_bb_analysis_activem_with_prices.pc, q_bb_analysis_activem_with_prices.l_1, q_bb_analysis_activem_with_prices.l_2, q_bb_analysis_activem_with_prices.l_3, q_bb_analysis_activem_with_prices.l_4, q_bb_analysis_activem_with_prices.l_5, q_bb_analysis_activem_with_prices.l_6, q_bb_analysis_activem_with_prices.exp_base_mon, q_bb_analysis_activem_with_prices.rs_l1, q_bb_analysis_activem_with_prices.rs_l2, q_bb_analysis_activem_with_prices.rs_l3, q_bb_analysis_activem_with_prices.rs_l4, t_bb_indexes.r_ufe, t_bb_indexes.r_tufe, t_bb_indexes.r_inf_usd, t_bb_indexes.r_inf_eur, t_bb_indexes.r_metal, t_bb_indexes.r_petrol, t_bb_indexes.r_cement, t_bb_indexes.r_electricity, q_bb_analysis_activem_with_prices.currency AS rs_currency, q_bb_analysis_activem_with_prices.an_rs_quantity, q_bb_analysis_activem_with_prices.up_cost, q_bb_analysis_activem_with_prices.key_r4_simple, q_bb_analysis_activem_with_prices.key_r4, q_bb_analysis_activem_with_prices.key_r_pc_l6, q_bb_analysis_activem_with_prices.key_full
FROM q_bb_analysis_activem_with_prices LEFT JOIN t_bb_indexes ON (q_bb_analysis_activem_with_prices.pc = t_bb_indexes.p_code) AND (q_bb_analysis_activem_with_prices.rep_month = t_bb_indexes.rep_month) AND (q_bb_analysis_activem_with_prices.exp_base_mon = t_bb_indexes.g_month);

CREATE OR REPLACE VIEW -- not ok
q_bb_up_with_curr_coeff_crosstab AS
transform sum(q_bb_work_up_with_curr_coeff.up) AS sumofup
SELECT q_bb_work_up_with_curr_coeff.rep_month, q_bb_work_up_with_curr_coeff.pc, q_bb_work_up_with_curr_coeff.l_1, q_bb_work_up_with_curr_coeff.l_2, q_bb_work_up_with_curr_coeff.l_3, q_bb_work_up_with_curr_coeff.l_4, q_bb_work_up_with_curr_coeff.l_5, q_bb_work_up_with_curr_coeff.l_6, q_bb_work_up_with_curr_coeff.rs_currency
FROM q_bb_work_up_with_curr_coeff
GROUP BY q_bb_work_up_with_curr_coeff.rep_month, q_bb_work_up_with_curr_coeff.pc, q_bb_work_up_with_curr_coeff.l_1, q_bb_work_up_with_curr_coeff.l_2, q_bb_work_up_with_curr_coeff.l_3, q_bb_work_up_with_curr_coeff.l_4, q_bb_work_up_with_curr_coeff.l_5, q_bb_work_up_with_curr_coeff.l_6, q_bb_work_up_with_curr_coeff.rs_currency
ORDER BY q_bb_work_up_with_curr_coeff.rep_month, q_bb_work_up_with_curr_coeff.pc, q_bb_work_up_with_curr_coeff.l_1, q_bb_work_up_with_curr_coeff.l_2, q_bb_work_up_with_curr_coeff.l_3, q_bb_work_up_with_curr_coeff.l_4, q_bb_work_up_with_curr_coeff.l_5, q_bb_work_up_with_curr_coeff.l_6, q_bb_work_up_with_curr_coeff.month
PIVOT q_bb_work_up_with_curr_coeff.month;

CREATE OR REPLACE VIEW -- not ok
q_bb_up_with_market_coeff_crosstab AS
transform sum(q_bb_work_up_with_market_coeff.up_with_coeff) AS sumofup_with_coeff
SELECT q_bb_work_up_with_market_coeff.rep_month, q_bb_work_up_with_market_coeff.pc, q_bb_work_up_with_market_coeff.l_1, q_bb_work_up_with_market_coeff.l_2, q_bb_work_up_with_market_coeff.l_3, q_bb_work_up_with_market_coeff.l_4, q_bb_work_up_with_market_coeff.l_5, q_bb_work_up_with_market_coeff.l_6, q_bb_work_up_with_market_coeff.currency
FROM q_bb_work_up_with_market_coeff
GROUP BY q_bb_work_up_with_market_coeff.rep_month, q_bb_work_up_with_market_coeff.pc, q_bb_work_up_with_market_coeff.l_1, q_bb_work_up_with_market_coeff.l_2, q_bb_work_up_with_market_coeff.l_3, q_bb_work_up_with_market_coeff.l_4, q_bb_work_up_with_market_coeff.l_5, q_bb_work_up_with_market_coeff.l_6, q_bb_work_up_with_market_coeff.currency
PIVOT q_bb_work_up_with_market_coeff.g_month;

CREATE OR REPLACE VIEW -- not ok
q_bb_up_without_coeff_crosstab AS
transform sum(q_bb_work_up_without_coeff.unit_price_planned) AS sumofunit_price_planned
SELECT q_bb_work_up_without_coeff.rep_month, q_bb_work_up_without_coeff.pc, q_bb_work_up_without_coeff.l_1, q_bb_work_up_without_coeff.l_2, q_bb_work_up_without_coeff.l_3, q_bb_work_up_without_coeff.l_4, q_bb_work_up_without_coeff.l_5, q_bb_work_up_without_coeff.l_6, q_bb_work_up_without_coeff.rs_currency
FROM q_bb_work_up_without_coeff
GROUP BY q_bb_work_up_without_coeff.rep_month, q_bb_work_up_without_coeff.pc, q_bb_work_up_without_coeff.l_1, q_bb_work_up_without_coeff.l_2, q_bb_work_up_without_coeff.l_3, q_bb_work_up_without_coeff.l_4, q_bb_work_up_without_coeff.l_5, q_bb_work_up_without_coeff.l_6, q_bb_work_up_without_coeff.rs_currency
PIVOT q_bb_work_up_without_coeff.exp_base_mon;

CREATE OR REPLACE VIEW -- ok
q_bb_work_up_with_curr_coeff AS
SELECT q_bb_analysis_activem_with_prices.rep_month, q_bb_analysis_activem_with_prices.pc, q_bb_analysis_activem_with_prices.l_1, q_bb_analysis_activem_with_prices.l_2, q_bb_analysis_activem_with_prices.l_3, q_bb_analysis_activem_with_prices.l_4, q_bb_analysis_activem_with_prices.l_5, q_bb_analysis_activem_with_prices.l_6, q_bb_analysis_activem_with_prices.exp_base_mon AS month, sum(an_rs_quantity*up_cost*k_usd*k_eur) AS up, q_bb_curr_escalation_rates.rs_currency
FROM q_bb_analysis_activem_with_prices LEFT JOIN q_bb_curr_escalation_rates ON (q_bb_analysis_activem_with_prices.rep_month = q_bb_curr_escalation_rates.rep_month) AND (q_bb_analysis_activem_with_prices.pc = q_bb_curr_escalation_rates.pc) AND (q_bb_analysis_activem_with_prices.l_1 = q_bb_curr_escalation_rates.l_1) AND (q_bb_analysis_activem_with_prices.l_2 = q_bb_curr_escalation_rates.l_2) AND (q_bb_analysis_activem_with_prices.l_3 = q_bb_curr_escalation_rates.l_3) AND (q_bb_analysis_activem_with_prices.l_4 = q_bb_curr_escalation_rates.l_4) AND (q_bb_analysis_activem_with_prices.l_5 = q_bb_curr_escalation_rates.l_5) AND (q_bb_analysis_activem_with_prices.l_6 = q_bb_curr_escalation_rates.l_6) AND (q_bb_analysis_activem_with_prices.rs_l1 = q_bb_curr_escalation_rates.rs_l1) AND (q_bb_analysis_activem_with_prices.rs_l2 = q_bb_curr_escalation_rates.rs_l2) AND (q_bb_analysis_activem_with_prices.rs_l3 = q_bb_curr_escalation_rates.rs_l3) AND (q_bb_analysis_activem_with_prices.rs_l4 = q_bb_curr_escalation_rates.rs_l4) AND (q_bb_analysis_activem_with_prices.currency = q_bb_curr_escalation_rates.rs_currency) AND (q_bb_analysis_activem_with_prices.exp_base_mon = q_bb_curr_escalation_rates.month)
GROUP BY q_bb_analysis_activem_with_prices.rep_month, q_bb_analysis_activem_with_prices.pc, q_bb_analysis_activem_with_prices.l_1, q_bb_analysis_activem_with_prices.l_2, q_bb_analysis_activem_with_prices.l_3, q_bb_analysis_activem_with_prices.l_4, q_bb_analysis_activem_with_prices.l_5, q_bb_analysis_activem_with_prices.l_6, q_bb_analysis_activem_with_prices.exp_base_mon, q_bb_curr_escalation_rates.rs_currency
ORDER BY q_bb_analysis_activem_with_prices.rep_month, q_bb_analysis_activem_with_prices.pc, q_bb_analysis_activem_with_prices.l_1, q_bb_analysis_activem_with_prices.l_2, q_bb_analysis_activem_with_prices.l_3, q_bb_analysis_activem_with_prices.l_4, q_bb_analysis_activem_with_prices.l_5, q_bb_analysis_activem_with_prices.l_6, q_bb_analysis_activem_with_prices.exp_base_mon, sum(an_rs_quantity*up_cost*k_usd*k_eur);

CREATE OR REPLACE VIEW -- ok
q_bb_work_up_with_market_coeff AS
SELECT q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.g_month, sum(an_rs_quantity*up_cost*up_cost_coeff) AS up_with_coeff, q_bb_res_up_market_coeff.currency
FROM q_bb_res_up_market_coeff
GROUP BY q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.g_month, q_bb_res_up_market_coeff.currency;

CREATE OR REPLACE VIEW -- ok
q_bb_work_up_without_coeff AS
SELECT sum((an_rs_quantity*up_cost)) AS unit_price_planned, q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.rs_currency
FROM q_bb_up_pre_coeff_activem_indexes
GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.rs_currency;

CREATE OR REPLACE VIEW -- not ok
q_budget_allprojects_detailed_report AS
SELECT q_cb_allprojects_report_data.rep_month, q_cb_allprojects_report_data.pc, l_1+'.'+l_2+'.'+l_3+'.'+l_4+'.'+l_5+'.'+l_6 AS l_comb, q_cb_allprojects_report_data.DESC_tr_l6, q_cb_allprojects_report_data.currency, sum(q_cb_allprojects_report_data.incomegt) AS incomegt, sum(q_cb_allprojects_report_data.expensegt) AS expensegt, sum(q_cb_allprojects_report_data.profitgt) AS profitgt, sum(q_cb_allprojects_report_data.incomert) AS incomert, sum(q_cb_allprojects_report_data.expensert) AS expensert, sum(q_cb_allprojects_report_data.profitrt) AS profitrt, sum(q_cb_allprojects_report_data.incomerem) AS incomerem, sum(q_cb_allprojects_report_data.expenserem) AS expenserem, sum(q_cb_allprojects_report_data.profitrem) AS profitrem, t_001_projects.r03_s_name
FROM q_cb_allprojects_report_data LEFT JOIN t_001_projects ON q_cb_allprojects_report_data.pc = t_001_projects.p_code
GROUP BY q_cb_allprojects_report_data.rep_month, q_cb_allprojects_report_data.pc, l_1+'.'+l_2+'.'+l_3+'.'+l_4+'.'+l_5+'.'+l_6, q_cb_allprojects_report_data.DESC_tr_l6, q_cb_allprojects_report_data.currency, t_001_projects.r03_s_name
HAVING (((q_cb_allprojects_report_data.rep_month)=forms!management!cbo_date_by_project) AND ((t_001_projects.r03_s_name)=forms!management!cbo_project));

CREATE OR REPLACE VIEW -- not ok 
q_budget_project_months AS
SELECT 
rep_month,
pc,
name,
'güncel' AS budget_type
FROM q_cb_project_months
UNION
SELECT
rep_month,
pc,
name,
'baz' AS budget_type
FROM q_bb_project_months;

CREATE OR REPLACE VIEW -- not ok
q_budget_wbs_UNION AS
SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM
q_first_budget_gt

union

SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_second_budget_gt

union

SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_first_budget_rt

UNION SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_second_budget_rt;

CREATE OR REPLACE VIEW -- not ok
q_budget_wbs_union_projects AS
SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_first_budget_gt

union

SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_second_budget_gt

union

SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

	FROM 
q_first_budget_rt

UNION SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6

FROM 
q_second_budget_rt;

CREATE OR REPLACE VIEW -- ok
q_cb_active_months_res_qty AS
SELECT t_pl_analysis.rep_month, t_pl_analysis.p01_code AS pc, q_cb_qty_activem_works.exp_cb_mon, t_pl_analysis.an_rs_quantity, t_pl_analysis.key_r4, q_cb_qty_activem_works.key_r_pc_l6, t_pl_analysis.key_full, t_pl_analysis.l_1, t_pl_analysis.l_2, t_pl_analysis.l_3, t_pl_analysis.rs_l1, t_pl_analysis.rs_l2, t_pl_analysis.rs_l3, t_pl_analysis.rs_l4, t_pl_analysis.l_4, t_pl_analysis.l_5, t_pl_analysis.l_6, t_pl_analysis.key_r4_simple
FROM q_cb_qty_activem_works LEFT JOIN t_pl_analysis ON q_cb_qty_activem_works.key_r_pc_l6 = t_pl_analysis.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_cb_active_months_res_qty_mod AS
SELECT q_cb_active_months_res_qty.rep_month, q_cb_active_months_res_qty.pc, q_cb_active_months_res_qty.l_1, q_cb_active_months_res_qty.l_2, q_cb_active_months_res_qty.l_3, q_cb_active_months_res_qty.l_4, q_cb_active_months_res_qty.l_5, q_cb_active_months_res_qty.l_6, q_cb_active_months_res_qty.exp_cb_mon, q_cb_active_months_res_qty.rs_l1, q_cb_active_months_res_qty.rs_l2, q_cb_active_months_res_qty.rs_l3, q_cb_active_months_res_qty.rs_l4, r4_code.currency AS rs_currency, q_cb_active_months_res_qty.an_rs_quantity, q_cb_active_months_res_qty.key_r4_simple, q_cb_active_months_res_qty.key_full, q_cb_active_months_res_qty.key_r_pc_l6, q_cb_active_months_res_qty.key_r4
FROM q_cb_active_months_res_qty LEFT JOIN r4_code ON q_cb_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple
WHERE q_cb_active_months_res_qty.rep_month = (Select rep_month from q_rep_month_max_val);

CREATE OR REPLACE VIEW -- not ok
q_cb_allprojects_report_currmonth_data AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.DESC_tr_l2, t_cb_profit_total_st.DESC_tr_l3, t_cb_profit_total_st.DESC_tr_l6, sum(t_cb_profit_total_st.income) AS income, sum(t_cb_profit_total_st.expense) AS expense, sum(t_cb_profit_total_st.profit) AS profit, t_cb_profit_total_st.currency
FROM t_cb_profit_total_st
GROUP BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.month, t_cb_profit_total_st.DESC_tr_l2, t_cb_profit_total_st.DESC_tr_l3, t_cb_profit_total_st.DESC_tr_l6, t_cb_profit_total_st.currency
HAVING (((t_cb_profit_total_st.pc)="mbe" )) AND t_cb_profit_total_st.month<=#2022/07/01#;

CREATE OR REPLACE VIEW -- not ok
q_cb_allprojects_report_data AS
SELECT q_cb_summary_report_union.rep_month, q_cb_summary_report_union.pc, q_cb_summary_report_union.l_1, q_cb_summary_report_union.l_2, q_cb_summary_report_union.l_3, q_cb_summary_report_union.l_4, q_cb_summary_report_union.l_5, q_cb_summary_report_union.l_6, q_cb_summary_report_union.currency, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, sum(iif(q_cb_allprojects_report_endproject_data.income is null,"0",q_cb_allprojects_report_endproject_data.income)) AS incomegt, sum(iif(q_cb_allprojects_report_endproject_data.expense is null,"0",q_cb_allprojects_report_endproject_data.expense)) AS expensegt, incomegt-expensegt AS profitgt, sum(iif(q_cb_summary_report_currmonth_data_group.income is null,"0",q_cb_summary_report_currmonth_data_group.income)) AS incomert, sum(iif(q_cb_summary_report_currmonth_data_group.expense is null,"0",q_cb_summary_report_currmonth_data_group.expense)) AS expensert, sum(iif(q_cb_summary_report_currmonth_data_group.profit is null,"0",q_cb_summary_report_currmonth_data_group.profit)) AS profitrt, incomegt-incomert AS incomerem, expensegt-expensert AS expenserem, profitgt-profitrt AS profitrem, c6_code.DESC_tr_l6
FROM ((((q_cb_summary_report_UNION LEFT JOIN q_cb_allprojects_report_endproject_data ON (q_cb_summary_report_union.currency = q_cb_allprojects_report_endproject_data.currency) AND (q_cb_summary_report_union.l_6 = q_cb_allprojects_report_endproject_data.l_6) AND (q_cb_summary_report_union.l_5 = q_cb_allprojects_report_endproject_data.l_5) AND (q_cb_summary_report_union.l_4 = q_cb_allprojects_report_endproject_data.l_4) AND (q_cb_summary_report_union.l_3 = q_cb_allprojects_report_endproject_data.l_3) AND (q_cb_summary_report_union.l_2 = q_cb_allprojects_report_endproject_data.l_2) AND (q_cb_summary_report_union.l_1 = q_cb_allprojects_report_endproject_data.l_1) AND (q_cb_summary_report_union.pc = q_cb_allprojects_report_endproject_data.pc) AND (q_cb_summary_report_union.rep_month = q_cb_allprojects_report_endproject_data.rep_month)) LEFT JOIN c6_code ON (q_cb_summary_report_union.l_6 = c6_code.c_l6) AND (q_cb_summary_report_union.l_5 = c6_code.c_l5) AND (q_cb_summary_report_union.l_4 = c6_code.c_l4) AND (q_cb_summary_report_union.l_3 = c6_code.c_l3) AND (q_cb_summary_report_union.l_2 = c6_code.c_l2) AND (q_cb_summary_report_union.l_1 = c6_code.c_l1)) LEFT JOIN c3_code ON (q_cb_summary_report_union.l_3 = c3_code.c_l3) AND (q_cb_summary_report_union.l_2 = c3_code.c_l2) AND (q_cb_summary_report_union.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_cb_summary_report_union.l_2 = c2_code.c_l2) AND (q_cb_summary_report_union.l_1 = c2_code.c_l1)) LEFT JOIN q_cb_summary_report_currmonth_data_group ON (q_cb_summary_report_union.currency = q_cb_summary_report_currmonth_data_group.currency) AND (q_cb_summary_report_union.l_6 = q_cb_summary_report_currmonth_data_group.l_6) AND (q_cb_summary_report_union.l_5 = q_cb_summary_report_currmonth_data_group.l_5) AND (q_cb_summary_report_union.l_4 = q_cb_summary_report_currmonth_data_group.l_4) AND (q_cb_summary_report_union.l_3 = q_cb_summary_report_currmonth_data_group.l_3) AND (q_cb_summary_report_union.l_2 = q_cb_summary_report_currmonth_data_group.l_2) AND (q_cb_summary_report_union.l_1 = q_cb_summary_report_currmonth_data_group.l_1) AND (q_cb_summary_report_union.pc = q_cb_summary_report_currmonth_data_group.pc) AND (q_cb_summary_report_union.rep_month = q_cb_summary_report_currmonth_data_group.rep_month)
GROUP BY q_cb_summary_report_union.rep_month, q_cb_summary_report_union.pc, q_cb_summary_report_union.l_1, q_cb_summary_report_union.l_2, q_cb_summary_report_union.l_3, q_cb_summary_report_union.l_4, q_cb_summary_report_union.l_5, q_cb_summary_report_union.l_6, q_cb_summary_report_union.currency, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, c6_code.DESC_tr_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_allprojects_report_endproject_data AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.DESC_tr_l2, t_cb_profit_total_st.DESC_tr_l3, t_cb_profit_total_st.DESC_tr_l6, sum(t_cb_profit_total_st.income) AS income, sum(t_cb_profit_total_st.expense) AS expense, sum(t_cb_profit_total_st.profit) AS profit, t_cb_profit_total_st.currency
FROM t_cb_profit_total_st
GROUP BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.DESC_tr_l2, t_cb_profit_total_st.DESC_tr_l3, t_cb_profit_total_st.DESC_tr_l6, t_cb_profit_total_st.currency
HAVING (((t_cb_profit_total_st.pc)="mbe" ));

CREATE OR REPLACE VIEW -- ok
q_cb_analysis_activem_with_prices AS
SELECT q_cb_active_months_res_qty.rep_month, q_cb_active_months_res_qty.pc, q_cb_active_months_res_qty.exp_cb_mon, q_cb_active_months_res_qty.an_rs_quantity, q_cb_active_months_res_qty.key_r4, q_cb_active_months_res_qty.key_r_pc_l6, q_cb_active_months_res_qty.key_full, t_pl_res_up.up_cost, q_cb_active_months_res_qty.l_1, q_cb_active_months_res_qty.l_2, q_cb_active_months_res_qty.l_3, q_cb_active_months_res_qty.l_4, q_cb_active_months_res_qty.l_5, q_cb_active_months_res_qty.l_6, q_cb_active_months_res_qty.rs_l1, q_cb_active_months_res_qty.rs_l2, q_cb_active_months_res_qty.rs_l3, q_cb_active_months_res_qty.rs_l4, r4_code.currency, q_cb_active_months_res_qty.key_r4_simple
FROM (q_cb_active_months_res_qty LEFT JOIN t_pl_res_up ON q_cb_active_months_res_qty.key_r4 = t_pl_res_up.key_r4) LEFT JOIN r4_code ON q_cb_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple;

CREATE OR REPLACE VIEW -- ok
q_cb_analysis_activem_with_prices_mod AS
SELECT q_cb_active_months_res_qty_mod.rep_month, q_cb_active_months_res_qty_mod.pc, q_cb_active_months_res_qty_mod.rs_l1, q_cb_active_months_res_qty_mod.rs_l2, q_cb_active_months_res_qty_mod.rs_l3, q_cb_active_months_res_qty_mod.rs_l4, q_cb_active_months_res_qty_mod.l_1, q_cb_active_months_res_qty_mod.l_2, q_cb_active_months_res_qty_mod.l_3, q_cb_active_months_res_qty_mod.l_4, q_cb_active_months_res_qty_mod.l_5, q_cb_active_months_res_qty_mod.l_6, q_cb_active_months_res_qty_mod.exp_cb_mon, q_cb_active_months_res_qty_mod.rs_currency, q_cb_active_months_res_qty_mod.an_rs_quantity, t_pl_res_up.up_cost, q_cb_active_months_res_qty_mod.key_r4, q_cb_active_months_res_qty_mod.key_r_pc_l6, q_cb_active_months_res_qty_mod.key_full, q_cb_active_months_res_qty_mod.key_r4_simple
FROM q_cb_active_months_res_qty_mod LEFT JOIN t_pl_res_up ON q_cb_active_months_res_qty_mod.key_r4 = t_pl_res_up.key_r4;

CREATE OR REPLACE VIEW -- not ok
q_cb_cons_report_currmonth_data AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, sum(t_cb_profit_usd_st.income) AS income, sum(t_cb_profit_usd_st.expense) AS expense, sum(t_cb_profit_usd_st.profit) AS profit, t_cb_profit_usd_st.currency
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency, t_cb_profit_usd_st.month
HAVING t_cb_profit_usd_st.month<=#2022/07/01#;

CREATE OR REPLACE VIEW -- not ok
q_cb_cons_report_currmonth_data_group AS
SELECT q_cb_cons_report_currmonth_data.rep_month, q_cb_cons_report_currmonth_data.l_1, q_cb_cons_report_currmonth_data.l_2, q_cb_cons_report_currmonth_data.l_3, q_cb_cons_report_currmonth_data.l_4, q_cb_cons_report_currmonth_data.l_5, q_cb_cons_report_currmonth_data.l_6, q_cb_cons_report_currmonth_data.DESC_tr_l2, q_cb_cons_report_currmonth_data.DESC_tr_l3, q_cb_cons_report_currmonth_data.DESC_tr_l6, sum(q_cb_cons_report_currmonth_data.income) AS income, sum(q_cb_cons_report_currmonth_data.expense) AS expense, sum(q_cb_cons_report_currmonth_data.profit) AS profit, q_cb_cons_report_currmonth_data.currency
FROM q_cb_cons_report_currmonth_data
GROUP BY q_cb_cons_report_currmonth_data.rep_month, q_cb_cons_report_currmonth_data.l_1, q_cb_cons_report_currmonth_data.l_2, q_cb_cons_report_currmonth_data.l_3, q_cb_cons_report_currmonth_data.l_4, q_cb_cons_report_currmonth_data.l_5, q_cb_cons_report_currmonth_data.l_6, q_cb_cons_report_currmonth_data.DESC_tr_l2, q_cb_cons_report_currmonth_data.DESC_tr_l3, q_cb_cons_report_currmonth_data.DESC_tr_l6, q_cb_cons_report_currmonth_data.currency;

CREATE OR REPLACE VIEW -- not ok
q_cb_cons_report_data AS
SELECT q_cb_cons_report_union.rep_month, q_cb_cons_report_union.l_1, q_cb_cons_report_union.l_2, q_cb_cons_report_union.l_3, q_cb_cons_report_union.l_4, q_cb_cons_report_union.l_5, q_cb_cons_report_union.l_6, q_cb_cons_report_union.currency, sum(iif(q_cb_cons_report_endproject_data.income is null,"0",q_cb_cons_report_endproject_data.income)) AS incomegt, sum(iif(q_cb_cons_report_endproject_data.expense is null,"0",q_cb_cons_report_endproject_data.expense)) AS expensegt, incomegt-expensegt AS profitgt, sum(iif(q_cb_cons_report_currmonth_data_group.income is null,"0",q_cb_cons_report_currmonth_data_group.income)) AS incomert, sum(iif(q_cb_cons_report_currmonth_data_group.expense is null,"0",q_cb_cons_report_currmonth_data_group.expense)) AS expensert, incomert-expensert AS profitrt, c6_code.DESC_tr_l6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, incomegt-incomert AS incomerem, expensegt-expensert AS expenserem, profitgt-profitrt AS profitrem
FROM ((((q_cb_cons_report_UNION LEFT JOIN q_cb_cons_report_currmonth_data_group ON (q_cb_cons_report_union.rep_month = q_cb_cons_report_currmonth_data_group.rep_month) AND (q_cb_cons_report_union.l_1 = q_cb_cons_report_currmonth_data_group.l_1) AND (q_cb_cons_report_union.l_2 = q_cb_cons_report_currmonth_data_group.l_2) AND (q_cb_cons_report_union.l_3 = q_cb_cons_report_currmonth_data_group.l_3) AND (q_cb_cons_report_union.l_4 = q_cb_cons_report_currmonth_data_group.l_4) AND (q_cb_cons_report_union.l_5 = q_cb_cons_report_currmonth_data_group.l_5) AND (q_cb_cons_report_union.l_6 = q_cb_cons_report_currmonth_data_group.l_6) AND (q_cb_cons_report_union.currency = q_cb_cons_report_currmonth_data_group.currency)) LEFT JOIN q_cb_cons_report_endproject_data ON (q_cb_cons_report_union.rep_month = q_cb_cons_report_endproject_data.rep_month) AND (q_cb_cons_report_union.l_1 = q_cb_cons_report_endproject_data.l_1) AND (q_cb_cons_report_union.l_2 = q_cb_cons_report_endproject_data.l_2) AND (q_cb_cons_report_union.l_3 = q_cb_cons_report_endproject_data.l_3) AND (q_cb_cons_report_union.l_4 = q_cb_cons_report_endproject_data.l_4) AND (q_cb_cons_report_union.l_5 = q_cb_cons_report_endproject_data.l_5) AND (q_cb_cons_report_union.l_6 = q_cb_cons_report_endproject_data.l_6) AND (q_cb_cons_report_union.currency = q_cb_cons_report_endproject_data.currency)) LEFT JOIN c6_code ON (q_cb_cons_report_union.l_1 = c6_code.c_l1) AND (q_cb_cons_report_union.l_2 = c6_code.c_l2) AND (q_cb_cons_report_union.l_3 = c6_code.c_l3) AND (q_cb_cons_report_union.l_4 = c6_code.c_l4) AND (q_cb_cons_report_union.l_5 = c6_code.c_l5) AND (q_cb_cons_report_union.l_6 = c6_code.c_l6)) LEFT JOIN c2_code ON (q_cb_cons_report_union.l_1 = c2_code.c_l1) AND (q_cb_cons_report_union.l_2 = c2_code.c_l2)) LEFT JOIN c3_code ON (q_cb_cons_report_union.l_1 = c3_code.c_l1) AND (q_cb_cons_report_union.l_2 = c3_code.c_l2) AND (q_cb_cons_report_union.l_3 = c3_code.c_l3)
GROUP BY q_cb_cons_report_union.rep_month, q_cb_cons_report_union.l_1, q_cb_cons_report_union.l_2, q_cb_cons_report_union.l_3, q_cb_cons_report_union.l_4, q_cb_cons_report_union.l_5, q_cb_cons_report_union.l_6, q_cb_cons_report_union.currency, c6_code.DESC_tr_l6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3;

CREATE OR REPLACE VIEW -- not ok
q_cb_cons_report_endproject_data AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, sum(t_cb_profit_usd_st.income) AS income, sum(t_cb_profit_usd_st.expense) AS expense, sum(t_cb_profit_usd_st.profit) AS profit, t_cb_profit_usd_st.currency
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency;

CREATE OR REPLACE VIEW -- not ok
q_cb_cons_report_UNION AS
SELECT 
rep_month,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency
FROM 
q_cb_cons_report_currmonth_data

UNION SELECT 
rep_month,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency

FROM 
q_cb_cons_report_endproject_data;

CREATE OR REPLACE VIEW -- ok
q_cb_curr_base_month AS
SELECT q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month
FROM t_rep_month right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

CREATE OR REPLACE VIEW -- ok
q_cb_curr_base_month_mod AS
SELECT q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month
FROM t_rep_month right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

CREATE OR REPLACE VIEW -- ok
q_cb_curr_base_val AS
SELECT q_cb_curr_base_month.rep_month, q_cb_curr_base_month.rep_month_date, mon_curr_rates.r_eur_eur, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_try_eur, mon_curr_rates.r_try_try, mon_curr_rates.r_try_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, mon_curr_rates.r_usd_usd
FROM q_cb_curr_base_month LEFT JOIN mon_curr_rates ON (q_cb_curr_base_month.rep_month_date = mon_curr_rates.month) AND (q_cb_curr_base_month.rep_month = mon_curr_rates.rep_month)
GROUP BY q_cb_curr_base_month.rep_month, q_cb_curr_base_month.rep_month_date, mon_curr_rates.r_eur_eur, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_try_eur, mon_curr_rates.r_try_try, mon_curr_rates.r_try_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, mon_curr_rates.r_usd_usd;

CREATE OR REPLACE VIEW -- not ok
q_cb_curr_base_val_mod AS
SELECT q_cb_curr_base_month.rep_month_date, q_monthly_curr_rates_mod_crosstab.r_eur_eur, q_monthly_curr_rates_mod_crosstab.r_eur_try, q_monthly_curr_rates_mod_crosstab.r_eur_usd, q_monthly_curr_rates_mod_crosstab.r_try_eur, q_monthly_curr_rates_mod_crosstab.r_try_try, q_monthly_curr_rates_mod_crosstab.r_try_usd, q_monthly_curr_rates_mod_crosstab.r_usd_eur, q_monthly_curr_rates_mod_crosstab.r_usd_try, q_monthly_curr_rates_mod_crosstab.r_usd_usd, q_cb_curr_base_month.rep_month
FROM q_cb_curr_base_month LEFT JOIN q_monthly_curr_rates_mod_crosstab ON q_cb_curr_base_month.rep_month_date = q_monthly_curr_rates_mod_crosstab.month
GROUP BY q_cb_curr_base_month.rep_month_date, q_monthly_curr_rates_mod_crosstab.r_eur_eur, q_monthly_curr_rates_mod_crosstab.r_eur_try, q_monthly_curr_rates_mod_crosstab.r_eur_usd, q_monthly_curr_rates_mod_crosstab.r_try_eur, q_monthly_curr_rates_mod_crosstab.r_try_try, q_monthly_curr_rates_mod_crosstab.r_try_usd, q_monthly_curr_rates_mod_crosstab.r_usd_eur, q_monthly_curr_rates_mod_crosstab.r_usd_try, q_monthly_curr_rates_mod_crosstab.r_usd_usd, q_cb_curr_base_month.rep_month;

CREATE OR REPLACE VIEW -- ok
q_cb_curr_escalation_rates AS
SELECT q_cb_active_months_res_qty.rep_month, q_cb_active_months_res_qty.pc, q_cb_active_months_res_qty.l_1, q_cb_active_months_res_qty.l_2, q_cb_active_months_res_qty.l_3, q_cb_active_months_res_qty.l_4, q_cb_active_months_res_qty.l_5, q_cb_active_months_res_qty.l_6, q_cb_active_months_res_qty.exp_cb_mon AS month, q_cb_active_months_res_qty.rs_l1, q_cb_active_months_res_qty.rs_l2, q_cb_active_months_res_qty.rs_l3,q_cb_active_months_res_qty.rs_l4, 
CASE WHEN (currency='try' AND w_inf_usd<>0) THEN 1+round(rt_usd_try*w_inf_usd,6) ELSE CASE WHEN (currency='eur' AND w_inf_usd<>0) THEN 1+round(rt_usd_eur*w_inf_usd,6) ELSE 1 END END AS k_usd, 
CASE WHEN (currency='try' AND w_inf_eur<>0) THEN 1+round(rt_eur_try*w_inf_eur,6) ELSE CASE WHEN (currency='usd' AND w_inf_eur<>0) THEN 1+round(rt_eur_usd*w_inf_eur,6) ELSE 1 END END AS k_eur, r4_code.w_inf_usd, r4_code.w_inf_eur, r4_code.currency AS rs_currency, q_cb_active_months_res_qty.key_r4_simple, q_cb_active_months_res_qty.key_full, q_cb_active_months_res_qty.key_r_pc_l6, q_cb_active_months_res_qty.key_r4, key_full || '.' || r4_code.currency || '.' || q_cb_active_months_res_qty.exp_cb_mon AS key_full_comb
FROM (q_cb_active_months_res_qty LEFT JOIN q_cb_monthly_curr_rates_inc ON (q_cb_active_months_res_qty.rep_month = q_cb_monthly_curr_rates_inc.rep_month) AND (q_cb_active_months_res_qty.pc = q_cb_monthly_curr_rates_inc.pc) AND (q_cb_active_months_res_qty.exp_cb_mon = q_cb_monthly_curr_rates_inc.exp_cb_mon)) LEFT JOIN r4_code ON q_cb_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple ;

CREATE OR REPLACE VIEW -- not ok
q_cb_curr_escalation_rates_mod AS
SELECT q_cb_active_months_res_qty_mod.rep_month, q_cb_active_months_res_qty_mod.pc, q_cb_active_months_res_qty_mod.l_1, q_cb_active_months_res_qty_mod.l_2, q_cb_active_months_res_qty_mod.l_3, q_cb_active_months_res_qty_mod.l_4, q_cb_active_months_res_qty_mod.l_5, q_cb_active_months_res_qty_mod.l_6, q_cb_active_months_res_qty_mod.exp_cb_mon AS month, q_cb_active_months_res_qty_mod.rs_l1, q_cb_active_months_res_qty_mod.rs_l2, q_cb_active_months_res_qty_mod.rs_l3, q_cb_active_months_res_qty_mod.rs_l4, iif((currency="try" AND w_inf_usd<>0),1+round(rt_usd_try*w_inf_usd,6),(iif(currency="eur" AND w_inf_usd<>0,1+round(rt_usd_eur*w_inf_usd,6),1))) AS k_usd, iif((currency="try" AND w_inf_eur<>0),1+round(rt_eur_try*w_inf_eur,6),(iif(currency="usd" AND w_inf_eur<>0,1+round(rt_eur_usd*w_inf_eur,6),1))) AS k_eur, r4_code.w_inf_usd, r4_code.w_inf_eur, r4_code.currency AS rs_currency, q_cb_active_months_res_qty_mod.key_r4_simple, q_cb_active_months_res_qty_mod.key_full, q_cb_active_months_res_qty_mod.key_r_pc_l6, q_cb_active_months_res_qty_mod.key_r4, key_full & "." & rs_currency & "." & month AS key_full_comb
FROM (q_cb_active_months_res_qty_mod LEFT JOIN q_cb_monthly_curr_rates_inc_mod ON (q_cb_active_months_res_qty_mod.exp_cb_mon = q_cb_monthly_curr_rates_inc_mod.exp_cb_mon) AND (q_cb_active_months_res_qty_mod.pc = q_cb_monthly_curr_rates_inc_mod.pc) AND (q_cb_active_months_res_qty_mod.rep_month = q_cb_monthly_curr_rates_inc_mod.rep_month)) LEFT JOIN r4_code ON q_cb_active_months_res_qty_mod.key_r4_simple = r4_code.key_r4_simple;

CREATE OR REPLACE VIEW -- ok
q_cb_exp AS
SELECT 
*
FROM 
q_pl_exp
		
WHERE total_expense <>0

UNION ALL SELECT 
*
FROM 
t_ac_exp

WHERE exp_ac_exp <>0;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_diff AS
SELECT q_cb_exp_mod.rep_month, q_cb_exp_mod.p01_code, q_cb_exp_mod.l_1, q_cb_exp_mod.l_2, q_cb_exp_mod.l_3, q_cb_exp_mod.l_4, q_cb_exp_mod.l_5, q_cb_exp_mod.l_6, q_cb_exp_mod.month, q_cb_exp_mod.up_curr, q_cb_exp.total_expense AS exp_orj, q_cb_exp_mod.total_expense AS exp_mod, (exp_orj)-(exp_mod) AS diff
FROM q_cb_exp_mod LEFT JOIN q_cb_exp ON (q_cb_exp_mod.rep_month = q_cb_exp.rep_month) AND (q_cb_exp_mod.p01_code = q_cb_exp.p01_code) AND (q_cb_exp_mod.l_1 = q_cb_exp.l_1) AND (q_cb_exp_mod.l_2 = q_cb_exp.l_2) AND (q_cb_exp_mod.l_3 = q_cb_exp.l_3) AND (q_cb_exp_mod.l_4 = q_cb_exp.l_4) AND (q_cb_exp_mod.l_5 = q_cb_exp.l_5) AND (q_cb_exp_mod.l_6 = q_cb_exp.l_6) AND (q_cb_exp_mod.month = q_cb_exp.month) AND (q_cb_exp_mod.up_curr = q_cb_exp.up_curr);

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_eur_with_dummy AS
transform sum(q_cb_exp_eur_with_dummy.eur_expense) AS sumofeur_expense
SELECT q_cb_exp_eur_with_dummy.rep_month, q_cb_exp_eur_with_dummy.pc, q_cb_exp_eur_with_dummy.l_1, q_cb_exp_eur_with_dummy.l_2, q_cb_exp_eur_with_dummy.l_3, q_cb_exp_eur_with_dummy.l_4, q_cb_exp_eur_with_dummy.l_5, q_cb_exp_eur_with_dummy.l_6, q_cb_exp_eur_with_dummy.up_curr_conv
FROM q_cb_exp_eur_with_dummy
GROUP BY q_cb_exp_eur_with_dummy.rep_month, q_cb_exp_eur_with_dummy.pc, q_cb_exp_eur_with_dummy.l_1, q_cb_exp_eur_with_dummy.l_2, q_cb_exp_eur_with_dummy.l_3, q_cb_exp_eur_with_dummy.l_4, q_cb_exp_eur_with_dummy.l_5, q_cb_exp_eur_with_dummy.l_6, q_cb_exp_eur_with_dummy.up_curr_conv
PIVOT q_cb_exp_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_eur_with_dummy_mod AS
transform sum(q_cb_exp_eur_with_dummy_mod.eur_expense) AS sumofeur_expense
SELECT q_cb_exp_eur_with_dummy_mod.rep_month AS expr1, q_cb_exp_eur_with_dummy_mod.p01_code AS expr2, q_cb_exp_eur_with_dummy_mod.l_1 AS expr3, q_cb_exp_eur_with_dummy_mod.l_2 AS expr4, q_cb_exp_eur_with_dummy_mod.l_3 AS expr5, q_cb_exp_eur_with_dummy_mod.l_4 AS expr6, q_cb_exp_eur_with_dummy_mod.l_5 AS expr7, q_cb_exp_eur_with_dummy_mod.l_6 AS expr8, q_cb_exp_eur_with_dummy_mod.up_curr_conv AS expr9
FROM q_cb_exp_eur_with_dummy_mod
WHERE (((q_cb_exp_eur_with_dummy_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
GROUP BY q_cb_exp_eur_with_dummy_mod.rep_month, q_cb_exp_eur_with_dummy_mod.p01_code, q_cb_exp_eur_with_dummy_mod.l_1, q_cb_exp_eur_with_dummy_mod.l_2, q_cb_exp_eur_with_dummy_mod.l_3, q_cb_exp_eur_with_dummy_mod.l_4, q_cb_exp_eur_with_dummy_mod.l_5, q_cb_exp_eur_with_dummy_mod.l_6, q_cb_exp_eur_with_dummy_mod.up_curr_conv
ORDER BY q_cb_exp_eur_with_dummy_mod.rep_month, q_cb_exp_eur_with_dummy_mod.p01_code, q_cb_exp_eur_with_dummy_mod.l_1, q_cb_exp_eur_with_dummy_mod.l_2, q_cb_exp_eur_with_dummy_mod.l_3, q_cb_exp_eur_with_dummy_mod.l_4, q_cb_exp_eur_with_dummy_mod.l_5, q_cb_exp_eur_with_dummy_mod.l_6, q_cb_exp_eur_with_dummy_mod.month
PIVOT q_cb_exp_eur_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_try_with_dummy AS
transform sum(q_cb_exp_try_with_dummy.try_expense) AS sumoftry_expense
SELECT q_cb_exp_try_with_dummy.rep_month, q_cb_exp_try_with_dummy.pc, q_cb_exp_try_with_dummy.l_1, q_cb_exp_try_with_dummy.l_2, q_cb_exp_try_with_dummy.l_3, q_cb_exp_try_with_dummy.l_4, q_cb_exp_try_with_dummy.l_5, q_cb_exp_try_with_dummy.l_6, q_cb_exp_try_with_dummy.up_curr_conv
FROM q_cb_exp_try_with_dummy
GROUP BY q_cb_exp_try_with_dummy.rep_month, q_cb_exp_try_with_dummy.pc, q_cb_exp_try_with_dummy.l_1, q_cb_exp_try_with_dummy.l_2, q_cb_exp_try_with_dummy.l_3, q_cb_exp_try_with_dummy.l_4, q_cb_exp_try_with_dummy.l_5, q_cb_exp_try_with_dummy.l_6, q_cb_exp_try_with_dummy.up_curr_conv
PIVOT q_cb_exp_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_try_with_dummy_mod AS
transform sum(q_cb_exp_try_with_dummy_mod.try_expense) AS sumoftry_expense
SELECT q_cb_exp_try_with_dummy_mod.rep_month AS expr1, q_cb_exp_try_with_dummy_mod.p01_code AS expr2, q_cb_exp_try_with_dummy_mod.l_1 AS expr3, q_cb_exp_try_with_dummy_mod.l_2 AS expr4, q_cb_exp_try_with_dummy_mod.l_3 AS expr5, q_cb_exp_try_with_dummy_mod.l_4 AS expr6, q_cb_exp_try_with_dummy_mod.l_5 AS expr7, q_cb_exp_try_with_dummy_mod.l_6 AS expr8, q_cb_exp_try_with_dummy_mod.up_curr_conv AS expr9
FROM q_cb_exp_try_with_dummy_mod
WHERE (((q_cb_exp_try_with_dummy_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
GROUP BY q_cb_exp_try_with_dummy_mod.rep_month, q_cb_exp_try_with_dummy_mod.p01_code, q_cb_exp_try_with_dummy_mod.l_1, q_cb_exp_try_with_dummy_mod.l_2, q_cb_exp_try_with_dummy_mod.l_3, q_cb_exp_try_with_dummy_mod.l_4, q_cb_exp_try_with_dummy_mod.l_5, q_cb_exp_try_with_dummy_mod.l_6, q_cb_exp_try_with_dummy_mod.up_curr_conv
PIVOT q_cb_exp_try_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_usd_with_dummy AS
transform sum(q_cb_exp_usd_with_dummy.usd_expense) AS sumofusd_expense
SELECT q_cb_exp_usd_with_dummy.rep_month, q_cb_exp_usd_with_dummy.pc, q_cb_exp_usd_with_dummy.l_1, q_cb_exp_usd_with_dummy.l_2, q_cb_exp_usd_with_dummy.l_3, q_cb_exp_usd_with_dummy.l_4, q_cb_exp_usd_with_dummy.l_5, q_cb_exp_usd_with_dummy.l_6, q_cb_exp_usd_with_dummy.up_curr_conv
FROM q_cb_exp_usd_with_dummy
GROUP BY q_cb_exp_usd_with_dummy.rep_month, q_cb_exp_usd_with_dummy.pc, q_cb_exp_usd_with_dummy.l_1, q_cb_exp_usd_with_dummy.l_2, q_cb_exp_usd_with_dummy.l_3, q_cb_exp_usd_with_dummy.l_4, q_cb_exp_usd_with_dummy.l_5, q_cb_exp_usd_with_dummy.l_6, q_cb_exp_usd_with_dummy.up_curr_conv
PIVOT q_cb_exp_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_usd_with_dummy_mod AS
transform sum(q_cb_exp_usd_with_dummy_mod.usd_expense) AS sumofusd_expense
SELECT q_cb_exp_usd_with_dummy_mod.rep_month, q_cb_exp_usd_with_dummy_mod.p01_code AS pc, q_cb_exp_usd_with_dummy_mod.l_1, q_cb_exp_usd_with_dummy_mod.l_2, q_cb_exp_usd_with_dummy_mod.l_3, q_cb_exp_usd_with_dummy_mod.l_4, q_cb_exp_usd_with_dummy_mod.l_5, q_cb_exp_usd_with_dummy_mod.l_6, q_cb_exp_usd_with_dummy_mod.up_curr_conv
FROM q_cb_exp_usd_with_dummy_mod
WHERE (((q_cb_exp_usd_with_dummy_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
GROUP BY q_cb_exp_usd_with_dummy_mod.rep_month, q_cb_exp_usd_with_dummy_mod.p01_code, q_cb_exp_usd_with_dummy_mod.l_1, q_cb_exp_usd_with_dummy_mod.l_2, q_cb_exp_usd_with_dummy_mod.l_3, q_cb_exp_usd_with_dummy_mod.l_4, q_cb_exp_usd_with_dummy_mod.l_5, q_cb_exp_usd_with_dummy_mod.l_6, q_cb_exp_usd_with_dummy_mod.up_curr_conv
PIVOT q_cb_exp_usd_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_with_dummy AS
transform sum(q_cb_exp_with_dummy.total_expense) AS sumoftotal_expense
SELECT q_cb_exp_with_dummy.rep_month, q_cb_exp_with_dummy.p01_code, q_cb_exp_with_dummy.l_1, q_cb_exp_with_dummy.l_2, q_cb_exp_with_dummy.l_3, q_cb_exp_with_dummy.l_4, q_cb_exp_with_dummy.l_5, q_cb_exp_with_dummy.l_6, q_cb_exp_with_dummy.up_curr, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")) AS exc_try, iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_cb_exp_with_dummy
GROUP BY q_cb_exp_with_dummy.rep_month, q_cb_exp_with_dummy.p01_code, q_cb_exp_with_dummy.l_1, q_cb_exp_with_dummy.l_2, q_cb_exp_with_dummy.l_3, q_cb_exp_with_dummy.l_4, q_cb_exp_with_dummy.l_5, q_cb_exp_with_dummy.l_6, q_cb_exp_with_dummy.up_curr, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")), iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")), iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur"))
PIVOT q_cb_exp_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_dist_with_dummy_mod AS
transform sum(q_cb_exp_with_dummy_mod.total_expense) AS sumoftotal_expense
SELECT q_cb_exp_with_dummy_mod.rep_month AS expr1, q_cb_exp_with_dummy_mod.p01_code AS expr2, q_cb_exp_with_dummy_mod.l_1 AS expr3, q_cb_exp_with_dummy_mod.l_2 AS expr4, q_cb_exp_with_dummy_mod.l_3 AS expr5, q_cb_exp_with_dummy_mod.l_4 AS expr6, q_cb_exp_with_dummy_mod.l_5 AS expr7, q_cb_exp_with_dummy_mod.l_6 AS expr8, q_cb_exp_with_dummy_mod.up_curr AS expr9, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")) AS exc_try, iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_cb_exp_with_dummy_mod
WHERE (((q_cb_exp_with_dummy_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
GROUP BY q_cb_exp_with_dummy_mod.rep_month, q_cb_exp_with_dummy_mod.p01_code, q_cb_exp_with_dummy_mod.l_1, q_cb_exp_with_dummy_mod.l_2, q_cb_exp_with_dummy_mod.l_3, q_cb_exp_with_dummy_mod.l_4, q_cb_exp_with_dummy_mod.l_5, q_cb_exp_with_dummy_mod.l_6, q_cb_exp_with_dummy_mod.up_curr, iif(up_curr="eur","r_eur_try",iif(up_curr="usd","r_usd_try","r_try_try")), iif(up_curr="eur","r_eur_usd",iif(up_curr="usd","r_usd_usd","r_try_usd")), iif(up_curr="eur","r_eur_eur",iif(up_curr="usd","r_usd_eur","r_try_eur"))
PIVOT q_cb_exp_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- ok
q_cb_exp_eur AS
SELECT t_q_cb_exp.rep_month, t_q_cb_exp.pc, t_q_cb_exp.l_1, t_q_cb_exp.l_2, t_q_cb_exp.l_3, t_q_cb_exp.l_4, t_q_cb_exp.l_5, t_q_cb_exp.l_6, t_q_cb_exp.month, t_q_cb_exp.total_expense, t_q_cb_exp.up_curr, iif(up_curr='eur',total_expense,iif(up_curr='usd',total_expense*r_usd_eur,total_expense*r_try_eur)) AS eur_expense, 'eur' AS up_curr_conv, t_q_cb_exp.key_r_pc_l6
FROM t_q_cb_exp LEFT JOIN mon_curr_rates ON (t_q_cb_exp.month = mon_curr_rates.month) AND (t_q_cb_exp.rep_month = mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_eur_mod AS
SELECT t_q_cb_exp_mod.rep_month, t_q_cb_exp_mod.p01_code, t_q_cb_exp_mod.l_1, t_q_cb_exp_mod.l_2, t_q_cb_exp_mod.l_3, t_q_cb_exp_mod.l_4, t_q_cb_exp_mod.l_5, t_q_cb_exp_mod.l_6, t_q_cb_exp_mod.month, t_q_cb_exp_mod.total_expense, t_q_cb_exp_mod.up_curr, iif(up_curr='eur',total_expense,iif(up_curr='usd',total_expense*r_usd_eur,total_expense*r_try_eur)) AS eur_expense, 'eur' AS up_curr_conv, t_q_cb_exp_mod.key_r_pc_l6
FROM t_q_cb_exp_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_q_cb_exp_mod.month = q_monthly_curr_rates_mod_crosstab.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_exp_eur

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_eur_with_dummy_mod AS
SELECT 
rep_month,
p01_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_exp_eur_mod


UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_cb_exp_lastm AS
SELECT t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6, max(t_ac_exp.exp_ac_mon) AS lastm
FROM t_ac_exp
GROUP BY t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6;

CREATE OR REPLACE VIEW --ok
q_cb_exp_lastm_mod AS
SELECT q_cb_exp_lastm.rep_month, q_cb_exp_lastm.pc, q_cb_exp_lastm.l_1, q_cb_exp_lastm.l_2, q_cb_exp_lastm.l_3, q_cb_exp_lastm.l_4, q_cb_exp_lastm.l_5, q_cb_exp_lastm.l_6, q_cb_exp_lastm.lastm
FROM q_cb_exp_lastm
WHERE q_cb_exp_lastm.rep_month=(SELECT rep_month FROM q_rep_month_max_val);

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mod AS
SELECT 
*
FROM 
q_pl_exp_mod
		
WHERE total_expense <>0

UNION ALL SELECT 
*
FROM 
q_cb_exp_pre_mod

WHERE total_expense <>0;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mod_mt AS
SELECT q_cb_exp_mod.rep_month, q_cb_exp_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_mod.month, q_cb_exp_mod.total_expense, q_cb_exp_mod.up_curr, q_cb_exp_mod.l_1, q_cb_exp_mod.l_2, q_cb_exp_mod.l_3, q_cb_exp_mod.l_4, q_cb_exp_mod.l_5, q_cb_exp_mod.l_6, q_cb_exp_mod.key_r_pc_l6 into t_q_cb_exp_mod
FROM q_cb_exp_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_exp_mod.l_1 = c3_code.c_l1) AND (q_cb_exp_mod.l_2 = c3_code.c_l2) AND (q_cb_exp_mod.l_3 = c3_code.c_l3)
GROUP BY q_cb_exp_mod.rep_month, q_cb_exp_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_mod.month, q_cb_exp_mod.total_expense, q_cb_exp_mod.up_curr, q_cb_exp_mod.l_1, q_cb_exp_mod.l_2, q_cb_exp_mod.l_3, q_cb_exp_mod.l_4, q_cb_exp_mod.l_5, q_cb_exp_mod.l_6, q_cb_exp_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mod_mt_eur AS
SELECT q_cb_exp_eur_mod.rep_month, q_cb_exp_eur_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_eur_mod.month, q_cb_exp_eur_mod.eur_expense, q_cb_exp_eur_mod.up_curr_conv, q_cb_exp_eur_mod.l_1, q_cb_exp_eur_mod.l_2, q_cb_exp_eur_mod.l_3, q_cb_exp_eur_mod.l_4, q_cb_exp_eur_mod.l_5, q_cb_exp_eur_mod.l_6, q_cb_exp_eur_mod.key_r_pc_l6 into t_q_cb_exp_eur_mod
FROM q_cb_exp_eur_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_exp_eur_mod.l_3 = c3_code.c_l3) AND (q_cb_exp_eur_mod.l_2 = c3_code.c_l2) AND (q_cb_exp_eur_mod.l_1 = c3_code.c_l1)
GROUP BY q_cb_exp_eur_mod.rep_month, q_cb_exp_eur_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_eur_mod.month, q_cb_exp_eur_mod.eur_expense, q_cb_exp_eur_mod.up_curr_conv, q_cb_exp_eur_mod.l_1, q_cb_exp_eur_mod.l_2, q_cb_exp_eur_mod.l_3, q_cb_exp_eur_mod.l_4, q_cb_exp_eur_mod.l_5, q_cb_exp_eur_mod.l_6, q_cb_exp_eur_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mod_mt_try AS
SELECT q_cb_exp_try_mod.rep_month, q_cb_exp_try_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_try_mod.month, q_cb_exp_try_mod.try_expense, q_cb_exp_try_mod.up_curr_conv, q_cb_exp_try_mod.l_1, q_cb_exp_try_mod.l_2, q_cb_exp_try_mod.l_3, q_cb_exp_try_mod.l_4, q_cb_exp_try_mod.l_5, q_cb_exp_try_mod.l_6, q_cb_exp_try_mod.key_r_pc_l6 into t_q_cb_exp_try_mod
FROM q_cb_exp_try_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_exp_try_mod.l_3 = c3_code.c_l3) AND (q_cb_exp_try_mod.l_2 = c3_code.c_l2) AND (q_cb_exp_try_mod.l_1 = c3_code.c_l1)
GROUP BY q_cb_exp_try_mod.rep_month, q_cb_exp_try_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_try_mod.month, q_cb_exp_try_mod.try_expense, q_cb_exp_try_mod.up_curr_conv, q_cb_exp_try_mod.l_1, q_cb_exp_try_mod.l_2, q_cb_exp_try_mod.l_3, q_cb_exp_try_mod.l_4, q_cb_exp_try_mod.l_5, q_cb_exp_try_mod.l_6, q_cb_exp_try_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mod_mt_usd AS
SELECT q_cb_exp_usd_mod.rep_month, q_cb_exp_usd_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_usd_mod.month, q_cb_exp_usd_mod.usd_expense, q_cb_exp_usd_mod.up_curr_conv, q_cb_exp_usd_mod.l_1, q_cb_exp_usd_mod.l_2, q_cb_exp_usd_mod.l_3, q_cb_exp_usd_mod.l_4, q_cb_exp_usd_mod.l_5, q_cb_exp_usd_mod.l_6, q_cb_exp_usd_mod.key_r_pc_l6 into t_q_cb_exp_usd_mod
FROM q_cb_exp_usd_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_exp_usd_mod.l_3 = c3_code.c_l3) AND (q_cb_exp_usd_mod.l_2 = c3_code.c_l2) AND (q_cb_exp_usd_mod.l_1 = c3_code.c_l1)
GROUP BY q_cb_exp_usd_mod.rep_month, q_cb_exp_usd_mod.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_usd_mod.month, q_cb_exp_usd_mod.usd_expense, q_cb_exp_usd_mod.up_curr_conv, q_cb_exp_usd_mod.l_1, q_cb_exp_usd_mod.l_2, q_cb_exp_usd_mod.l_3, q_cb_exp_usd_mod.l_4, q_cb_exp_usd_mod.l_5, q_cb_exp_usd_mod.l_6, q_cb_exp_usd_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mt AS
SELECT q_cb_exp.rep_month, q_cb_exp.p01_code AS pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp.month, sum(q_cb_exp.total_expense) AS total_expense, q_cb_exp.up_curr, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.key_r_pc_l6 into t_q_cb_exp
FROM q_cb_exp LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_exp.l_1 = c3_code.c_l1) AND (q_cb_exp.l_2 = c3_code.c_l2) AND (q_cb_exp.l_3 = c3_code.c_l3)
GROUP BY q_cb_exp.rep_month, q_cb_exp.p01_code, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp.month, q_cb_exp.up_curr, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mt_eur AS
SELECT q_cb_exp_eur.rep_month, q_cb_exp_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_eur.month, sum(q_cb_exp_eur.eur_expense) AS sumofeur_expense, q_cb_exp_eur.up_curr_conv, q_cb_exp_eur.l_1, q_cb_exp_eur.l_2, q_cb_exp_eur.l_3, q_cb_exp_eur.l_4, q_cb_exp_eur.l_5, q_cb_exp_eur.l_6, q_cb_exp_eur.key_r_pc_l6 into t_q_cb_exp_eur
FROM q_cb_exp_eur LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_exp_eur.l_1 = c3_code.c_l1) AND (q_cb_exp_eur.l_2 = c3_code.c_l2) AND (q_cb_exp_eur.l_3 = c3_code.c_l3)
GROUP BY q_cb_exp_eur.rep_month, q_cb_exp_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_eur.month, q_cb_exp_eur.up_curr_conv, q_cb_exp_eur.l_1, q_cb_exp_eur.l_2, q_cb_exp_eur.l_3, q_cb_exp_eur.l_4, q_cb_exp_eur.l_5, q_cb_exp_eur.l_6, q_cb_exp_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mt_try AS
SELECT q_cb_exp_try.rep_month, q_cb_exp_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_try.month, sum(q_cb_exp_try.try_expense) AS try_expense, q_cb_exp_try.up_curr_conv, q_cb_exp_try.l_1, q_cb_exp_try.l_2, q_cb_exp_try.l_3, q_cb_exp_try.l_4, q_cb_exp_try.l_5, q_cb_exp_try.l_6, q_cb_exp_try.key_r_pc_l6 into t_q_cb_exp_try
FROM q_cb_exp_try LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_exp_try.l_1 = c3_code.c_l1) AND (q_cb_exp_try.l_2 = c3_code.c_l2) AND (q_cb_exp_try.l_3 = c3_code.c_l3)
GROUP BY q_cb_exp_try.rep_month, q_cb_exp_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_try.month, q_cb_exp_try.up_curr_conv, q_cb_exp_try.l_1, q_cb_exp_try.l_2, q_cb_exp_try.l_3, q_cb_exp_try.l_4, q_cb_exp_try.l_5, q_cb_exp_try.l_6, q_cb_exp_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_mt_usd AS
SELECT q_cb_exp_usd.rep_month, q_cb_exp_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_usd.month, sum(q_cb_exp_usd.usd_expense) AS usd_expense, q_cb_exp_usd.up_curr_conv, q_cb_exp_usd.l_1, q_cb_exp_usd.l_2, q_cb_exp_usd.l_3, q_cb_exp_usd.l_4, q_cb_exp_usd.l_5, q_cb_exp_usd.l_6, q_cb_exp_usd.key_r_pc_l6 into t_q_cb_exp_usd
FROM q_cb_exp_usd LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_exp_usd.l_1 = c3_code.c_l1) AND (q_cb_exp_usd.l_2 = c3_code.c_l2) AND (q_cb_exp_usd.l_3 = c3_code.c_l3)
GROUP BY q_cb_exp_usd.rep_month, q_cb_exp_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_exp_usd.month, q_cb_exp_usd.up_curr_conv, q_cb_exp_usd.l_1, q_cb_exp_usd.l_2, q_cb_exp_usd.l_3, q_cb_exp_usd.l_4, q_cb_exp_usd.l_5, q_cb_exp_usd.l_6, q_cb_exp_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_cb_exp_pre_mod AS
SELECT t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6, t_ac_exp.exp_ac_mon AS month, t_ac_exp.exp_ac_exp AS total_expense, t_ac_exp.up_curr, t_ac_exp.key_r_pc_l6
FROM t_ac_exp
WHERE (t_ac_exp.rep_month)=(SELECT rep_month FROM q_rep_month_max_val);

CREATE OR REPLACE VIEW -- ok
q_cb_exp_try AS
SELECT t_q_cb_exp.rep_month, t_q_cb_exp.pc, t_q_cb_exp.l_1, t_q_cb_exp.l_2, t_q_cb_exp.l_3, t_q_cb_exp.l_4, t_q_cb_exp.l_5, t_q_cb_exp.l_6, t_q_cb_exp.month, t_q_cb_exp.total_expense, t_q_cb_exp.up_curr, 
CASE WHEN up_curr='try' THEN total_expense ELSE CASE WHEN up_curr='usd' THEN total_expense*r_usd_try ELSE total_expense*r_eur_try END END AS try_expense, 'try' AS up_curr_conv, t_q_cb_exp.key_r_pc_l6
FROM t_q_cb_exp LEFT JOIN mon_curr_rates ON (t_q_cb_exp.month = mon_curr_rates.month) AND (t_q_cb_exp.rep_month = mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_try_mod AS
SELECT t_q_cb_exp_mod.rep_month, t_q_cb_exp_mod.p01_code, t_q_cb_exp_mod.l_1, t_q_cb_exp_mod.l_2, t_q_cb_exp_mod.l_3, t_q_cb_exp_mod.l_4, t_q_cb_exp_mod.l_5, t_q_cb_exp_mod.l_6, t_q_cb_exp_mod.month, t_q_cb_exp_mod.total_expense, t_q_cb_exp_mod.up_curr, CASE WHEN up_curr='try' THEN total_expense ELSE CASE WHEN up_curr='usd' THEN total_expense*r_usd_try else total_expense*r_eur_try end end AS try_expense, 'try' AS up_curr_conv, t_q_cb_exp_mod.key_r_pc_l6
FROM t_q_cb_exp_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_q_cb_exp_mod.month = q_monthly_curr_rates_mod_crosstab.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_expense,
up_curr_conv,
key_r_pc_l6


FROM 
q_cb_exp_try

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_try_with_dummy_mod AS
SELECT 
rep_month,
p01_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_exp_try_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_cb_exp_usd AS
SELECT t_q_cb_exp.rep_month, t_q_cb_exp.pc, t_q_cb_exp.l_1, t_q_cb_exp.l_2, t_q_cb_exp.l_3, t_q_cb_exp.l_4, t_q_cb_exp.l_5, t_q_cb_exp.l_6, t_q_cb_exp.month, t_q_cb_exp.total_expense, t_q_cb_exp.up_curr, CASE WHEN up_curr='usd' THEN total_expense ELSE CASE WHEN up_curr='eur' THEN total_expense*r_eur_usd else total_expense*r_try_usd end end AS usd_expense, 'usd' AS up_curr_conv, t_q_cb_exp.key_r_pc_l6
FROM t_q_cb_exp LEFT JOIN mon_curr_rates ON (t_q_cb_exp.month = mon_curr_rates.month) AND (t_q_cb_exp.rep_month = mon_curr_rates.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_usd_diff AS
SELECT q_cb_exp_usd_mod.rep_month, q_cb_exp_usd_mod.month, q_cb_exp_usd_mod.p01_code, q_cb_exp_usd_mod.l_1, q_cb_exp_usd_mod.l_2, q_cb_exp_usd_mod.l_3, q_cb_exp_usd_mod.l_4, q_cb_exp_usd_mod.l_5, q_cb_exp_usd_mod.l_6, q_cb_exp_usd_mod.up_curr_conv, q_cb_exp_usd.usd_expense AS exp_orj, q_cb_exp_usd_mod.usd_expense AS exp_mod, exp_orj-exp_mod AS diff, q_cb_exp_usd_mod.up_curr
FROM q_cb_exp_usd_mod LEFT JOIN q_cb_exp_usd ON (q_cb_exp_usd_mod.rep_month = q_cb_exp_usd.rep_month) AND (q_cb_exp_usd_mod.p01_code = q_cb_exp_usd.pc) AND (q_cb_exp_usd_mod.l_1 = q_cb_exp_usd.l_1) AND (q_cb_exp_usd_mod.l_2 = q_cb_exp_usd.l_2) AND (q_cb_exp_usd_mod.l_3 = q_cb_exp_usd.l_3) AND (q_cb_exp_usd_mod.l_4 = q_cb_exp_usd.l_4) AND (q_cb_exp_usd_mod.l_5 = q_cb_exp_usd.l_5) AND (q_cb_exp_usd_mod.l_6 = q_cb_exp_usd.l_6) AND (q_cb_exp_usd_mod.month = q_cb_exp_usd.month) AND (q_cb_exp_usd_mod.up_curr = q_cb_exp_usd.up_curr) AND (q_cb_exp_usd_mod.up_curr_conv = q_cb_exp_usd.up_curr_conv)
ORDER BY q_cb_exp_usd_mod.rep_month, q_cb_exp_usd_mod.month, q_cb_exp_usd_mod.p01_code, q_cb_exp_usd_mod.l_1, q_cb_exp_usd_mod.l_2, q_cb_exp_usd_mod.l_3, q_cb_exp_usd_mod.l_4, q_cb_exp_usd_mod.l_5, q_cb_exp_usd_mod.l_6, q_cb_exp_usd_mod.up_curr_conv;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_usd_mod AS
SELECT t_q_cb_exp_mod.rep_month, t_q_cb_exp_mod.p01_code, t_q_cb_exp_mod.l_1, t_q_cb_exp_mod.l_2, t_q_cb_exp_mod.l_3, t_q_cb_exp_mod.l_4, t_q_cb_exp_mod.l_5, t_q_cb_exp_mod.l_6, t_q_cb_exp_mod.month, t_q_cb_exp_mod.total_expense, t_q_cb_exp_mod.up_curr, iif(up_curr="usd",total_expense,iif(up_curr="eur",total_expense*r_eur_usd,total_expense*r_try_usd)) AS usd_expense, "usd" AS up_curr_conv, t_q_cb_exp_mod.key_r_pc_l6
FROM t_q_cb_exp_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_q_cb_exp_mod.month = q_monthly_curr_rates_mod_crosstab.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_exp_usd

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_usd_with_dummy_mod AS
SELECT 
rep_month,
p01_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_expense,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_exp_usd_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_with_dummy AS
SELECT 
*
FROM 
q_cb_exp

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_exp_with_dummy_mod AS
SELECT 
*
FROM 
q_cb_exp_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- ok
q_cb_inc_calculation AS
SELECT t_cb_inc_qty.rep_month, t_cb_inc_qty.pc, t_cb_inc_qty.l_1, t_cb_inc_qty.l_2, t_cb_inc_qty.l_3, t_cb_inc_qty.l_4, t_cb_inc_qty.l_5, t_cb_inc_qty.l_6, t_cb_inc_qty.inc_base_mon, t_cb_inc_wbs.up, t_cb_inc_wbs.currency, up*inc_rate_1*inc_rate_2 AS up_total, t_cb_inc_qty.inc_base_qty,up*inc_rate_1*inc_rate_2*inc_base_qty AS inc_total, t_cb_inc_qty.key_r_pc_l6
FROM ((t_cb_inc_qty LEFT JOIN t_cb_inc_esc_rates_l6 ON (t_cb_inc_qty.inc_base_mon = t_cb_inc_esc_rates_l6.month) AND (t_cb_inc_qty.l_6 = t_cb_inc_esc_rates_l6.c_l6) AND (t_cb_inc_qty.l_5 = t_cb_inc_esc_rates_l6.c_l5) AND (t_cb_inc_qty.l_4 = t_cb_inc_esc_rates_l6.c_l4) AND (t_cb_inc_qty.l_3 = t_cb_inc_esc_rates_l6.c_l3) AND (t_cb_inc_qty.l_2 = t_cb_inc_esc_rates_l6.c_l2) AND (t_cb_inc_qty.l_1 = t_cb_inc_esc_rates_l6.c_l1) AND (t_cb_inc_qty.pc = t_cb_inc_esc_rates_l6.p01_code) AND (t_cb_inc_qty.rep_month = t_cb_inc_esc_rates_l6.rep_month)) LEFT JOIN t_cb_inc_esc_rates_pcode ON (t_cb_inc_qty.inc_base_mon = t_cb_inc_esc_rates_pcode.month) AND (t_cb_inc_qty.pc = t_cb_inc_esc_rates_pcode.p01_code) AND (t_cb_inc_qty.rep_month = t_cb_inc_esc_rates_pcode.rep_month)) LEFT JOIN t_cb_inc_wbs ON t_cb_inc_qty.key_r_pc_l6 = t_cb_inc_wbs.key_r_pc_l6, LATERAL
(SELECT CASE WHEN inc_rate is null THEN 1 ELSE 1+inc_rate END, CASE WHEN inc_rate_pcode is null then 1 else 1+inc_rate_pcode END) AS s1(inc_rate_1, inc_rate_2);

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_eur_with_dummy_crosstab AS
transform sum(q_cb_inc_eur_with_dummy.eur_income) AS eur_income
SELECT q_cb_inc_eur_with_dummy.rep_month, q_cb_inc_eur_with_dummy.pc, q_cb_inc_eur_with_dummy.l_1, q_cb_inc_eur_with_dummy.l_2, q_cb_inc_eur_with_dummy.l_3, q_cb_inc_eur_with_dummy.l_4, q_cb_inc_eur_with_dummy.l_5, q_cb_inc_eur_with_dummy.l_6, q_cb_inc_eur_with_dummy.up_curr_conv
FROM q_cb_inc_eur_with_dummy
GROUP BY q_cb_inc_eur_with_dummy.rep_month, q_cb_inc_eur_with_dummy.pc, q_cb_inc_eur_with_dummy.l_1, q_cb_inc_eur_with_dummy.l_2, q_cb_inc_eur_with_dummy.l_3, q_cb_inc_eur_with_dummy.l_4, q_cb_inc_eur_with_dummy.l_5, q_cb_inc_eur_with_dummy.l_6, q_cb_inc_eur_with_dummy.up_curr_conv
PIVOT q_cb_inc_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_eur_with_dummy_crosstab_mod AS
transform sum(q_cb_inc_eur_with_dummy_mod.eur_income) AS eur_income
SELECT q_cb_inc_eur_with_dummy_mod.rep_month, q_cb_inc_eur_with_dummy_mod.pc, q_cb_inc_eur_with_dummy_mod.l_1, q_cb_inc_eur_with_dummy_mod.l_2, q_cb_inc_eur_with_dummy_mod.l_3, q_cb_inc_eur_with_dummy_mod.l_4, q_cb_inc_eur_with_dummy_mod.l_5, q_cb_inc_eur_with_dummy_mod.l_6, q_cb_inc_eur_with_dummy_mod.up_curr_conv
FROM q_cb_inc_eur_with_dummy_mod
GROUP BY q_cb_inc_eur_with_dummy_mod.rep_month, q_cb_inc_eur_with_dummy_mod.pc, q_cb_inc_eur_with_dummy_mod.l_1, q_cb_inc_eur_with_dummy_mod.l_2, q_cb_inc_eur_with_dummy_mod.l_3, q_cb_inc_eur_with_dummy_mod.l_4, q_cb_inc_eur_with_dummy_mod.l_5, q_cb_inc_eur_with_dummy_mod.l_6, q_cb_inc_eur_with_dummy_mod.up_curr_conv
PIVOT q_cb_inc_eur_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_try_with_dummy_crosstab AS
transform sum(q_cb_inc_try_with_dummy.try_income) AS try_income
SELECT q_cb_inc_try_with_dummy.rep_month, q_cb_inc_try_with_dummy.pc, q_cb_inc_try_with_dummy.l_1, q_cb_inc_try_with_dummy.l_2, q_cb_inc_try_with_dummy.l_3, q_cb_inc_try_with_dummy.l_4, q_cb_inc_try_with_dummy.l_5, q_cb_inc_try_with_dummy.l_6, q_cb_inc_try_with_dummy.up_curr_conv
FROM q_cb_inc_try_with_dummy
GROUP BY q_cb_inc_try_with_dummy.rep_month, q_cb_inc_try_with_dummy.pc, q_cb_inc_try_with_dummy.l_1, q_cb_inc_try_with_dummy.l_2, q_cb_inc_try_with_dummy.l_3, q_cb_inc_try_with_dummy.l_4, q_cb_inc_try_with_dummy.l_5, q_cb_inc_try_with_dummy.l_6, q_cb_inc_try_with_dummy.up_curr_conv
PIVOT q_cb_inc_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_try_with_dummy_crosstab_mod AS
transform sum(q_cb_inc_try_with_dummy_mod.try_income) AS try_income
SELECT q_cb_inc_try_with_dummy_mod.rep_month, q_cb_inc_try_with_dummy_mod.pc, q_cb_inc_try_with_dummy_mod.l_1, q_cb_inc_try_with_dummy_mod.l_2, q_cb_inc_try_with_dummy_mod.l_3, q_cb_inc_try_with_dummy_mod.l_4, q_cb_inc_try_with_dummy_mod.l_5, q_cb_inc_try_with_dummy_mod.l_6, q_cb_inc_try_with_dummy_mod.up_curr_conv
FROM q_cb_inc_try_with_dummy_mod
GROUP BY q_cb_inc_try_with_dummy_mod.rep_month, q_cb_inc_try_with_dummy_mod.pc, q_cb_inc_try_with_dummy_mod.l_1, q_cb_inc_try_with_dummy_mod.l_2, q_cb_inc_try_with_dummy_mod.l_3, q_cb_inc_try_with_dummy_mod.l_4, q_cb_inc_try_with_dummy_mod.l_5, q_cb_inc_try_with_dummy_mod.l_6, q_cb_inc_try_with_dummy_mod.up_curr_conv
PIVOT q_cb_inc_try_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_usd_with_dummy_crosstab AS
transform sum(q_cb_inc_usd_with_dummy.usd_income) AS usd_income
SELECT q_cb_inc_usd_with_dummy.rep_month, q_cb_inc_usd_with_dummy.pc, q_cb_inc_usd_with_dummy.l_1, q_cb_inc_usd_with_dummy.l_2, q_cb_inc_usd_with_dummy.l_3, q_cb_inc_usd_with_dummy.l_4, q_cb_inc_usd_with_dummy.l_5, q_cb_inc_usd_with_dummy.l_6, q_cb_inc_usd_with_dummy.up_curr_conv
FROM q_cb_inc_usd_with_dummy
GROUP BY q_cb_inc_usd_with_dummy.rep_month, q_cb_inc_usd_with_dummy.pc, q_cb_inc_usd_with_dummy.l_1, q_cb_inc_usd_with_dummy.l_2, q_cb_inc_usd_with_dummy.l_3, q_cb_inc_usd_with_dummy.l_4, q_cb_inc_usd_with_dummy.l_5, q_cb_inc_usd_with_dummy.l_6, q_cb_inc_usd_with_dummy.up_curr_conv
PIVOT q_cb_inc_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_usd_with_dummy_crosstab_mod AS
transform sum(q_cb_inc_usd_with_dummy_mod.usd_income) AS usd_income
SELECT q_cb_inc_usd_with_dummy_mod.rep_month, q_cb_inc_usd_with_dummy_mod.pc, q_cb_inc_usd_with_dummy_mod.l_1, q_cb_inc_usd_with_dummy_mod.l_2, q_cb_inc_usd_with_dummy_mod.l_3, q_cb_inc_usd_with_dummy_mod.l_4, q_cb_inc_usd_with_dummy_mod.l_5, q_cb_inc_usd_with_dummy_mod.l_6, q_cb_inc_usd_with_dummy_mod.up_curr_conv
FROM q_cb_inc_usd_with_dummy_mod
GROUP BY q_cb_inc_usd_with_dummy_mod.rep_month, q_cb_inc_usd_with_dummy_mod.pc, q_cb_inc_usd_with_dummy_mod.l_1, q_cb_inc_usd_with_dummy_mod.l_2, q_cb_inc_usd_with_dummy_mod.l_3, q_cb_inc_usd_with_dummy_mod.l_4, q_cb_inc_usd_with_dummy_mod.l_5, q_cb_inc_usd_with_dummy_mod.l_6, q_cb_inc_usd_with_dummy_mod.up_curr_conv
PIVOT q_cb_inc_usd_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_dist_with_dummy_crosstab AS
transform sum(q_cb_inc_with_dummy.inc_total) AS total_income
SELECT q_cb_inc_with_dummy.rep_month, q_cb_inc_with_dummy.pc, q_cb_inc_with_dummy.l_1, q_cb_inc_with_dummy.l_2, q_cb_inc_with_dummy.l_3, q_cb_inc_with_dummy.l_4, q_cb_inc_with_dummy.l_5, q_cb_inc_with_dummy.l_6, q_cb_inc_with_dummy.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")) AS exc_try, iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_cb_inc_with_dummy
GROUP BY q_cb_inc_with_dummy.rep_month, q_cb_inc_with_dummy.pc, q_cb_inc_with_dummy.l_1, q_cb_inc_with_dummy.l_2, q_cb_inc_with_dummy.l_3, q_cb_inc_with_dummy.l_4, q_cb_inc_with_dummy.l_5, q_cb_inc_with_dummy.l_6, q_cb_inc_with_dummy.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")), iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")), iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur"))
PIVOT q_cb_inc_with_dummy.inc_base_mon;

CREATE OR REPLACE VIEW --ok
q_cb_inc_eur AS
SELECT t_cb_inc_total_st.rep_month, t_cb_inc_total_st.pc, t_cb_inc_total_st.l_1, t_cb_inc_total_st.l_2, t_cb_inc_total_st.l_3, t_cb_inc_total_st.l_4, t_cb_inc_total_st.l_5, t_cb_inc_total_st.l_6, t_cb_inc_total_st.inc_total, t_cb_inc_total_st.currency, CASE WHEN currency='eur' then inc_total else case when currency='usd' then inc_total*r_usd_eur else inc_total*r_try_eur end end AS eur_income, 'eur' AS up_curr_conv, t_cb_inc_total_st.inc_base_mon AS month, t_cb_inc_total_st.key_r_pc_l6
FROM t_cb_inc_total_st LEFT JOIN mon_curr_rates ON (t_cb_inc_total_st.inc_base_mon = mon_curr_rates.month) AND (t_cb_inc_total_st.rep_month = mon_curr_rates.rep_month)
ORDER BY t_cb_inc_total_st.rep_month, t_cb_inc_total_st.pc, t_cb_inc_total_st.l_1, t_cb_inc_total_st.l_2, t_cb_inc_total_st.l_3, t_cb_inc_total_st.l_4, t_cb_inc_total_st.l_5, t_cb_inc_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_eur_mod AS
SELECT q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6, q_cb_inc_total_mod.inc_total, q_cb_inc_total_mod.currency, iif(currency="eur",inc_total,iif(currency="usd",inc_total*r_usd_eur,inc_total*r_try_eur)) AS eur_income, "eur" AS up_curr_conv, q_cb_inc_total_mod.month AS month, q_cb_inc_total_mod.rep_month, q_cb_inc_total_mod.key_r_pc_l6
FROM q_cb_inc_total_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON q_cb_inc_total_mod.month = q_monthly_curr_rates_mod_crosstab.month
WHERE (((q_cb_inc_total_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
ORDER BY q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_eur_mod_mt AS
SELECT q_cb_inc_eur_mod.rep_month, q_cb_inc_eur_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_eur_mod.month, q_cb_inc_eur_mod.eur_income, q_cb_inc_eur_mod.up_curr_conv, q_cb_inc_eur_mod.l_1, q_cb_inc_eur_mod.l_2, q_cb_inc_eur_mod.l_3, q_cb_inc_eur_mod.l_4, q_cb_inc_eur_mod.l_5, q_cb_inc_eur_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_eur_mod.key_r_pc_l6 into t_cb_inc_eur_mod_st
FROM (q_cb_inc_eur_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_inc_eur_mod.l_3 = c3_code.c_l3) AND (q_cb_inc_eur_mod.l_2 = c3_code.c_l2) AND (q_cb_inc_eur_mod.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_cb_inc_eur_mod.l_6 = c6_code.c_l6) AND (q_cb_inc_eur_mod.l_5 = c6_code.c_l5) AND (q_cb_inc_eur_mod.l_4 = c6_code.c_l4) AND (q_cb_inc_eur_mod.l_3 = c6_code.c_l3) AND (q_cb_inc_eur_mod.l_2 = c6_code.c_l2) AND (q_cb_inc_eur_mod.l_1 = c6_code.c_l1)
GROUP BY q_cb_inc_eur_mod.rep_month, q_cb_inc_eur_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_eur_mod.month, q_cb_inc_eur_mod.eur_income, q_cb_inc_eur_mod.up_curr_conv, q_cb_inc_eur_mod.l_1, q_cb_inc_eur_mod.l_2, q_cb_inc_eur_mod.l_3, q_cb_inc_eur_mod.l_4, q_cb_inc_eur_mod.l_5, q_cb_inc_eur_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_eur_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_eur_mt AS
SELECT q_cb_inc_eur.rep_month, q_cb_inc_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_eur.month, sum(q_cb_inc_eur.eur_income) AS eur_income, q_cb_inc_eur.up_curr_conv, q_cb_inc_eur.l_1, q_cb_inc_eur.l_2, q_cb_inc_eur.l_3, q_cb_inc_eur.l_4, q_cb_inc_eur.l_5, q_cb_inc_eur.l_6, c6_code.DESC_tr_l6, q_cb_inc_eur.key_r_pc_l6 into t_cb_inc_eur_st
FROM (q_cb_inc_eur LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_inc_eur.l_3 = c3_code.c_l3) AND (q_cb_inc_eur.l_2 = c3_code.c_l2) AND (q_cb_inc_eur.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_cb_inc_eur.l_6 = c6_code.c_l6) AND (q_cb_inc_eur.l_5 = c6_code.c_l5) AND (q_cb_inc_eur.l_4 = c6_code.c_l4) AND (q_cb_inc_eur.l_3 = c6_code.c_l3) AND (q_cb_inc_eur.l_2 = c6_code.c_l2) AND (q_cb_inc_eur.l_1 = c6_code.c_l1)
GROUP BY q_cb_inc_eur.rep_month, q_cb_inc_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_eur.month, q_cb_inc_eur.up_curr_conv, q_cb_inc_eur.l_1, q_cb_inc_eur.l_2, q_cb_inc_eur.l_3, q_cb_inc_eur.l_4, q_cb_inc_eur.l_5, q_cb_inc_eur.l_6, c6_code.DESC_tr_l6, q_cb_inc_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_inc_eur

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_eur_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
eur_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_inc_eur_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full

WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW 
q_cb_inc_qty AS
SELECT *
FROM t_cb_inc_qty;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_qty_crosstab AS
transform sum(q_cb_inc_qty.inc_base_qty) AS inc_base_qty
SELECT q_cb_inc_qty.rep_month, q_cb_inc_qty.pc, q_cb_inc_qty.l_1, q_cb_inc_qty.l_2, q_cb_inc_qty.l_3, q_cb_inc_qty.l_4, q_cb_inc_qty.l_5, q_cb_inc_qty.l_6
FROM q_cb_inc_qty
GROUP BY q_cb_inc_qty.rep_month, q_cb_inc_qty.pc, q_cb_inc_qty.l_1, q_cb_inc_qty.l_2, q_cb_inc_qty.l_3, q_cb_inc_qty.l_4, q_cb_inc_qty.l_5, q_cb_inc_qty.l_6
ORDER BY q_cb_inc_qty.rep_month, q_cb_inc_qty.pc, q_cb_inc_qty.l_1, q_cb_inc_qty.l_2, q_cb_inc_qty.l_3, q_cb_inc_qty.l_4, q_cb_inc_qty.l_5, q_cb_inc_qty.l_6
PIVOT q_cb_inc_qty.inc_base_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_inc_total AS
SELECT q_cb_inc_calculation.rep_month, q_cb_inc_calculation.pc, q_cb_inc_calculation.l_1, q_cb_inc_calculation.l_2, q_cb_inc_calculation.l_3, q_cb_inc_calculation.l_4, q_cb_inc_calculation.l_5, q_cb_inc_calculation.l_6, q_cb_inc_calculation.inc_base_mon, sum(q_cb_inc_calculation.inc_total) AS inc_total, q_cb_inc_calculation.currency, q_cb_inc_calculation.key_r_pc_l6
FROM q_cb_inc_calculation
GROUP BY q_cb_inc_calculation.rep_month, q_cb_inc_calculation.pc, q_cb_inc_calculation.l_1, q_cb_inc_calculation.l_2, q_cb_inc_calculation.l_3, q_cb_inc_calculation.l_4, q_cb_inc_calculation.l_5, q_cb_inc_calculation.l_6, q_cb_inc_calculation.inc_base_mon, q_cb_inc_calculation.currency, q_cb_inc_calculation.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_cb_inc_total_mod AS
SELECT t_cb_inc_st.rep_month, t_cb_inc_st.pc, t_cb_inc_st.l_1, t_cb_inc_st.l_2, t_cb_inc_st.l_3, t_cb_inc_st.l_4, t_cb_inc_st.l_5, t_cb_inc_st.l_6, t_cb_inc_st.inc_base_mon AS month, t_cb_inc_st.inc_total, t_cb_inc_st.currency, t_cb_inc_st.key_r_pc_l6
FROM t_cb_inc_st
WHERE (t_cb_inc_st.rep_month)=(SELECT rep_month FROM q_rep_month_max_val);

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_total_mod_mt AS
SELECT q_cb_inc_total_mod.rep_month, q_cb_inc_total_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_total_mod.month, q_cb_inc_total_mod.inc_total, q_cb_inc_total_mod.currency, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_total_mod.key_r_pc_l6 into t_cb_inc_total_mod_st
FROM (q_cb_inc_total_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_inc_total_mod.l_3 = c3_code.c_l3) AND (q_cb_inc_total_mod.l_2 = c3_code.c_l2) AND (q_cb_inc_total_mod.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_cb_inc_total_mod.l_6 = c6_code.c_l6) AND (q_cb_inc_total_mod.l_5 = c6_code.c_l5) AND (q_cb_inc_total_mod.l_4 = c6_code.c_l4) AND (q_cb_inc_total_mod.l_3 = c6_code.c_l3) AND (q_cb_inc_total_mod.l_2 = c6_code.c_l2) AND (q_cb_inc_total_mod.l_1 = c6_code.c_l1)
GROUP BY q_cb_inc_total_mod.rep_month, q_cb_inc_total_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_total_mod.month, q_cb_inc_total_mod.inc_total, q_cb_inc_total_mod.currency, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_total_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_total_mt AS
SELECT q_cb_inc_total.rep_month, q_cb_inc_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_total.inc_base_mon, sum(q_cb_inc_total.inc_total) AS inc_total, q_cb_inc_total.currency, q_cb_inc_total.l_1, q_cb_inc_total.l_2, q_cb_inc_total.l_3, q_cb_inc_total.l_4, q_cb_inc_total.l_5, q_cb_inc_total.l_6, c6_code.DESC_tr_l6, q_cb_inc_total.key_r_pc_l6 into t_cb_inc_total_st
FROM (q_cb_inc_total LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_cb_inc_total.l_3 = c3_code.c_l3) AND (q_cb_inc_total.l_2 = c3_code.c_l2) AND (q_cb_inc_total.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_cb_inc_total.l_6 = c6_code.c_l6) AND (q_cb_inc_total.l_5 = c6_code.c_l5) AND (q_cb_inc_total.l_4 = c6_code.c_l4) AND (q_cb_inc_total.l_3 = c6_code.c_l3) AND (q_cb_inc_total.l_2 = c6_code.c_l2) AND (q_cb_inc_total.l_1 = c6_code.c_l1)
GROUP BY q_cb_inc_total.rep_month, q_cb_inc_total.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_total.inc_base_mon, q_cb_inc_total.currency, q_cb_inc_total.l_1, q_cb_inc_total.l_2, q_cb_inc_total.l_3, q_cb_inc_total.l_4, q_cb_inc_total.l_5, q_cb_inc_total.l_6, c6_code.DESC_tr_l6, q_cb_inc_total.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_cb_inc_try AS
SELECT t_cb_inc_total_st.rep_month, t_cb_inc_total_st.pc, t_cb_inc_total_st.l_1, t_cb_inc_total_st.l_2, t_cb_inc_total_st.l_3, t_cb_inc_total_st.l_4, t_cb_inc_total_st.l_5, t_cb_inc_total_st.l_6, t_cb_inc_total_st.inc_total, t_cb_inc_total_st.currency, CASE WHEN currency='try' then inc_total else case when currency='eur' then inc_total*r_eur_try else inc_total*r_usd_try end end AS try_income, 'try' AS up_curr_conv, t_cb_inc_total_st.inc_base_mon AS month, t_cb_inc_total_st.key_r_pc_l6
FROM t_cb_inc_total_st LEFT JOIN mon_curr_rates ON (t_cb_inc_total_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_inc_total_st.inc_base_mon = mon_curr_rates.month);

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_try_mod AS
SELECT q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6, q_cb_inc_total_mod.inc_total, q_cb_inc_total_mod.currency, CASE WHEN currency='try' THEN inc_total else case when currency='usd' then inc_total*r_usd_try else inc_total*r_eur_try end end AS try_income, 'try' AS up_curr_conv, q_cb_inc_total_mod.month AS month, q_cb_inc_total_mod.rep_month, q_cb_inc_total_mod.key_r_pc_l6
FROM q_cb_inc_total_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON q_cb_inc_total_mod.month = q_monthly_curr_rates_mod_crosstab.month
WHERE q_cb_inc_total_mod.rep_month=(SELECT rep_month FROM q_rep_month_max_val)
ORDER BY q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_try_mod_mt AS
SELECT q_cb_inc_try_mod.rep_month, q_cb_inc_try_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_try_mod.month, q_cb_inc_try_mod.try_income, q_cb_inc_try_mod.up_curr_conv, q_cb_inc_try_mod.l_1, q_cb_inc_try_mod.l_2, q_cb_inc_try_mod.l_3, q_cb_inc_try_mod.l_4, q_cb_inc_try_mod.l_5, q_cb_inc_try_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_try_mod.key_r_pc_l6 into t_cb_inc_try_mod_st
FROM (q_cb_inc_try_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_inc_try_mod.l_1 = c3_code.c_l1) AND (q_cb_inc_try_mod.l_2 = c3_code.c_l2) AND (q_cb_inc_try_mod.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_cb_inc_try_mod.l_1 = c6_code.c_l1) AND (q_cb_inc_try_mod.l_2 = c6_code.c_l2) AND (q_cb_inc_try_mod.l_3 = c6_code.c_l3) AND (q_cb_inc_try_mod.l_4 = c6_code.c_l4) AND (q_cb_inc_try_mod.l_5 = c6_code.c_l5) AND (q_cb_inc_try_mod.l_6 = c6_code.c_l6)
GROUP BY q_cb_inc_try_mod.rep_month, q_cb_inc_try_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_try_mod.month, q_cb_inc_try_mod.try_income, q_cb_inc_try_mod.up_curr_conv, q_cb_inc_try_mod.l_1, q_cb_inc_try_mod.l_2, q_cb_inc_try_mod.l_3, q_cb_inc_try_mod.l_4, q_cb_inc_try_mod.l_5, q_cb_inc_try_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_try_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_try_mt AS
SELECT q_cb_inc_try.rep_month, q_cb_inc_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_try.month, sum(q_cb_inc_try.try_income) AS try_income, q_cb_inc_try.up_curr_conv, q_cb_inc_try.l_1, q_cb_inc_try.l_2, q_cb_inc_try.l_3, q_cb_inc_try.l_4, q_cb_inc_try.l_5, q_cb_inc_try.l_6, c6_code.DESC_tr_l6, q_cb_inc_try.key_r_pc_l6 into t_cb_inc_try_st
FROM (q_cb_inc_try LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_inc_try.l_1 = c3_code.c_l1) AND (q_cb_inc_try.l_2 = c3_code.c_l2) AND (q_cb_inc_try.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_cb_inc_try.l_1 = c6_code.c_l1) AND (q_cb_inc_try.l_2 = c6_code.c_l2) AND (q_cb_inc_try.l_3 = c6_code.c_l3) AND (q_cb_inc_try.l_4 = c6_code.c_l4) AND (q_cb_inc_try.l_5 = c6_code.c_l5) AND (q_cb_inc_try.l_6 = c6_code.c_l6)
GROUP BY q_cb_inc_try.rep_month, q_cb_inc_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_try.month, q_cb_inc_try.up_curr_conv, q_cb_inc_try.l_1, q_cb_inc_try.l_2, q_cb_inc_try.l_3, q_cb_inc_try.l_4, q_cb_inc_try.l_5, q_cb_inc_try.l_6, c6_code.DESC_tr_l6, q_cb_inc_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_inc_try

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_try_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
try_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_inc_try_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full


WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- ok
q_cb_inc_usd AS
SELECT t_cb_inc_total_st.rep_month, t_cb_inc_total_st.pc, t_cb_inc_total_st.l_1, t_cb_inc_total_st.l_2, t_cb_inc_total_st.l_3, t_cb_inc_total_st.l_4, t_cb_inc_total_st.l_5, t_cb_inc_total_st.l_6, t_cb_inc_total_st.inc_total, t_cb_inc_total_st.currency, CASE WHEN currency='usd' then inc_total else case when currency='eur' then inc_total*r_eur_usd else inc_total*r_try_usd end end AS usd_income, 'usd' AS up_curr_conv, t_cb_inc_total_st.inc_base_mon AS month, t_cb_inc_total_st.key_r_pc_l6, mon_curr_rates.r_usd_try, mon_curr_rates.r_try_usd
FROM t_cb_inc_total_st LEFT JOIN mon_curr_rates ON (t_cb_inc_total_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_inc_total_st.inc_base_mon = mon_curr_rates.month);

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_usd_mod AS
SELECT q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6, q_cb_inc_total_mod.inc_total, q_cb_inc_total_mod.currency, iif(currency="usd",inc_total,iif(currency="eur",inc_total*r_eur_usd,inc_total*r_try_usd)) AS usd_income, "usd" AS up_curr_conv, q_cb_inc_total_mod.month AS month, q_cb_inc_total_mod.rep_month, q_cb_inc_total_mod.key_r_pc_l6
FROM q_cb_inc_total_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON q_cb_inc_total_mod.month = q_monthly_curr_rates_mod_crosstab.month
WHERE (((q_cb_inc_total_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")))
ORDER BY q_cb_inc_total_mod.pc, q_cb_inc_total_mod.l_1, q_cb_inc_total_mod.l_2, q_cb_inc_total_mod.l_3, q_cb_inc_total_mod.l_4, q_cb_inc_total_mod.l_5, q_cb_inc_total_mod.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_usd_mod_mt AS
SELECT q_cb_inc_usd_mod.rep_month, q_cb_inc_usd_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_usd_mod.month, q_cb_inc_usd_mod.usd_income, q_cb_inc_usd_mod.up_curr_conv, q_cb_inc_usd_mod.l_1, q_cb_inc_usd_mod.l_2, q_cb_inc_usd_mod.l_3, q_cb_inc_usd_mod.l_4, q_cb_inc_usd_mod.l_5, q_cb_inc_usd_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_usd_mod.key_r_pc_l6 into t_cb_inc_usd_mod_st
FROM (q_cb_inc_usd_mod LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_inc_usd_mod.l_1 = c3_code.c_l1) AND (q_cb_inc_usd_mod.l_2 = c3_code.c_l2) AND (q_cb_inc_usd_mod.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_cb_inc_usd_mod.l_1 = c6_code.c_l1) AND (q_cb_inc_usd_mod.l_2 = c6_code.c_l2) AND (q_cb_inc_usd_mod.l_3 = c6_code.c_l3) AND (q_cb_inc_usd_mod.l_4 = c6_code.c_l4) AND (q_cb_inc_usd_mod.l_5 = c6_code.c_l5) AND (q_cb_inc_usd_mod.l_6 = c6_code.c_l6)
GROUP BY q_cb_inc_usd_mod.rep_month, q_cb_inc_usd_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_usd_mod.month, q_cb_inc_usd_mod.usd_income, q_cb_inc_usd_mod.up_curr_conv, q_cb_inc_usd_mod.l_1, q_cb_inc_usd_mod.l_2, q_cb_inc_usd_mod.l_3, q_cb_inc_usd_mod.l_4, q_cb_inc_usd_mod.l_5, q_cb_inc_usd_mod.l_6, c6_code.DESC_tr_l6, q_cb_inc_usd_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_usd_mt AS
SELECT q_cb_inc_usd.rep_month, q_cb_inc_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_usd.month, sum(q_cb_inc_usd.usd_income) AS usd_income, q_cb_inc_usd.up_curr_conv, q_cb_inc_usd.l_1, q_cb_inc_usd.l_2, q_cb_inc_usd.l_3, q_cb_inc_usd.l_4, q_cb_inc_usd.l_5, q_cb_inc_usd.l_6, c6_code.DESC_tr_l6, q_cb_inc_usd.key_r_pc_l6 into t_cb_inc_usd_st
FROM (q_cb_inc_usd LEFT JOIN (c2_code right join c3_code ON (c2_code.c_l2 = c3_code.c_l2) AND (c2_code.c_l1 = c3_code.c_l1)) ON (q_cb_inc_usd.l_1 = c3_code.c_l1) AND (q_cb_inc_usd.l_2 = c3_code.c_l2) AND (q_cb_inc_usd.l_3 = c3_code.c_l3)) LEFT JOIN c6_code ON (q_cb_inc_usd.l_1 = c6_code.c_l1) AND (q_cb_inc_usd.l_2 = c6_code.c_l2) AND (q_cb_inc_usd.l_3 = c6_code.c_l3) AND (q_cb_inc_usd.l_4 = c6_code.c_l4) AND (q_cb_inc_usd.l_5 = c6_code.c_l5) AND (q_cb_inc_usd.l_6 = c6_code.c_l6)
GROUP BY q_cb_inc_usd.rep_month, q_cb_inc_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_inc_usd.month, q_cb_inc_usd.up_curr_conv, q_cb_inc_usd.l_1, q_cb_inc_usd.l_2, q_cb_inc_usd.l_3, q_cb_inc_usd.l_4, q_cb_inc_usd.l_5, q_cb_inc_usd.l_6, c6_code.DESC_tr_l6, q_cb_inc_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_income,
up_curr_conv,
key_r_pc_l6


FROM 
q_cb_inc_usd

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_usd_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
usd_income,
up_curr_conv,
key_r_pc_l6

FROM 
q_cb_inc_usd_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full


WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_with_dummy AS
SELECT 
*
FROM 
q_cb_inc_total

UNION ALL SELECT -- not ok
*
FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_with_dummy_crosstab_mod AS
transform sum(q_cb_inc_with_dummy_mod.inc_total) AS total_income
SELECT q_cb_inc_with_dummy_mod.rep_month, q_cb_inc_with_dummy_mod.pc, q_cb_inc_with_dummy_mod.l_1, q_cb_inc_with_dummy_mod.l_2, q_cb_inc_with_dummy_mod.l_3, q_cb_inc_with_dummy_mod.l_4, q_cb_inc_with_dummy_mod.l_5, q_cb_inc_with_dummy_mod.l_6, q_cb_inc_with_dummy_mod.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")) AS exc_try, iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_cb_inc_with_dummy_mod
GROUP BY q_cb_inc_with_dummy_mod.rep_month, q_cb_inc_with_dummy_mod.pc, q_cb_inc_with_dummy_mod.l_1, q_cb_inc_with_dummy_mod.l_2, q_cb_inc_with_dummy_mod.l_3, q_cb_inc_with_dummy_mod.l_4, q_cb_inc_with_dummy_mod.l_5, q_cb_inc_with_dummy_mod.l_6, q_cb_inc_with_dummy_mod.currency, iif(currency="eur","r_eur_try",iif(currency="usd","r_usd_try","r_try_try")), iif(currency="eur","r_eur_usd",iif(currency="usd","r_usd_usd","r_try_usd")), iif(currency="eur","r_eur_eur",iif(currency="usd","r_usd_eur","r_try_eur"))
PIVOT q_cb_inc_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_inc_with_dummy_mod AS
SELECT 
*
FROM 
q_cb_inc_total_mod

UNION ALL SELECT 
*
FROM 
q_bb_qty_dummy_full

WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- ok
q_cb_monthly_curr_rates_activem AS
SELECT q_cb_qty_activem_works_monthly.rep_month, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, q_cb_qty_activem_works_monthly.exp_cb_mon
FROM q_cb_qty_activem_works_monthly LEFT JOIN mon_curr_rates ON (q_cb_qty_activem_works_monthly.exp_cb_mon = mon_curr_rates.month) AND (q_cb_qty_activem_works_monthly.rep_month = mon_curr_rates.rep_month)
GROUP BY q_cb_qty_activem_works_monthly.rep_month, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, q_cb_qty_activem_works_monthly.exp_cb_mon;

CREATE OR REPLACE VIEW -- not ok
q_cb_monthly_curr_rates_activem_mod AS
SELECT q_cb_active_months_res_qty_mod.rep_month, q_cb_active_months_res_qty_mod.pc, q_cb_active_months_res_qty_mod.l_1, q_cb_active_months_res_qty_mod.l_2, q_cb_active_months_res_qty_mod.l_3, q_cb_active_months_res_qty_mod.l_4, q_cb_active_months_res_qty_mod.l_5, q_cb_active_months_res_qty_mod.l_6, q_cb_active_months_res_qty_mod.rs_l1, q_cb_active_months_res_qty_mod.rs_l2, q_cb_active_months_res_qty_mod.rs_l3, q_cb_active_months_res_qty_mod.rs_l4, q_cb_active_months_res_qty_mod.rs_currency, q_cb_active_months_res_qty_mod.exp_cb_mon, q_monthly_curr_rates_mod_crosstab.r_eur_try, q_monthly_curr_rates_mod_crosstab.r_eur_usd, q_monthly_curr_rates_mod_crosstab.r_usd_eur, q_monthly_curr_rates_mod_crosstab.r_usd_try
FROM q_cb_active_months_res_qty_mod LEFT JOIN q_monthly_curr_rates_mod_crosstab ON q_cb_active_months_res_qty_mod.exp_cb_mon = q_monthly_curr_rates_mod_crosstab.month
GROUP BY q_cb_active_months_res_qty_mod.rep_month, q_cb_active_months_res_qty_mod.pc, q_cb_active_months_res_qty_mod.l_1, q_cb_active_months_res_qty_mod.l_2, q_cb_active_months_res_qty_mod.l_3, q_cb_active_months_res_qty_mod.l_4, q_cb_active_months_res_qty_mod.l_5, q_cb_active_months_res_qty_mod.l_6, q_cb_active_months_res_qty_mod.rs_l1, q_cb_active_months_res_qty_mod.rs_l2, q_cb_active_months_res_qty_mod.rs_l3, q_cb_active_months_res_qty_mod.rs_l4, q_cb_active_months_res_qty_mod.rs_currency, q_cb_active_months_res_qty_mod.exp_cb_mon, q_monthly_curr_rates_mod_crosstab.r_eur_try, q_monthly_curr_rates_mod_crosstab.r_eur_usd, q_monthly_curr_rates_mod_crosstab.r_usd_eur, q_monthly_curr_rates_mod_crosstab.r_usd_try;

CREATE OR REPLACE VIEW -- ok
q_cb_monthly_curr_rates_inc AS
SELECT q_cb_qty_activem_works_monthly.rep_month, q_cb_qty_activem_works_monthly.pc, q_cb_qty_activem_works_monthly.exp_cb_mon, q_cb_monthly_curr_rates_activem.r_eur_try/q_cb_curr_base_val.r_eur_try-1 AS rt_eur_try, q_cb_monthly_curr_rates_activem.r_eur_usd/q_cb_curr_base_val.r_eur_usd-1 AS rt_eur_usd, q_cb_monthly_curr_rates_activem.r_usd_try/q_cb_curr_base_val.r_usd_try-1 AS rt_usd_try, q_cb_monthly_curr_rates_activem.r_usd_eur/q_cb_curr_base_val.r_usd_eur-1 AS rt_usd_eur
FROM (q_cb_qty_activem_works_monthly LEFT JOIN q_cb_monthly_curr_rates_activem ON (q_cb_qty_activem_works_monthly.exp_cb_mon = q_cb_monthly_curr_rates_activem.exp_cb_mon) AND (q_cb_qty_activem_works_monthly.rep_month = q_cb_monthly_curr_rates_activem.rep_month)) LEFT JOIN q_cb_curr_base_val ON q_cb_qty_activem_works_monthly.rep_month = q_cb_curr_base_val.rep_month
GROUP BY q_cb_qty_activem_works_monthly.rep_month, q_cb_qty_activem_works_monthly.pc, q_cb_qty_activem_works_monthly.exp_cb_mon, q_cb_monthly_curr_rates_activem.r_eur_try/q_cb_curr_base_val.r_eur_try-1, q_cb_monthly_curr_rates_activem.r_eur_usd/q_cb_curr_base_val.r_eur_usd-1, q_cb_monthly_curr_rates_activem.r_usd_try/q_cb_curr_base_val.r_usd_try-1, q_cb_monthly_curr_rates_activem.r_usd_eur/q_cb_curr_base_val.r_usd_eur-1;

CREATE OR REPLACE VIEW -- not ok
q_cb_monthly_curr_rates_inc_mod AS
SELECT q_cb_qty_activem_works_monthly_mod.rep_month, q_cb_qty_activem_works_monthly_mod.pc, q_cb_qty_activem_works_monthly_mod.exp_cb_mon, q_cb_monthly_curr_rates_activem_mod.r_eur_try/q_cb_curr_base_val_mod.r_eur_try-1 AS rt_eur_try, q_cb_monthly_curr_rates_activem_mod.r_eur_usd/q_cb_curr_base_val_mod.r_eur_usd-1 AS rt_eur_usd, q_cb_monthly_curr_rates_activem_mod.r_usd_try/q_cb_curr_base_val_mod.r_usd_try-1 AS rt_usd_try, q_cb_monthly_curr_rates_activem_mod.r_usd_eur/q_cb_curr_base_val_mod.r_usd_eur-1 AS rt_usd_eur
FROM (q_cb_qty_activem_works_monthly_mod LEFT JOIN q_cb_monthly_curr_rates_activem_mod ON (q_cb_qty_activem_works_monthly_mod.exp_cb_mon = q_cb_monthly_curr_rates_activem_mod.exp_cb_mon) AND (q_cb_qty_activem_works_monthly_mod.rep_month = q_cb_monthly_curr_rates_activem_mod.rep_month)) LEFT JOIN q_cb_curr_base_val_mod ON q_cb_qty_activem_works_monthly_mod.rep_month = q_cb_curr_base_val_mod.rep_month
GROUP BY q_cb_qty_activem_works_monthly_mod.rep_month, q_cb_qty_activem_works_monthly_mod.pc, q_cb_qty_activem_works_monthly_mod.exp_cb_mon, q_cb_monthly_curr_rates_activem_mod.r_eur_try/q_cb_curr_base_val_mod.r_eur_try-1, q_cb_monthly_curr_rates_activem_mod.r_eur_usd/q_cb_curr_base_val_mod.r_eur_usd-1, q_cb_monthly_curr_rates_activem_mod.r_usd_try/q_cb_curr_base_val_mod.r_usd_try-1, q_cb_monthly_curr_rates_activem_mod.r_usd_eur/q_cb_curr_base_val_mod.r_usd_eur-1;

CREATE OR REPLACE VIEW -- not ok
q_cb_monthly_curr_rates_lastm_mod AS
SELECT q_monthly_curr_rates_mod_crosstab.month, q_monthly_curr_rates_mod_crosstab.r_eur_try, q_monthly_curr_rates_mod_crosstab.r_usd_try, q_monthly_curr_rates_mod_crosstab.r_eur_usd, q_monthly_curr_rates_mod_crosstab.r_usd_eur
FROM q_monthly_curr_rates_mod_crosstab
WHERE q_monthly_curr_rates_mod_crosstab.month=(SELECT last_month FROM q_rep_month_max);

CREATE OR REPLACE VIEW -- not ok
q_cb_monthly_curr_rates_lastm_mod_mt AS
SELECT q_cb_monthly_curr_rates_lastm_mod.month, q_cb_monthly_curr_rates_lastm_mod.r_eur_try, q_cb_monthly_curr_rates_lastm_mod.r_usd_try, q_cb_monthly_curr_rates_lastm_mod.r_eur_usd, q_cb_monthly_curr_rates_lastm_mod.r_usd_eur into t_cb_monthly_curr_rates_lastm_mod_st
FROM q_cb_monthly_curr_rates_lastm_mod;

CREATE OR REPLACE VIEW -- ok
q_cb_pr_wbs AS
SELECT t_cb_inc_st.rep_month
	,t_cb_inc_st.pc
	,t_cb_inc_st.l_1
	,t_cb_inc_st.l_2
	,t_cb_inc_st.l_3
	,t_cb_inc_st.l_4
	,t_cb_inc_st.l_5
	,t_cb_inc_st.l_6
	,t_cb_inc_st.currency
	,t_cb_inc_st.inc_base_mon AS month 
	,t_cb_inc_st.key_r_pc_l6
FROM t_cb_inc_st 
GROUP BY t_cb_inc_st.rep_month
	,t_cb_inc_st.pc
	,t_cb_inc_st.l_1
	,t_cb_inc_st.l_2
	,t_cb_inc_st.l_3
	,t_cb_inc_st.l_4
	,t_cb_inc_st.l_5
	,t_cb_inc_st.l_6
	,t_cb_inc_st.currency
	,t_cb_inc_st.inc_base_mon 
	,t_cb_inc_st.key_r_pc_l6
HAVING (((sum(t_cb_inc_st.inc_total))<>0)) 
UNION SELECT t_q_cb_exp.rep_month
	,t_q_cb_exp.pc
	,t_q_cb_exp.l_1
	,t_q_cb_exp.l_2
	,t_q_cb_exp.l_3
	,t_q_cb_exp.l_4
	,t_q_cb_exp.l_5
	,t_q_cb_exp.l_6
	,t_q_cb_exp.up_curr
	,t_q_cb_exp.month AS month 
	,t_q_cb_exp.key_r_pc_l6
FROM t_q_cb_exp 
GROUP BY t_q_cb_exp.rep_month
	,t_q_cb_exp.pc
	,t_q_cb_exp.l_1
	,t_q_cb_exp.l_2
	,t_q_cb_exp.l_3
	,t_q_cb_exp.l_4
	,t_q_cb_exp.l_5
	,t_q_cb_exp.l_6
	,t_q_cb_exp.up_curr
	,t_q_cb_exp.month 
	,t_q_cb_exp.key_r_pc_l6	
HAVING (((sum(t_q_cb_exp.total_expense))<>0));

CREATE OR REPLACE VIEW 
q_cb_pr_wbs_mod AS
SELECT t_cb_inc_total_mod_st.rep_month
	,t_cb_inc_total_mod_st.pc
	,t_cb_inc_total_mod_st.l_1
	,t_cb_inc_total_mod_st.l_2
	,t_cb_inc_total_mod_st.l_3
	,t_cb_inc_total_mod_st.l_4
	,t_cb_inc_total_mod_st.l_5
	,t_cb_inc_total_mod_st.l_6
	,t_cb_inc_total_mod_st.currency
	,t_cb_inc_total_mod_st.month AS month 
	,t_cb_inc_total_mod_st.key_r_pc_l6
FROM t_cb_inc_total_mod_st 
GROUP BY t_cb_inc_total_mod_st.rep_month
	,t_cb_inc_total_mod_st.pc
	,t_cb_inc_total_mod_st.l_1
	,t_cb_inc_total_mod_st.l_2
	,t_cb_inc_total_mod_st.l_3
	,t_cb_inc_total_mod_st.l_4
	,t_cb_inc_total_mod_st.l_5
	,t_cb_inc_total_mod_st.l_6
	,t_cb_inc_total_mod_st.currency
	,t_cb_inc_total_mod_st.month 
	,t_cb_inc_total_mod_st.key_r_pc_l6
HAVING (((sum(t_cb_inc_total_mod_st.inc_total))<>0)) 
UNION SELECT t_q_cb_exp_mod.rep_month
	,t_q_cb_exp_mod.p01_code
	,t_q_cb_exp_mod.l_1
	,t_q_cb_exp_mod.l_2
	,t_q_cb_exp_mod.l_3
	,t_q_cb_exp_mod.l_4
	,t_q_cb_exp_mod.l_5
	,t_q_cb_exp_mod.l_6
	,t_q_cb_exp_mod.up_curr
	,t_q_cb_exp_mod.month AS month 
	,t_q_cb_exp_mod.key_r_pc_l6
FROM t_q_cb_exp_mod 
GROUP BY t_q_cb_exp_mod.rep_month
	,t_q_cb_exp_mod.p01_code
	,t_q_cb_exp_mod.l_1
	,t_q_cb_exp_mod.l_2
	,t_q_cb_exp_mod.l_3
	,t_q_cb_exp_mod.l_4
	,t_q_cb_exp_mod.l_5
	,t_q_cb_exp_mod.l_6
	,t_q_cb_exp_mod.up_curr
	,t_q_cb_exp_mod.month 
	,t_q_cb_exp_mod.key_r_pc_l6	
HAVING (((sum(t_q_cb_exp_mod.total_expense))<>0));

CREATE OR REPLACE VIEW -- ok
q_cb_profit AS
SELECT q_cb_pr_wbs.rep_month, q_cb_pr_wbs.pc, q_cb_pr_wbs.l_1, q_cb_pr_wbs.l_2, q_cb_pr_wbs.l_3, q_cb_pr_wbs.l_4, q_cb_pr_wbs.l_5, q_cb_pr_wbs.l_6, q_cb_pr_wbs.currency, q_cb_pr_wbs.month, s1.income as income, s1.expense as expense, s1.income-s1.expense AS profit, q_cb_pr_wbs.key_r_pc_l6
FROM (q_cb_pr_wbs LEFT JOIN t_cb_inc_total_st ON (q_cb_pr_wbs.key_r_pc_l6 = t_cb_inc_total_st.key_r_pc_l6) AND (q_cb_pr_wbs.month = t_cb_inc_total_st.inc_base_mon) AND (q_cb_pr_wbs.currency = t_cb_inc_total_st.currency)) LEFT JOIN t_q_cb_exp ON (q_cb_pr_wbs.key_r_pc_l6 = t_q_cb_exp.key_r_pc_l6) AND (q_cb_pr_wbs.month = t_q_cb_exp.month) AND (q_cb_pr_wbs.currency = t_q_cb_exp.up_curr), LATERAL ( SELECT 
CASE WHEN inc_total is null THEN 0 ELSE inc_total END, CASE WHEN total_expense is null THEN 0 ELSE total_expense END ) AS s1(income,expense)
ORDER BY q_cb_pr_wbs.rep_month, q_cb_pr_wbs.pc, q_cb_pr_wbs.l_1, q_cb_pr_wbs.l_2, q_cb_pr_wbs.l_3, q_cb_pr_wbs.l_4, q_cb_pr_wbs.l_5, q_cb_pr_wbs.l_6, q_cb_pr_wbs.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_eur_with_dummy_crosstab AS
transform sum(q_cb_profit_eur_with_dummy.profit) AS profit
SELECT q_cb_profit_eur_with_dummy.rep_month, q_cb_profit_eur_with_dummy.pc, q_cb_profit_eur_with_dummy.l_1, q_cb_profit_eur_with_dummy.l_2, q_cb_profit_eur_with_dummy.l_3, q_cb_profit_eur_with_dummy.l_4, q_cb_profit_eur_with_dummy.l_5, q_cb_profit_eur_with_dummy.l_6, q_cb_profit_eur_with_dummy.curr
FROM q_cb_profit_eur_with_dummy
GROUP BY q_cb_profit_eur_with_dummy.rep_month, q_cb_profit_eur_with_dummy.pc, q_cb_profit_eur_with_dummy.l_1, q_cb_profit_eur_with_dummy.l_2, q_cb_profit_eur_with_dummy.l_3, q_cb_profit_eur_with_dummy.l_4, q_cb_profit_eur_with_dummy.l_5, q_cb_profit_eur_with_dummy.l_6, q_cb_profit_eur_with_dummy.curr
ORDER BY q_cb_profit_eur_with_dummy.rep_month, q_cb_profit_eur_with_dummy.pc, q_cb_profit_eur_with_dummy.l_1, q_cb_profit_eur_with_dummy.l_2, q_cb_profit_eur_with_dummy.l_3, q_cb_profit_eur_with_dummy.l_4, q_cb_profit_eur_with_dummy.l_5, q_cb_profit_eur_with_dummy.l_6
PIVOT q_cb_profit_eur_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_eur_with_dummy_crosstab_mod AS
transform sum(q_cb_profit_eur_with_dummy_mod.profit) AS profit
SELECT q_cb_profit_eur_with_dummy_mod.rep_month, q_cb_profit_eur_with_dummy_mod.pc, q_cb_profit_eur_with_dummy_mod.l_1, q_cb_profit_eur_with_dummy_mod.l_2, q_cb_profit_eur_with_dummy_mod.l_3, q_cb_profit_eur_with_dummy_mod.l_4, q_cb_profit_eur_with_dummy_mod.l_5, q_cb_profit_eur_with_dummy_mod.l_6, q_cb_profit_eur_with_dummy_mod.curr
FROM q_cb_profit_eur_with_dummy_mod
GROUP BY q_cb_profit_eur_with_dummy_mod.rep_month, q_cb_profit_eur_with_dummy_mod.pc, q_cb_profit_eur_with_dummy_mod.l_1, q_cb_profit_eur_with_dummy_mod.l_2, q_cb_profit_eur_with_dummy_mod.l_3, q_cb_profit_eur_with_dummy_mod.l_4, q_cb_profit_eur_with_dummy_mod.l_5, q_cb_profit_eur_with_dummy_mod.l_6, q_cb_profit_eur_with_dummy_mod.curr
ORDER BY q_cb_profit_eur_with_dummy_mod.rep_month, q_cb_profit_eur_with_dummy_mod.pc, q_cb_profit_eur_with_dummy_mod.l_1, q_cb_profit_eur_with_dummy_mod.l_2, q_cb_profit_eur_with_dummy_mod.l_3, q_cb_profit_eur_with_dummy_mod.l_4, q_cb_profit_eur_with_dummy_mod.l_5, q_cb_profit_eur_with_dummy_mod.l_6
PIVOT q_cb_profit_eur_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_try_with_dummy_crosstab AS
transform sum(q_cb_profit_try_with_dummy.profit) AS profit
SELECT q_cb_profit_try_with_dummy.rep_month, q_cb_profit_try_with_dummy.pc, q_cb_profit_try_with_dummy.l_1, q_cb_profit_try_with_dummy.l_2, q_cb_profit_try_with_dummy.l_3, q_cb_profit_try_with_dummy.l_4, q_cb_profit_try_with_dummy.l_5, q_cb_profit_try_with_dummy.l_6, q_cb_profit_try_with_dummy.curr
FROM q_cb_profit_try_with_dummy
GROUP BY q_cb_profit_try_with_dummy.rep_month, q_cb_profit_try_with_dummy.pc, q_cb_profit_try_with_dummy.l_1, q_cb_profit_try_with_dummy.l_2, q_cb_profit_try_with_dummy.l_3, q_cb_profit_try_with_dummy.l_4, q_cb_profit_try_with_dummy.l_5, q_cb_profit_try_with_dummy.l_6, q_cb_profit_try_with_dummy.curr
ORDER BY q_cb_profit_try_with_dummy.rep_month, q_cb_profit_try_with_dummy.pc, q_cb_profit_try_with_dummy.l_1, q_cb_profit_try_with_dummy.l_2, q_cb_profit_try_with_dummy.l_3, q_cb_profit_try_with_dummy.l_4, q_cb_profit_try_with_dummy.l_5, q_cb_profit_try_with_dummy.l_6
PIVOT q_cb_profit_try_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_try_with_dummy_crosstab_mod AS
transform sum(q_cb_profit_try_with_dummy_mod.profit) AS profit
SELECT q_cb_profit_try_with_dummy_mod.rep_month, q_cb_profit_try_with_dummy_mod.pc, q_cb_profit_try_with_dummy_mod.l_1, q_cb_profit_try_with_dummy_mod.l_2, q_cb_profit_try_with_dummy_mod.l_3, q_cb_profit_try_with_dummy_mod.l_4, q_cb_profit_try_with_dummy_mod.l_5, q_cb_profit_try_with_dummy_mod.l_6, q_cb_profit_try_with_dummy_mod.curr
FROM q_cb_profit_try_with_dummy_mod
GROUP BY q_cb_profit_try_with_dummy_mod.rep_month, q_cb_profit_try_with_dummy_mod.pc, q_cb_profit_try_with_dummy_mod.l_1, q_cb_profit_try_with_dummy_mod.l_2, q_cb_profit_try_with_dummy_mod.l_3, q_cb_profit_try_with_dummy_mod.l_4, q_cb_profit_try_with_dummy_mod.l_5, q_cb_profit_try_with_dummy_mod.l_6, q_cb_profit_try_with_dummy_mod.curr
ORDER BY q_cb_profit_try_with_dummy_mod.rep_month, q_cb_profit_try_with_dummy_mod.pc, q_cb_profit_try_with_dummy_mod.l_1, q_cb_profit_try_with_dummy_mod.l_2, q_cb_profit_try_with_dummy_mod.l_3, q_cb_profit_try_with_dummy_mod.l_4, q_cb_profit_try_with_dummy_mod.l_5, q_cb_profit_try_with_dummy_mod.l_6
PIVOT q_cb_profit_try_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_usd_with_dummy_crosstab AS
transform sum(q_cb_profit_usd_with_dummy.profit) AS profit
SELECT q_cb_profit_usd_with_dummy.rep_month, q_cb_profit_usd_with_dummy.pc, q_cb_profit_usd_with_dummy.l_1, q_cb_profit_usd_with_dummy.l_2, q_cb_profit_usd_with_dummy.l_3, q_cb_profit_usd_with_dummy.l_4, q_cb_profit_usd_with_dummy.l_5, q_cb_profit_usd_with_dummy.l_6, q_cb_profit_usd_with_dummy.curr
FROM q_cb_profit_usd_with_dummy
GROUP BY q_cb_profit_usd_with_dummy.rep_month, q_cb_profit_usd_with_dummy.pc, q_cb_profit_usd_with_dummy.l_1, q_cb_profit_usd_with_dummy.l_2, q_cb_profit_usd_with_dummy.l_3, q_cb_profit_usd_with_dummy.l_4, q_cb_profit_usd_with_dummy.l_5, q_cb_profit_usd_with_dummy.l_6, q_cb_profit_usd_with_dummy.curr
ORDER BY q_cb_profit_usd_with_dummy.rep_month, q_cb_profit_usd_with_dummy.pc, q_cb_profit_usd_with_dummy.l_1, q_cb_profit_usd_with_dummy.l_2, q_cb_profit_usd_with_dummy.l_3, q_cb_profit_usd_with_dummy.l_4, q_cb_profit_usd_with_dummy.l_5, q_cb_profit_usd_with_dummy.l_6
PIVOT q_cb_profit_usd_with_dummy.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_usd_with_dummy_crosstab_mod AS
transform sum(q_cb_profit_usd_with_dummy_mod.profit) AS profit
SELECT q_cb_profit_usd_with_dummy_mod.rep_month, q_cb_profit_usd_with_dummy_mod.pc, q_cb_profit_usd_with_dummy_mod.l_1, q_cb_profit_usd_with_dummy_mod.l_2, q_cb_profit_usd_with_dummy_mod.l_3, q_cb_profit_usd_with_dummy_mod.l_4, q_cb_profit_usd_with_dummy_mod.l_5, q_cb_profit_usd_with_dummy_mod.l_6, q_cb_profit_usd_with_dummy_mod.curr
FROM q_cb_profit_usd_with_dummy_mod
GROUP BY q_cb_profit_usd_with_dummy_mod.rep_month, q_cb_profit_usd_with_dummy_mod.pc, q_cb_profit_usd_with_dummy_mod.l_1, q_cb_profit_usd_with_dummy_mod.l_2, q_cb_profit_usd_with_dummy_mod.l_3, q_cb_profit_usd_with_dummy_mod.l_4, q_cb_profit_usd_with_dummy_mod.l_5, q_cb_profit_usd_with_dummy_mod.l_6, q_cb_profit_usd_with_dummy_mod.curr
ORDER BY q_cb_profit_usd_with_dummy_mod.rep_month, q_cb_profit_usd_with_dummy_mod.pc, q_cb_profit_usd_with_dummy_mod.l_1, q_cb_profit_usd_with_dummy_mod.l_2, q_cb_profit_usd_with_dummy_mod.l_3, q_cb_profit_usd_with_dummy_mod.l_4, q_cb_profit_usd_with_dummy_mod.l_5, q_cb_profit_usd_with_dummy_mod.l_6
PIVOT q_cb_profit_usd_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_dist_with_dummy_crosstab AS
transform sum(q_cb_profit_with_dummy.profit) AS sumofprofit
SELECT q_cb_profit_with_dummy.rep_month, q_cb_profit_with_dummy.pc, q_cb_profit_with_dummy.l_1, q_cb_profit_with_dummy.l_2, q_cb_profit_with_dummy.l_3, q_cb_profit_with_dummy.l_4, q_cb_profit_with_dummy.l_5, q_cb_profit_with_dummy.l_6, q_cb_profit_with_dummy.curr
FROM q_cb_profit_with_dummy
GROUP BY q_cb_profit_with_dummy.rep_month, q_cb_profit_with_dummy.pc, q_cb_profit_with_dummy.l_1, q_cb_profit_with_dummy.l_2, q_cb_profit_with_dummy.l_3, q_cb_profit_with_dummy.l_4, q_cb_profit_with_dummy.l_5, q_cb_profit_with_dummy.l_6, q_cb_profit_with_dummy.curr
ORDER BY q_cb_profit_with_dummy.rep_month, q_cb_profit_with_dummy.pc, q_cb_profit_with_dummy.l_1, q_cb_profit_with_dummy.l_2, q_cb_profit_with_dummy.l_3, q_cb_profit_with_dummy.l_4, q_cb_profit_with_dummy.l_5, q_cb_profit_with_dummy.l_6, q_cb_profit_with_dummy.month
PIVOT q_cb_profit_with_dummy.month;

CREATE OR REPLACE VIEW -- ok
q_cb_profit_eur AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.month, 'eur' AS currency, s1.income as income, s1.expense as expense,  s1.income-s1.expense AS profit, t_cb_profit_total_st.key_r_pc_l6
FROM t_cb_profit_total_st LEFT JOIN mon_curr_rates ON (t_cb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_profit_total_st.month = mon_curr_rates.month), LATERAL ( SELECT CASE WHEN t_cb_profit_total_st.currency='usd' then t_cb_profit_total_st.income*r_usd_eur else case when t_cb_profit_total_st.currency='try'then t_cb_profit_total_st.income*r_try_eur else t_cb_profit_total_st.income END END, CASE WHEN t_cb_profit_total_st.currency='usd' then t_cb_profit_total_st.expense*r_usd_eur else case when t_cb_profit_total_st.currency='try' then t_cb_profit_total_st.expense*r_try_eur else t_cb_profit_total_st.expense end end ) AS s1(income, expense)
ORDER BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_eur_mod AS
SELECT t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6, t_cb_profit_total_mod_st.month, "eur" AS currency, iif(t_cb_profit_total_mod_st.currency="usd",t_cb_profit_total_mod_st.income*r_usd_eur,iif(t_cb_profit_total_mod_st.currency="try",t_cb_profit_total_mod_st.income*r_try_eur,t_cb_profit_total_mod_st.income)) AS income, iif(t_cb_profit_total_mod_st.currency="usd",t_cb_profit_total_mod_st.expense*r_usd_eur,iif(t_cb_profit_total_mod_st.currency="try",t_cb_profit_total_mod_st.expense*r_try_eur,t_cb_profit_total_mod_st.expense)) AS expense, income-expense AS profit, t_cb_profit_total_mod_st.key_r_pc_l6
FROM t_cb_profit_total_mod_st LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_cb_profit_total_mod_st.month = q_monthly_curr_rates_mod_crosstab.month
ORDER BY t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_eur_mod_mt AS
SELECT q_cb_profit_eur_mod.rep_month, q_cb_profit_eur_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, sum(q_cb_profit_eur_mod.expense) AS expense, sum(q_cb_profit_eur_mod.income) AS income, q_cb_profit_eur_mod.month, q_cb_profit_eur_mod.currency, q_cb_profit_eur_mod.l_1, q_cb_profit_eur_mod.l_2, q_cb_profit_eur_mod.l_3, q_cb_profit_eur_mod.l_4, q_cb_profit_eur_mod.l_5, q_cb_profit_eur_mod.l_6, sum(q_cb_profit_eur_mod.profit) AS profit, c6_code.DESC_tr_l6, q_cb_profit_eur_mod.key_r_pc_l6 into t_cb_profit_eur_st
FROM ((q_cb_profit_eur_mod LEFT JOIN c3_code ON (q_cb_profit_eur_mod.l_1 = c3_code.c_l1) AND (q_cb_profit_eur_mod.l_2 = c3_code.c_l2) AND (q_cb_profit_eur_mod.l_3 = c3_code.c_l3)) LEFT JOIN c2_code ON (q_cb_profit_eur_mod.l_1 = c2_code.c_l1) AND (q_cb_profit_eur_mod.l_2 = c2_code.c_l2)) LEFT JOIN c6_code ON (q_cb_profit_eur_mod.l_1 = c6_code.c_l1) AND (q_cb_profit_eur_mod.l_2 = c6_code.c_l2) AND (q_cb_profit_eur_mod.l_3 = c6_code.c_l3) AND (q_cb_profit_eur_mod.l_4 = c6_code.c_l4) AND (q_cb_profit_eur_mod.l_5 = c6_code.c_l5) AND (q_cb_profit_eur_mod.l_6 = c6_code.c_l6)
GROUP BY q_cb_profit_eur_mod.rep_month, q_cb_profit_eur_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_eur_mod.month, q_cb_profit_eur_mod.currency, q_cb_profit_eur_mod.l_1, q_cb_profit_eur_mod.l_2, q_cb_profit_eur_mod.l_3, q_cb_profit_eur_mod.l_4, q_cb_profit_eur_mod.l_5, q_cb_profit_eur_mod.l_6, c6_code.DESC_tr_l6, q_cb_profit_eur_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_eur_mt AS
SELECT q_cb_profit_eur.rep_month, q_cb_profit_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, sum(q_cb_profit_eur.expense) AS expense, sum(q_cb_profit_eur.income) AS income, q_cb_profit_eur.month, q_cb_profit_eur.currency, q_cb_profit_eur.l_1, q_cb_profit_eur.l_2, q_cb_profit_eur.l_3, q_cb_profit_eur.l_4, q_cb_profit_eur.l_5, q_cb_profit_eur.l_6, sum(q_cb_profit_eur.profit) AS profit, c6_code.DESC_tr_l6, q_cb_profit_eur.key_r_pc_l6 into t_cb_profit_eur_st
FROM ((q_cb_profit_eur LEFT JOIN c3_code ON (q_cb_profit_eur.l_3 = c3_code.c_l3) AND (q_cb_profit_eur.l_2 = c3_code.c_l2) AND (q_cb_profit_eur.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_cb_profit_eur.l_2 = c2_code.c_l2) AND (q_cb_profit_eur.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_cb_profit_eur.l_6 = c6_code.c_l6) AND (q_cb_profit_eur.l_5 = c6_code.c_l5) AND (q_cb_profit_eur.l_4 = c6_code.c_l4) AND (q_cb_profit_eur.l_3 = c6_code.c_l3) AND (q_cb_profit_eur.l_2 = c6_code.c_l2) AND (q_cb_profit_eur.l_1 = c6_code.c_l1)
GROUP BY q_cb_profit_eur.rep_month, q_cb_profit_eur.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_eur.month, q_cb_profit_eur.currency, q_cb_profit_eur.l_1, q_cb_profit_eur.l_2, q_cb_profit_eur.l_3, q_cb_profit_eur.l_4, q_cb_profit_eur.l_5, q_cb_profit_eur.l_6, c6_code.DESC_tr_l6, q_cb_profit_eur.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_eur_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_eur

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

	FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_eur_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_eur_mod

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full 


WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_mod AS
SELECT q_cb_pr_wbs_mod.rep_month, q_cb_pr_wbs_mod.pc, q_cb_pr_wbs_mod.l_1, q_cb_pr_wbs_mod.l_2, q_cb_pr_wbs_mod.l_3, q_cb_pr_wbs_mod.l_4, q_cb_pr_wbs_mod.l_5, q_cb_pr_wbs_mod.l_6, q_cb_pr_wbs_mod.currency, q_cb_pr_wbs_mod.month, iif(inc_total is null,0,inc_total) AS income, iif(total_expense is null,0,total_expense) AS expense, income-expense AS profit, q_cb_pr_wbs_mod.key_r_pc_l6
FROM (q_cb_pr_wbs_mod LEFT JOIN t_cb_inc_total_mod_st ON (q_cb_pr_wbs_mod.key_r_pc_l6 = t_cb_inc_total_mod_st.key_r_pc_l6) AND (q_cb_pr_wbs_mod.month = t_cb_inc_total_mod_st.month) AND (q_cb_pr_wbs_mod.currency = t_cb_inc_total_mod_st.currency)) LEFT JOIN t_q_cb_exp_mod ON (q_cb_pr_wbs_mod.key_r_pc_l6 = t_q_cb_exp_mod.key_r_pc_l6) AND (q_cb_pr_wbs_mod.month = t_q_cb_exp_mod.month) AND (q_cb_pr_wbs_mod.currency = t_q_cb_exp_mod.up_curr)
ORDER BY q_cb_pr_wbs_mod.rep_month, q_cb_pr_wbs_mod.pc, q_cb_pr_wbs_mod.l_1, q_cb_pr_wbs_mod.l_2, q_cb_pr_wbs_mod.l_3, q_cb_pr_wbs_mod.l_4, q_cb_pr_wbs_mod.l_5, q_cb_pr_wbs_mod.l_6, q_cb_pr_wbs_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_total_mod_mt AS
SELECT q_cb_profit_mod.rep_month, q_cb_profit_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_mod.month, sum(q_cb_profit_mod.expense) AS expense, sum(q_cb_profit_mod.income) AS income, q_cb_profit_mod.currency, q_cb_profit_mod.l_1, q_cb_profit_mod.l_2, q_cb_profit_mod.l_3, q_cb_profit_mod.l_4, q_cb_profit_mod.l_5, q_cb_profit_mod.l_6, sum(q_cb_profit_mod.profit) AS profit, c6_code.DESC_tr_l6, q_cb_profit_mod.key_r_pc_l6 into t_cb_profit_total_mod_st
FROM ((q_cb_profit_mod LEFT JOIN c3_code ON (q_cb_profit_mod.l_3 = c3_code.c_l3) AND (q_cb_profit_mod.l_2 = c3_code.c_l2) AND (q_cb_profit_mod.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_cb_profit_mod.l_2 = c2_code.c_l2) AND (q_cb_profit_mod.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_cb_profit_mod.l_6 = c6_code.c_l6) AND (q_cb_profit_mod.l_5 = c6_code.c_l5) AND (q_cb_profit_mod.l_4 = c6_code.c_l4) AND (q_cb_profit_mod.l_3 = c6_code.c_l3) AND (q_cb_profit_mod.l_2 = c6_code.c_l2) AND (q_cb_profit_mod.l_1 = c6_code.c_l1)
GROUP BY q_cb_profit_mod.rep_month, q_cb_profit_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_mod.month, q_cb_profit_mod.currency, q_cb_profit_mod.l_1, q_cb_profit_mod.l_2, q_cb_profit_mod.l_3, q_cb_profit_mod.l_4, q_cb_profit_mod.l_5, q_cb_profit_mod.l_6, c6_code.DESC_tr_l6, q_cb_profit_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_total_mt AS
SELECT q_cb_profit.rep_month, q_cb_profit.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit.month, q_cb_profit.expense, q_cb_profit.income, q_cb_profit.currency, q_cb_profit.l_1, q_cb_profit.l_2, q_cb_profit.l_3, q_cb_profit.l_4, q_cb_profit.l_5, q_cb_profit.l_6, q_cb_profit.profit, c6_code.DESC_tr_l6, q_cb_profit.key_r_pc_l6 into t_cb_profit_total_st
FROM ((q_cb_profit LEFT JOIN c3_code ON (q_cb_profit.l_1 = c3_code.c_l1) AND (q_cb_profit.l_2 = c3_code.c_l2) AND (q_cb_profit.l_3 = c3_code.c_l3)) LEFT JOIN c2_code ON (q_cb_profit.l_1 = c2_code.c_l1) AND (q_cb_profit.l_2 = c2_code.c_l2)) LEFT JOIN c6_code ON (q_cb_profit.l_1 = c6_code.c_l1) AND (q_cb_profit.l_2 = c6_code.c_l2) AND (q_cb_profit.l_3 = c6_code.c_l3) AND (q_cb_profit.l_4 = c6_code.c_l4) AND (q_cb_profit.l_5 = c6_code.c_l5) AND (q_cb_profit.l_6 = c6_code.c_l6)
GROUP BY q_cb_profit.rep_month, q_cb_profit.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit.month, q_cb_profit.expense, q_cb_profit.income, q_cb_profit.currency, q_cb_profit.l_1, q_cb_profit.l_2, q_cb_profit.l_3, q_cb_profit.l_4, q_cb_profit.l_5, q_cb_profit.l_6, q_cb_profit.profit, c6_code.DESC_tr_l6, q_cb_profit.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_cb_profit_try AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.month, 'try' AS currency, s1.income as income, s1. expense as expense, s1.income-s1.expense AS profit, t_cb_profit_total_st.key_r_pc_l6
FROM t_cb_profit_total_st LEFT JOIN mon_curr_rates ON (t_cb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_profit_total_st.month = mon_curr_rates.month), LATERAL ( SELECT
case when t_cb_profit_total_st.currency='usd' then t_cb_profit_total_st.income*r_usd_try else case when t_cb_profit_total_st.currency='eur' then t_cb_profit_total_st.income*r_eur_try else t_cb_profit_total_st.income end end, case when t_cb_profit_total_st.currency='usd' then t_cb_profit_total_st.expense*r_usd_try else case when t_cb_profit_total_st.currency='eur' then t_cb_profit_total_st.expense*r_eur_try else t_cb_profit_total_st.expense end end) AS s1(income, expense)
ORDER BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_try_mod AS
SELECT t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6, t_cb_profit_total_mod_st.month, "try" AS currency, iif(t_cb_profit_total_mod_st.currency="usd",t_cb_profit_total_mod_st.income*r_usd_try,iif(t_cb_profit_total_mod_st.currency="eur",t_cb_profit_total_mod_st.income*r_eur_try,t_cb_profit_total_mod_st.income)) AS income, iif(t_cb_profit_total_mod_st.currency="usd",t_cb_profit_total_mod_st.expense*r_usd_try,iif(t_cb_profit_total_mod_st.currency="eur",t_cb_profit_total_mod_st.expense*r_eur_try,t_cb_profit_total_mod_st.expense)) AS expense, income-expense AS profit, t_cb_profit_total_mod_st.key_r_pc_l6
FROM t_cb_profit_total_mod_st LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_cb_profit_total_mod_st.month = q_monthly_curr_rates_mod_crosstab.month
ORDER BY t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_try_mod_mt AS
SELECT q_cb_profit_try_mod.rep_month, q_cb_profit_try_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_try_mod.month, sum(q_cb_profit_try_mod.expense) AS expense, sum(q_cb_profit_try_mod.income) AS income, q_cb_profit_try_mod.currency, q_cb_profit_try_mod.l_1, q_cb_profit_try_mod.l_2, q_cb_profit_try_mod.l_3, q_cb_profit_try_mod.l_4, q_cb_profit_try_mod.l_5, q_cb_profit_try_mod.l_6, sum(q_cb_profit_try_mod.profit) AS profit, c6_code.DESC_tr_l6 into t_cb_profit_mod_try_st
FROM ((q_cb_profit_try_mod LEFT JOIN c3_code ON (q_cb_profit_try_mod.l_1 = c3_code.c_l1) AND (q_cb_profit_try_mod.l_2 = c3_code.c_l2) AND (q_cb_profit_try_mod.l_3 = c3_code.c_l3)) LEFT JOIN c2_code ON (q_cb_profit_try_mod.l_1 = c2_code.c_l1) AND (q_cb_profit_try_mod.l_2 = c2_code.c_l2)) LEFT JOIN c6_code ON (q_cb_profit_try_mod.l_1 = c6_code.c_l1) AND (q_cb_profit_try_mod.l_2 = c6_code.c_l2) AND (q_cb_profit_try_mod.l_3 = c6_code.c_l3) AND (q_cb_profit_try_mod.l_4 = c6_code.c_l4) AND (q_cb_profit_try_mod.l_5 = c6_code.c_l5) AND (q_cb_profit_try_mod.l_6 = c6_code.c_l6)
GROUP BY q_cb_profit_try_mod.rep_month, q_cb_profit_try_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_try_mod.month, q_cb_profit_try_mod.currency, q_cb_profit_try_mod.l_1, q_cb_profit_try_mod.l_2, q_cb_profit_try_mod.l_3, q_cb_profit_try_mod.l_4, q_cb_profit_try_mod.l_5, q_cb_profit_try_mod.l_6, c6_code.DESC_tr_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_try_mt AS
SELECT q_cb_profit_try.rep_month, q_cb_profit_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_try.month, sum(q_cb_profit_try.expense) AS expense, sum(q_cb_profit_try.income) AS income, q_cb_profit_try.currency, q_cb_profit_try.l_1, q_cb_profit_try.l_2, q_cb_profit_try.l_3, q_cb_profit_try.l_4, q_cb_profit_try.l_5, q_cb_profit_try.l_6, sum(q_cb_profit_try.profit) AS profit, c6_code.DESC_tr_l6, q_cb_profit_try.key_r_pc_l6 into t_cb_profit_try_st
FROM ((q_cb_profit_try LEFT JOIN c3_code ON (q_cb_profit_try.l_1 = c3_code.c_l1) AND (q_cb_profit_try.l_2 = c3_code.c_l2) AND (q_cb_profit_try.l_3 = c3_code.c_l3)) LEFT JOIN c2_code ON (q_cb_profit_try.l_1 = c2_code.c_l1) AND (q_cb_profit_try.l_2 = c2_code.c_l2)) LEFT JOIN c6_code ON (q_cb_profit_try.l_1 = c6_code.c_l1) AND (q_cb_profit_try.l_2 = c6_code.c_l2) AND (q_cb_profit_try.l_3 = c6_code.c_l3) AND (q_cb_profit_try.l_4 = c6_code.c_l4) AND (q_cb_profit_try.l_5 = c6_code.c_l5) AND (q_cb_profit_try.l_6 = c6_code.c_l6)
GROUP BY q_cb_profit_try.rep_month, q_cb_profit_try.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_try.month, q_cb_profit_try.currency, q_cb_profit_try.l_1, q_cb_profit_try.l_2, q_cb_profit_try.l_3, q_cb_profit_try.l_4, q_cb_profit_try.l_5, q_cb_profit_try.l_6, c6_code.DESC_tr_l6, q_cb_profit_try.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_try_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_try

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_try_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_try_mod

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full

WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- ok
q_cb_profit_usd AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6, t_cb_profit_total_st.month, 'usd' AS currency,s1.income as income, s1.expense as expense, s1.income-s1.expense AS profit, t_cb_profit_total_st.key_r_pc_l6
FROM t_cb_profit_total_st LEFT JOIN mon_curr_rates ON (t_cb_profit_total_st.rep_month = mon_curr_rates.rep_month) AND (t_cb_profit_total_st.month = mon_curr_rates.month), LATERAL ( SELECT 
CASE WHEN t_cb_profit_total_st.currency='eur' then t_cb_profit_total_st.income*r_eur_usd else case when t_cb_profit_total_st.currency='try' then t_cb_profit_total_st.income*r_try_usd else t_cb_profit_total_st.income end end, case when t_cb_profit_total_st.currency='eur'then t_cb_profit_total_st.expense*r_eur_usd else case when t_cb_profit_total_st.currency='try' then t_cb_profit_total_st.expense*r_try_usd else t_cb_profit_total_st.expense end end) AS s1(income, expense) 
ORDER BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_cb_profit_total_st.l_1, t_cb_profit_total_st.l_2, t_cb_profit_total_st.l_3, t_cb_profit_total_st.l_4, t_cb_profit_total_st.l_5, t_cb_profit_total_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_usd_mod AS
SELECT t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6, t_cb_profit_total_mod_st.month, "usd" AS currency, iif(t_cb_profit_total_mod_st.currency="eur",t_cb_profit_total_mod_st.income*r_eur_usd,iif(t_cb_profit_total_mod_st.currency="try",t_cb_profit_total_mod_st.income*r_try_usd,t_cb_profit_total_mod_st.income)) AS income, iif(t_cb_profit_total_mod_st.currency="eur",t_cb_profit_total_mod_st.expense*r_eur_usd,iif(t_cb_profit_total_mod_st.currency="try",t_cb_profit_total_mod_st.expense*r_try_usd,t_cb_profit_total_mod_st.expense)) AS expense, income-expense AS profit, t_cb_profit_total_mod_st.key_r_pc_l6
FROM t_cb_profit_total_mod_st LEFT JOIN q_monthly_curr_rates_mod_crosstab ON t_cb_profit_total_mod_st.month = q_monthly_curr_rates_mod_crosstab.month
ORDER BY t_cb_profit_total_mod_st.rep_month, t_cb_profit_total_mod_st.pc, t_cb_profit_total_mod_st.l_1, t_cb_profit_total_mod_st.l_2, t_cb_profit_total_mod_st.l_3, t_cb_profit_total_mod_st.l_4, t_cb_profit_total_mod_st.l_5, t_cb_profit_total_mod_st.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_usd_mod_mt AS
SELECT q_cb_profit_usd_mod.rep_month, q_cb_profit_usd_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_usd_mod.month, sum(q_cb_profit_usd_mod.expense) AS expense, sum(q_cb_profit_usd_mod.income) AS income, q_cb_profit_usd_mod.currency, q_cb_profit_usd_mod.l_1, q_cb_profit_usd_mod.l_2, q_cb_profit_usd_mod.l_3, q_cb_profit_usd_mod.l_4, q_cb_profit_usd_mod.l_5, q_cb_profit_usd_mod.l_6, sum(q_cb_profit_usd_mod.profit) AS profit, c6_code.DESC_tr_l6 into t_cb_profit_usd_mod_st
FROM ((q_cb_profit_usd_mod LEFT JOIN c3_code ON (q_cb_profit_usd_mod.l_1 = c3_code.c_l1) AND (q_cb_profit_usd_mod.l_2 = c3_code.c_l2) AND (q_cb_profit_usd_mod.l_3 = c3_code.c_l3)) LEFT JOIN c2_code ON (q_cb_profit_usd_mod.l_1 = c2_code.c_l1) AND (q_cb_profit_usd_mod.l_2 = c2_code.c_l2)) LEFT JOIN c6_code ON (q_cb_profit_usd_mod.l_1 = c6_code.c_l1) AND (q_cb_profit_usd_mod.l_2 = c6_code.c_l2) AND (q_cb_profit_usd_mod.l_3 = c6_code.c_l3) AND (q_cb_profit_usd_mod.l_4 = c6_code.c_l4) AND (q_cb_profit_usd_mod.l_5 = c6_code.c_l5) AND (q_cb_profit_usd_mod.l_6 = c6_code.c_l6)
GROUP BY q_cb_profit_usd_mod.rep_month, q_cb_profit_usd_mod.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_usd_mod.month, q_cb_profit_usd_mod.currency, q_cb_profit_usd_mod.l_1, q_cb_profit_usd_mod.l_2, q_cb_profit_usd_mod.l_3, q_cb_profit_usd_mod.l_4, q_cb_profit_usd_mod.l_5, q_cb_profit_usd_mod.l_6, c6_code.DESC_tr_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_usd_mt AS
SELECT q_cb_profit_usd.rep_month, q_cb_profit_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6 AS j_code, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_usd.month, sum(q_cb_profit_usd.expense) AS expense, sum(q_cb_profit_usd.income) AS income, q_cb_profit_usd.currency, q_cb_profit_usd.l_1, q_cb_profit_usd.l_2, q_cb_profit_usd.l_3, q_cb_profit_usd.l_4, q_cb_profit_usd.l_5, q_cb_profit_usd.l_6, sum(q_cb_profit_usd.profit) AS profit, c6_code.DESC_tr_l6, q_cb_profit_usd.key_r_pc_l6 into t_cb_profit_usd_st
FROM ((q_cb_profit_usd LEFT JOIN c3_code ON (q_cb_profit_usd.l_3 = c3_code.c_l3) AND (q_cb_profit_usd.l_2 = c3_code.c_l2) AND (q_cb_profit_usd.l_1 = c3_code.c_l1)) LEFT JOIN c2_code ON (q_cb_profit_usd.l_2 = c2_code.c_l2) AND (q_cb_profit_usd.l_1 = c2_code.c_l1)) LEFT JOIN c6_code ON (q_cb_profit_usd.l_6 = c6_code.c_l6) AND (q_cb_profit_usd.l_5 = c6_code.c_l5) AND (q_cb_profit_usd.l_4 = c6_code.c_l4) AND (q_cb_profit_usd.l_3 = c6_code.c_l3) AND (q_cb_profit_usd.l_2 = c6_code.c_l2) AND (q_cb_profit_usd.l_1 = c6_code.c_l1)
GROUP BY q_cb_profit_usd.rep_month, q_cb_profit_usd.pc, l_1 & "." & l_2 & "." & l_3 & "." & l_4 & "." & l_5 & "." & l_6, c2_code.DESC_tr_l2, c3_code.DESC_tr_l3, q_cb_profit_usd.month, q_cb_profit_usd.currency, q_cb_profit_usd.l_1, q_cb_profit_usd.l_2, q_cb_profit_usd.l_3, q_cb_profit_usd.l_4, q_cb_profit_usd.l_5, q_cb_profit_usd.l_6, c6_code.DESC_tr_l6, q_cb_profit_usd.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_usd_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_usd

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW 
q_cb_profit_usd_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
profit,
currency AS curr

FROM 
q_cb_profit_usd_mod

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
g_month AS month,
total_expense AS profit,
up_curr AS curr

FROM 
q_bb_qty_dummy_full




WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_with_dummy AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency AS curr,
month,
profit

FROM 
q_cb_profit

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr AS curr,
g_month AS month,
total_expense AS profit

FROM 
q_bb_qty_dummy_full;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_with_dummy_crosstab_mod AS
transform sum(q_cb_profit_with_dummy_mod.profit) AS total_profit
SELECT q_cb_profit_with_dummy_mod.rep_month, q_cb_profit_with_dummy_mod.pc, q_cb_profit_with_dummy_mod.l_1, q_cb_profit_with_dummy_mod.l_2, q_cb_profit_with_dummy_mod.l_3, q_cb_profit_with_dummy_mod.l_4, q_cb_profit_with_dummy_mod.l_5, q_cb_profit_with_dummy_mod.l_6, q_cb_profit_with_dummy_mod.curr, iif(curr="eur","r_eur_try",iif(curr="usd","r_usd_try","r_try_try")) AS exc_try, iif(curr="eur","r_eur_usd",iif(curr="usd","r_usd_usd","r_try_usd")) AS exc_usd, iif(curr="eur","r_eur_eur",iif(curr="usd","r_usd_eur","r_try_eur")) AS exc_eur
FROM q_cb_profit_with_dummy_mod
GROUP BY q_cb_profit_with_dummy_mod.rep_month, q_cb_profit_with_dummy_mod.pc, q_cb_profit_with_dummy_mod.l_1, q_cb_profit_with_dummy_mod.l_2, q_cb_profit_with_dummy_mod.l_3, q_cb_profit_with_dummy_mod.l_4, q_cb_profit_with_dummy_mod.l_5, q_cb_profit_with_dummy_mod.l_6, q_cb_profit_with_dummy_mod.curr, iif(curr="eur","r_eur_try",iif(curr="usd","r_usd_try","r_try_try")), iif(curr="eur","r_eur_usd",iif(curr="usd","r_usd_usd","r_try_usd")), iif(curr="eur","r_eur_eur",iif(curr="usd","r_usd_eur","r_try_eur"))
PIVOT q_cb_profit_with_dummy_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_profit_with_dummy_mod AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency AS curr,
month,
profit

FROM 
q_cb_profit_mod

UNION ALL SELECT 
rep_month,
p_code,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr AS curr,
g_month AS month,
total_expense AS profit

FROM 
q_bb_qty_dummy_full

WHERE (((rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW --ok
q_cb_project_months AS
SELECT t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_001_projects.r03_s_name AS name
FROM t_cb_profit_total_st LEFT JOIN t_001_projects ON t_cb_profit_total_st.pc = t_001_projects.p_code
GROUP BY t_cb_profit_total_st.rep_month, t_cb_profit_total_st.pc, t_001_projects.r03_s_name
ORDER BY t_cb_profit_total_st.rep_month DESC;

CREATE OR REPLACE VIEW -- ok
q_cb_qty_activem_works AS
SELECT t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon
FROM t_cb_qty LEFT JOIN t_rep_month ON t_cb_qty.rep_month = t_rep_month.rep_month
WHERE (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) AND ((t_cb_qty.exp_cb_qty)<>0))
ORDER BY t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_qty_activem_works_mod AS
SELECT t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon
FROM t_cb_qty LEFT JOIN t_rep_month ON t_cb_qty.rep_month = t_rep_month.rep_month
WHERE ((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) AND ((t_cb_qty.exp_cb_qty)<>0) AND ((t_cb_qty.rep_month)=(SELECT rep_month FROM q_rep_month_max_val))
ORDER BY t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_qty_activem_works_monthly AS
SELECT t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
FROM t_cb_qty LEFT JOIN t_rep_month ON t_cb_qty.rep_month = t_rep_month.rep_month
WHERE (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) AND ((t_cb_qty.exp_cb_qty)<>0))
GROUP BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
ORDER BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_qty_activem_works_monthly_mod AS
SELECT t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
FROM t_cb_qty LEFT JOIN t_rep_month ON t_cb_qty.rep_month = t_rep_month.rep_month
WHERE (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) AND ((t_cb_qty.exp_cb_qty)<>0))
GROUP BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
HAVING ((t_cb_qty.rep_month)=(SELECT rep_month FROM q_rep_month_max_val))
ORDER BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;

CREATE OR REPLACE VIEW -- not ok
q_cb_qty_crosstab AS
transform sum(t_cb_qty.exp_cb_qty) AS sumofexp_cb_qty
SELECT t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.l_1, t_cb_qty.l_2, t_cb_qty.l_3, t_cb_qty.l_4, t_cb_qty.l_5, t_cb_qty.l_6
FROM t_cb_qty
GROUP BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.l_1, t_cb_qty.l_2, t_cb_qty.l_3, t_cb_qty.l_4, t_cb_qty.l_5, t_cb_qty.l_6
ORDER BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.l_1, t_cb_qty.l_2, t_cb_qty.l_3, t_cb_qty.l_4, t_cb_qty.l_5, t_cb_qty.l_6
PIVOT t_cb_qty.exp_cb_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_res_up_market_coeff AS
SELECT q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.rs_l1 AS r_1_code, q_cb_up_pre_coeff_activem_indexes.rs_l2 AS r_2_code, q_cb_up_pre_coeff_activem_indexes.rs_l3 AS r_3_code, q_cb_up_pre_coeff_activem_indexes.rs_l4 AS r_4_code, (1+w_ufe*bb_ufe)*(1+w_tufe*bb_tufe)*(1+w_inf_usd*bb_inf_usd)*(1+w_inf_eur*bb_inf_eur)*(1+w_metal*bb_metal)*(1+w_petrol*bb_petrol)*(1+w_cement*bb_cement)*(1+w_electricity*bb_electricity) AS up_cost_coeff, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS g_month, q_cb_up_pre_coeff_activem_indexes.up_cost, q_cb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_cb_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_up_pre_coeff_activem_indexes.key_r4, q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_up_pre_coeff_activem_indexes.key_full, key_full || '.' || q_cb_up_pre_coeff_activem_indexes.rs_currency || '.' || q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS key_full_comb
FROM q_cb_up_pre_coeff_activem_indexes LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes.key_r4_simple = r4_code.key_r4_simple
GROUP BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.rs_l1, q_cb_up_pre_coeff_activem_indexes.rs_l2, q_cb_up_pre_coeff_activem_indexes.rs_l3, q_cb_up_pre_coeff_activem_indexes.rs_l4, (1+w_ufe*bb_ufe)*(1+w_tufe*bb_tufe)*(1+w_inf_usd*bb_inf_usd)*(1+w_inf_eur*bb_inf_eur)*(1+w_metal*bb_metal)*(1+w_petrol*bb_petrol)*(1+w_cement*bb_cement)*(1+w_electricity*bb_electricity), q_cb_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes.up_cost, q_cb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_cb_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_up_pre_coeff_activem_indexes.key_r4, q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_up_pre_coeff_activem_indexes.key_full, key_full || '.' || q_cb_up_pre_coeff_activem_indexes.rs_currency || '.' || q_cb_up_pre_coeff_activem_indexes.exp_cb_mon
ORDER BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.rs_l1, q_cb_up_pre_coeff_activem_indexes.rs_l2, q_cb_up_pre_coeff_activem_indexes.rs_l3, q_cb_up_pre_coeff_activem_indexes.rs_l4, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon;

CREATE OR REPLACE VIEW -- not ok
q_cb_res_up_market_coeff_mod AS
SELECT q_cb_up_pre_coeff_activem_indexes_mod.rep_month, q_cb_up_pre_coeff_activem_indexes_mod.pc, q_cb_up_pre_coeff_activem_indexes_mod.l_1, q_cb_up_pre_coeff_activem_indexes_mod.l_2, q_cb_up_pre_coeff_activem_indexes_mod.l_3, q_cb_up_pre_coeff_activem_indexes_mod.l_4, q_cb_up_pre_coeff_activem_indexes_mod.l_5, q_cb_up_pre_coeff_activem_indexes_mod.l_6, q_cb_up_pre_coeff_activem_indexes_mod.rs_l1 AS r_1_code, q_cb_up_pre_coeff_activem_indexes_mod.rs_l2 AS r_2_code, q_cb_up_pre_coeff_activem_indexes_mod.rs_l3 AS r_3_code, q_cb_up_pre_coeff_activem_indexes_mod.rs_l4 AS r_4_code, q_cb_up_pre_coeff_activem_indexes_mod.rs_currency AS currency, (1+w_ufe*bb_ufe)*(1+w_tufe*bb_tufe)*(1+w_inf_usd*bb_inf_usd)*(1+w_inf_eur*bb_inf_eur)*(1+w_metal*bb_metal)*(1+w_petrol*bb_petrol)*(1+w_cement*bb_cement)*(1+w_electricity*bb_electricity) AS up_cost_coeff, q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon AS g_month, q_cb_up_pre_coeff_activem_indexes_mod.up_cost, q_cb_up_pre_coeff_activem_indexes_mod.an_rs_quantity, q_cb_up_pre_coeff_activem_indexes_mod.key_r4, q_cb_up_pre_coeff_activem_indexes_mod.key_r_pc_l6, q_cb_up_pre_coeff_activem_indexes_mod.key_full, q_cb_up_pre_coeff_activem_indexes_mod.key_r4_simple, key_full || '.' || q_cb_up_pre_coeff_activem_indexes_mod.rs_currency || '.' || q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon AS key_full_comb
FROM q_cb_up_pre_coeff_activem_indexes_mod LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes_mod.key_r4_simple = r4_code.key_r4_simple
GROUP BY q_cb_up_pre_coeff_activem_indexes_mod.rep_month, q_cb_up_pre_coeff_activem_indexes_mod.pc, q_cb_up_pre_coeff_activem_indexes_mod.l_1, q_cb_up_pre_coeff_activem_indexes_mod.l_2, q_cb_up_pre_coeff_activem_indexes_mod.l_3, q_cb_up_pre_coeff_activem_indexes_mod.l_4, q_cb_up_pre_coeff_activem_indexes_mod.l_5, q_cb_up_pre_coeff_activem_indexes_mod.l_6, q_cb_up_pre_coeff_activem_indexes_mod.rs_l1, q_cb_up_pre_coeff_activem_indexes_mod.rs_l2, q_cb_up_pre_coeff_activem_indexes_mod.rs_l3, q_cb_up_pre_coeff_activem_indexes_mod.rs_l4, q_cb_up_pre_coeff_activem_indexes_mod.rs_currency, (1+w_ufe*bb_ufe)*(1+w_tufe*bb_tufe)*(1+w_inf_usd*bb_inf_usd)*(1+w_inf_eur*bb_inf_eur)*(1+w_metal*bb_metal)*(1+w_petrol*bb_petrol)*(1+w_cement*bb_cement)*(1+w_electricity*bb_electricity), q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes_mod.up_cost, q_cb_up_pre_coeff_activem_indexes_mod.an_rs_quantity, q_cb_up_pre_coeff_activem_indexes_mod.key_r4, q_cb_up_pre_coeff_activem_indexes_mod.key_r_pc_l6, q_cb_up_pre_coeff_activem_indexes_mod.key_full, q_cb_up_pre_coeff_activem_indexes_mod.key_r4_simple, key_full || '.' || q_cb_up_pre_coeff_activem_indexes_mod.rs_currency || '.' || q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon
ORDER BY q_cb_up_pre_coeff_activem_indexes_mod.rep_month, q_cb_up_pre_coeff_activem_indexes_mod.pc, q_cb_up_pre_coeff_activem_indexes_mod.l_1, q_cb_up_pre_coeff_activem_indexes_mod.l_2, q_cb_up_pre_coeff_activem_indexes_mod.l_3, q_cb_up_pre_coeff_activem_indexes_mod.l_4, q_cb_up_pre_coeff_activem_indexes_mod.l_5, q_cb_up_pre_coeff_activem_indexes_mod.l_6, q_cb_up_pre_coeff_activem_indexes_mod.rs_l1, q_cb_up_pre_coeff_activem_indexes_mod.rs_l2, q_cb_up_pre_coeff_activem_indexes_mod.rs_l3, q_cb_up_pre_coeff_activem_indexes_mod.rs_l4, q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon;

CREATE OR REPLACE VIEW -- not ok
q_cb_sum_cons_data AS
SELECT q_budget_wbs_union.l_1, q_budget_wbs_union.l_2, q_budget_wbs_union.l_3, q_budget_wbs_union.l_4, q_budget_wbs_union.l_5, q_budget_wbs_union.l_6, q_budget_wbs_union.up_curr, sum(iif(q_second_budget_gt.incomegt is null,"0",q_second_budget_gt.incomegt)) AS incomegt_second, sum(iif(q_second_budget_gt.expensegt is null,"0",q_second_budget_gt.expensegt)) AS expensegt_second, sum(iif(q_second_budget_gt.profitgt is null,"0",q_second_budget_gt.profitgt)) AS profitgt_second, sum(iif(q_first_budget_gt.incomegt is null,"0",q_first_budget_gt.incomegt)) AS incomegt_first, sum(iif(q_first_budget_gt.expensegt is null,"0",q_first_budget_gt.expensegt)) AS expensegt_first, sum(iif(q_first_budget_gt.profitgt is null,"0",q_first_budget_gt.profitgt)) AS profitgt_first, incomegt_second-incomegt_first AS incomediffgt, expensegt_second-expensegt_first AS expensediff_gt, profitgt_second-profitgt_first AS profitdiff_gt, sum(iif(q_second_budget_rt_grouped.incomert is null,"0",q_second_budget_rt_grouped.incomert)) AS incomert_second, sum(iif(q_second_budget_rt_grouped.expensert is null,"0",q_second_budget_rt_grouped.expensert)) AS expensert_second, sum(iif(q_second_budget_rt_grouped.profitrt is null,"0",q_second_budget_rt_grouped.profitrt)) AS profitrt_second, sum(iif(q_first_budget_rt_grouped.incomert is null,"0",q_first_budget_rt_grouped.incomert)) AS incomert_first, sum(iif(q_first_budget_rt_grouped.expensert is null,"0",q_first_budget_rt_grouped.expensert)) AS expensert_first, sum(iif(q_first_budget_rt_grouped.profitrt is null,"0",q_first_budget_rt_grouped.profitrt)) AS profitrt_first, incomert_second-incomert_first AS incomediffrt, expensert_second-expensert_first AS expensediff_rt, profitrt_second-profitrt_first AS profitdiff_rt, incomegt_second-incomert_second AS incomerem_second, expensegt_second-expensert_second AS expenserem_second, profitgt_second-profitrt_second AS profitrem_second, incomegt_first-incomert_first AS incomerem_first, expensegt_first-expensert_first AS expenserem_first, profitgt_first-profitrt_first AS profitrem_first, incomerem_second-incomerem_first AS incomerem_diff, expenserem_second-expenserem_first AS expenserem_diff, profitrem_second-profitrem_first AS profitrem_diff, q_budget_wbs_union.DESC_tr_l3, q_budget_wbs_union.DESC_tr_l2, q_budget_wbs_union.DESC_tr_l6
FROM (((q_budget_wbs_UNION LEFT JOIN q_second_budget_gt ON (q_budget_wbs_union.up_curr = q_second_budget_gt.up_curr) AND (q_budget_wbs_union.l_6 = q_second_budget_gt.l_6) AND (q_budget_wbs_union.l_5 = q_second_budget_gt.l_5) AND (q_budget_wbs_union.l_4 = q_second_budget_gt.l_4) AND (q_budget_wbs_union.l_3 = q_second_budget_gt.l_3) AND (q_budget_wbs_union.l_2 = q_second_budget_gt.l_2) AND (q_budget_wbs_union.l_1 = q_second_budget_gt.l_1)) LEFT JOIN q_first_budget_gt ON (q_budget_wbs_union.up_curr = q_first_budget_gt.up_curr) AND (q_budget_wbs_union.l_6 = q_first_budget_gt.l_6) AND (q_budget_wbs_union.l_5 = q_first_budget_gt.l_5) AND (q_budget_wbs_union.l_4 = q_first_budget_gt.l_4) AND (q_budget_wbs_union.l_3 = q_first_budget_gt.l_3) AND (q_budget_wbs_union.l_2 = q_first_budget_gt.l_2) AND (q_budget_wbs_union.l_1 = q_first_budget_gt.l_1)) LEFT JOIN q_second_budget_rt_grouped ON (q_budget_wbs_union.up_curr = q_second_budget_rt_grouped.up_curr) AND (q_budget_wbs_union.l_6 = q_second_budget_rt_grouped.l_6) AND (q_budget_wbs_union.l_5 = q_second_budget_rt_grouped.l_5) AND (q_budget_wbs_union.l_4 = q_second_budget_rt_grouped.l_4) AND (q_budget_wbs_union.l_3 = q_second_budget_rt_grouped.l_3) AND (q_budget_wbs_union.l_2 = q_second_budget_rt_grouped.l_2) AND (q_budget_wbs_union.l_1 = q_second_budget_rt_grouped.l_1)) LEFT JOIN q_first_budget_rt_grouped ON (q_budget_wbs_union.up_curr = q_first_budget_rt_grouped.up_curr) AND (q_budget_wbs_union.l_6 = q_first_budget_rt_grouped.l_6) AND (q_budget_wbs_union.l_5 = q_first_budget_rt_grouped.l_5) AND (q_budget_wbs_union.l_4 = q_first_budget_rt_grouped.l_4) AND (q_budget_wbs_union.l_3 = q_first_budget_rt_grouped.l_3) AND (q_budget_wbs_union.l_2 = q_first_budget_rt_grouped.l_2) AND (q_budget_wbs_union.l_1 = q_first_budget_rt_grouped.l_1)
GROUP BY q_budget_wbs_union.l_1, q_budget_wbs_union.l_2, q_budget_wbs_union.l_3, q_budget_wbs_union.l_4, q_budget_wbs_union.l_5, q_budget_wbs_union.l_6, q_budget_wbs_union.up_curr, q_budget_wbs_union.DESC_tr_l3, q_budget_wbs_union.DESC_tr_l2, q_budget_wbs_union.DESC_tr_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_sum_cons_mod_usd_total AS
SELECT sum(t_q_cb_exp_usd_mod.usd_expense) AS total_usd_expense, t_q_cb_exp_usd_mod.rep_month
FROM t_q_cb_exp_usd_mod
GROUP BY t_q_cb_exp_usd_mod.rep_month
HAVING (((t_q_cb_exp_usd_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_cb_sum_cons_report_data AS
SELECT 
		l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
incomegt_second AS second_data_gt,
incomert_second AS second_data_rt,
incomegt_first AS first_data_gt,
incomert_first AS first_data_rt,
incomerem_second AS second_data_rem,
incomerem_first AS first_data_rem,
incomegt_second - incomegt_first AS gt_rem,
incomert_second - incomert_first AS rt_rem,
incomerem_second - incomerem_first AS rem_rem,
"1 - GELİR" AS budget_type

FROM 
q_cb_sum_cons_data

WHERE (incomegt_second + incomert_second + incomegt_first + incomert_first) <> 0

union

SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
expensegt_second,
expensert_second,
expensegt_first,
expensert_first,
expenserem_second,
expenserem_first,
expensegt_second - expensegt_first,
expensert_second - expensert_first AS rt_rem,
expenserem_second - expenserem_first AS rem_rem,
"2 - GİDER" AS budget_type

FROM 
q_cb_sum_cons_data

WHERE  (expensegt_second + expensert_second + expensegt_first + expensert_first) <>0

UNION SELECT 
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
profitgt_second,
profitrt_second,
profitgt_first,
profitrt_first,
profitrem_second,
profitrem_first,
profitgt_second - profitgt_first,
profitrt_second - profitrt_first AS rt_rem,
profitrem_second - profitrem_first AS rem_rem,
"3 - BRÜT KAR" AS budget_type

FROM 
q_cb_sum_cons_data

WHERE  (profitgt_second + profitrt_second + profitgt_first + profitrt_first) <>0;

CREATE OR REPLACE VIEW -- ok
q_cb_sum_cons_usd_total AS
SELECT sum(t_q_cb_exp_usd.usd_expense) AS total_usd_expense, t_q_cb_exp_usd.rep_month
FROM t_q_cb_exp_usd
GROUP BY t_q_cb_exp_usd.rep_month
HAVING ((t_q_cb_exp_usd.rep_month)=(SELECT rep_month FROM q_rep_month_max_val));

CREATE OR REPLACE VIEW -- not ok
q_cb_sum_projects_data AS
SELECT q_budget_wbs_union_projects.pc, q_budget_wbs_union_projects.l_1, q_budget_wbs_union_projects.l_2, q_budget_wbs_union_projects.l_3, q_budget_wbs_union_projects.l_4, q_budget_wbs_union_projects.l_5, q_budget_wbs_union_projects.l_6, q_budget_wbs_union_projects.up_curr, sum(iif(q_second_budget_gt.incomegt is null,"0",q_second_budget_gt.incomegt)) AS incomegt_second, sum(iif(q_second_budget_gt.expensegt is null,"0",q_second_budget_gt.expensegt)) AS expensegt_second, sum(iif(q_second_budget_gt.profitgt is null,"0",q_second_budget_gt.profitgt)) AS profitgt_second, sum(iif(q_first_budget_gt.incomegt is null,"0",q_first_budget_gt.incomegt)) AS incomegt_first, sum(iif(q_first_budget_gt.expensegt is null,"0",q_first_budget_gt.expensegt)) AS expensegt_first, sum(iif(q_first_budget_gt.profitgt is null,"0",q_first_budget_gt.profitgt)) AS profitgt_first, incomegt_second-incomegt_first AS incomediffgt, expensegt_second-expensegt_first AS expensediff_gt, profitgt_second-profitgt_first AS profitdiff_gt, sum(iif(q_second_budget_rt_grouped_projects.incomert is null,"0",q_second_budget_rt_grouped_projects.incomert)) AS incomert_second, sum(iif(q_second_budget_rt_grouped_projects.expensert is null,"0",q_second_budget_rt_grouped_projects.expensert)) AS expensert_second, sum(iif(q_second_budget_rt_grouped_projects.profitrt is null,"0",q_second_budget_rt_grouped_projects.profitrt)) AS profitrt_second, sum(iif(q_first_budget_rt_grouped_projects.incomert is null,"0",q_first_budget_rt_grouped_projects.incomert)) AS incomert_first, sum(iif(q_first_budget_rt_grouped_projects.expensert is null,"0",q_first_budget_rt_grouped_projects.expensert)) AS expensert_first, sum(iif(q_first_budget_rt_grouped_projects.profitrt is null,"0",q_first_budget_rt_grouped_projects.profitrt)) AS profitrt_first, incomert_second-incomert_first AS incomediffrt, expensert_second-expensert_first AS expensediff_rt, profitrt_second-profitrt_first AS profitdiff_rt, incomegt_second-incomert_second AS incomerem_second, expensegt_second-expensert_second AS expenserem_second, profitgt_second-profitrt_second AS profitrem_second, incomegt_first-incomert_first AS incomerem_first, expensegt_first-expensert_first AS expenserem_first, profitgt_first-profitrt_first AS profitrem_first, incomerem_second-incomerem_first AS incomerem_diff, expenserem_second-expenserem_first AS expenserem_diff, profitrem_second-profitrem_first AS profitrem_diff, q_budget_wbs_union_projects.DESC_tr_l3, q_budget_wbs_union_projects.DESC_tr_l2, q_budget_wbs_union_projects.DESC_tr_l6
FROM (((q_budget_wbs_union_projects LEFT JOIN q_second_budget_gt ON (q_budget_wbs_union_projects.up_curr = q_second_budget_gt.up_curr) AND (q_budget_wbs_union_projects.l_6 = q_second_budget_gt.l_6) AND (q_budget_wbs_union_projects.l_5 = q_second_budget_gt.l_5) AND (q_budget_wbs_union_projects.l_4 = q_second_budget_gt.l_4) AND (q_budget_wbs_union_projects.l_3 = q_second_budget_gt.l_3) AND (q_budget_wbs_union_projects.l_2 = q_second_budget_gt.l_2) AND (q_budget_wbs_union_projects.l_1 = q_second_budget_gt.l_1) AND (q_budget_wbs_union_projects.pc = q_second_budget_gt.pc)) LEFT JOIN q_first_budget_gt ON (q_budget_wbs_union_projects.up_curr = q_first_budget_gt.up_curr) AND (q_budget_wbs_union_projects.l_6 = q_first_budget_gt.l_6) AND (q_budget_wbs_union_projects.l_5 = q_first_budget_gt.l_5) AND (q_budget_wbs_union_projects.l_4 = q_first_budget_gt.l_4) AND (q_budget_wbs_union_projects.l_3 = q_first_budget_gt.l_3) AND (q_budget_wbs_union_projects.l_2 = q_first_budget_gt.l_2) AND (q_budget_wbs_union_projects.l_1 = q_first_budget_gt.l_1) AND (q_budget_wbs_union_projects.pc = q_first_budget_gt.pc)) LEFT JOIN q_second_budget_rt_grouped_projects ON (q_budget_wbs_union_projects.pc = q_second_budget_rt_grouped_projects.pc) AND (q_budget_wbs_union_projects.up_curr = q_second_budget_rt_grouped_projects.up_curr) AND (q_budget_wbs_union_projects.l_6 = q_second_budget_rt_grouped_projects.l_6) AND (q_budget_wbs_union_projects.l_5 = q_second_budget_rt_grouped_projects.l_5) AND (q_budget_wbs_union_projects.l_4 = q_second_budget_rt_grouped_projects.l_4) AND (q_budget_wbs_union_projects.l_3 = q_second_budget_rt_grouped_projects.l_3) AND (q_budget_wbs_union_projects.l_2 = q_second_budget_rt_grouped_projects.l_2) AND (q_budget_wbs_union_projects.l_1 = q_second_budget_rt_grouped_projects.l_1)) LEFT JOIN q_first_budget_rt_grouped_projects ON (q_budget_wbs_union_projects.pc = q_first_budget_rt_grouped_projects.pc) AND (q_budget_wbs_union_projects.up_curr = q_first_budget_rt_grouped_projects.up_curr) AND (q_budget_wbs_union_projects.l_6 = q_first_budget_rt_grouped_projects.l_6) AND (q_budget_wbs_union_projects.l_5 = q_first_budget_rt_grouped_projects.l_5) AND (q_budget_wbs_union_projects.l_4 = q_first_budget_rt_grouped_projects.l_4) AND (q_budget_wbs_union_projects.l_3 = q_first_budget_rt_grouped_projects.l_3) AND (q_budget_wbs_union_projects.l_2 = q_first_budget_rt_grouped_projects.l_2) AND (q_budget_wbs_union_projects.l_1 = q_first_budget_rt_grouped_projects.l_1)
GROUP BY q_budget_wbs_union_projects.pc, q_budget_wbs_union_projects.l_1, q_budget_wbs_union_projects.l_2, q_budget_wbs_union_projects.l_3, q_budget_wbs_union_projects.l_4, q_budget_wbs_union_projects.l_5, q_budget_wbs_union_projects.l_6, q_budget_wbs_union_projects.up_curr, q_budget_wbs_union_projects.DESC_tr_l3, q_budget_wbs_union_projects.DESC_tr_l2, q_budget_wbs_union_projects.DESC_tr_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_sum_projects_report_data AS
SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
incomegt_second AS second_data_gt,
incomert_second AS second_data_rt,
incomegt_first AS first_data_gt,
incomert_first AS first_data_rt,
incomerem_second AS second_data_rem,
incomerem_first AS first_data_rem,
incomegt_second - incomegt_first AS gt_rem,
incomert_second - incomert_first AS rt_rem,
incomerem_second - incomerem_first AS rem_rem,
"1 - GELİR" AS budget_type

FROM 
q_cb_sum_projects_data

WHERE (incomegt_second + incomert_second + incomegt_first + incomert_first) <> 0


union

SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
expensegt_second,
expensert_second,
expensegt_first,
expensert_first,
expenserem_second,
expenserem_first,
expensegt_second - expensegt_first,
expensert_second - expensert_first AS rt_rem,
expenserem_second - expenserem_first AS rem_rem,
"2 - GİDER" AS budget_type

FROM 
q_cb_sum_projects_data


WHERE  (expensegt_second + expensert_second + expensegt_first + expensert_first) <>0


UNION SELECT 
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
up_curr,
DESC_tr_l3,
DESC_tr_l2,
DESC_tr_l6,
profitgt_second,
profitrt_second,
profitgt_first,
profitrt_first,
profitrem_second,
profitrem_first,
profitgt_second - profitgt_first,
profitrt_second - profitrt_first AS rt_rem,
profitrem_second - profitrem_first AS rem_rem,
"3 - BRÜT KAR" AS budget_type

FROM 
q_cb_sum_projects_data

WHERE  (profitgt_second + profitrt_second + profitgt_first + profitrt_first) <>0;

CREATE OR REPLACE VIEW -- not ok
q_cb_summary_report_currmonth_data_group AS
SELECT q_cb_allprojects_report_currmonth_data.rep_month, q_cb_allprojects_report_currmonth_data.pc, q_cb_allprojects_report_currmonth_data.l_1, q_cb_allprojects_report_currmonth_data.l_2, q_cb_allprojects_report_currmonth_data.l_3, q_cb_allprojects_report_currmonth_data.l_4, q_cb_allprojects_report_currmonth_data.l_5, q_cb_allprojects_report_currmonth_data.l_6, q_cb_allprojects_report_currmonth_data.DESC_tr_l2, q_cb_allprojects_report_currmonth_data.DESC_tr_l3, q_cb_allprojects_report_currmonth_data.DESC_tr_l6, sum(q_cb_allprojects_report_currmonth_data.income) AS income, sum(q_cb_allprojects_report_currmonth_data.expense) AS expense, sum(q_cb_allprojects_report_currmonth_data.profit) AS profit, q_cb_allprojects_report_currmonth_data.currency
FROM q_cb_allprojects_report_currmonth_data
GROUP BY q_cb_allprojects_report_currmonth_data.rep_month, q_cb_allprojects_report_currmonth_data.pc, q_cb_allprojects_report_currmonth_data.l_1, q_cb_allprojects_report_currmonth_data.l_2, q_cb_allprojects_report_currmonth_data.l_3, q_cb_allprojects_report_currmonth_data.l_4, q_cb_allprojects_report_currmonth_data.l_5, q_cb_allprojects_report_currmonth_data.l_6, q_cb_allprojects_report_currmonth_data.DESC_tr_l2, q_cb_allprojects_report_currmonth_data.DESC_tr_l3, q_cb_allprojects_report_currmonth_data.DESC_tr_l6, q_cb_allprojects_report_currmonth_data.currency;

CREATE OR REPLACE VIEW -- not ok
q_cb_summary_report_UNION AS
SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency
FROM 
q_cb_allprojects_report_currmonth_data

UNION SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
currency

FROM 
q_cb_allprojects_report_endproject_data;

CREATE OR REPLACE VIEW -- ok
q_cb_unit_price AS
SELECT q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code AS p01_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month AS month, q_cb_up_coeff.g_month, q_cb_up_coeff.rs_currency AS up_curr, sum(up_cost*an_rs_quantity*up_cost_coeff_all) AS unit_price_planned_coeff, q_cb_up_coeff.key_r_pc_l6
FROM q_cb_up_coeff
GROUP BY q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month, q_cb_up_coeff.rs_currency, q_cb_up_coeff.key_r_pc_l6, q_cb_up_coeff.g_month
ORDER BY q_cb_up_coeff.rep_month, q_cb_up_coeff.up_pr_code, q_cb_up_coeff.l_1, q_cb_up_coeff.l_2, q_cb_up_coeff.l_3, q_cb_up_coeff.l_4, q_cb_up_coeff.l_5, q_cb_up_coeff.l_6, q_cb_up_coeff.g_month, q_cb_up_coeff.g_month;

CREATE OR REPLACE VIEW -- not ok
q_cb_unit_price_crosstab AS
transform sum(q_cb_unit_price.unit_price_planned_coeff) AS sumofunit_price_planned_coeff
SELECT q_cb_unit_price.rep_month, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.up_curr, q_cb_unit_price.p01_code
FROM q_cb_unit_price
GROUP BY q_cb_unit_price.rep_month, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.up_curr, q_cb_unit_price.p01_code
PIVOT q_cb_unit_price.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_unit_price_crosstab_mod AS
transform sum(q_cb_unit_price_mod.unit_price_planned_coeff) AS sumofunit_price_planned_coeff
SELECT q_cb_unit_price_mod.rep_month, q_cb_unit_price_mod.l_1, q_cb_unit_price_mod.l_2, q_cb_unit_price_mod.l_3, q_cb_unit_price_mod.l_4, q_cb_unit_price_mod.l_5, q_cb_unit_price_mod.l_6, q_cb_unit_price_mod.up_curr, q_cb_unit_price_mod.p01_code
FROM q_cb_unit_price_mod
GROUP BY q_cb_unit_price_mod.rep_month, q_cb_unit_price_mod.l_1, q_cb_unit_price_mod.l_2, q_cb_unit_price_mod.l_3, q_cb_unit_price_mod.l_4, q_cb_unit_price_mod.l_5, q_cb_unit_price_mod.l_6, q_cb_unit_price_mod.up_curr, q_cb_unit_price_mod.p01_code
PIVOT q_cb_unit_price_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_unit_price_diff AS
SELECT q_cb_unit_price_mod.rep_month, q_cb_unit_price_mod.p01_code, q_cb_unit_price_mod.l_1, q_cb_unit_price_mod.l_2, q_cb_unit_price_mod.l_3, q_cb_unit_price_mod.l_4, q_cb_unit_price_mod.l_5, q_cb_unit_price_mod.l_6, q_cb_unit_price_mod.up_curr, q_cb_unit_price_mod.month, q_cb_unit_price.unit_price_planned_coeff AS up_orj, q_cb_unit_price_mod.unit_price_planned_coeff AS up_mod, (up_orj)-(up_mod) AS diff
FROM q_cb_unit_price_mod LEFT JOIN q_cb_unit_price ON (q_cb_unit_price_mod.up_curr = q_cb_unit_price.up_curr) AND (q_cb_unit_price_mod.month = q_cb_unit_price.month) AND (q_cb_unit_price_mod.l_6 = q_cb_unit_price.l_6) AND (q_cb_unit_price_mod.l_5 = q_cb_unit_price.l_5) AND (q_cb_unit_price_mod.l_4 = q_cb_unit_price.l_4) AND (q_cb_unit_price_mod.l_3 = q_cb_unit_price.l_3) AND (q_cb_unit_price_mod.l_2 = q_cb_unit_price.l_2) AND (q_cb_unit_price_mod.l_1 = q_cb_unit_price.l_1) AND (q_cb_unit_price_mod.p01_code = q_cb_unit_price.p01_code) AND (q_cb_unit_price_mod.rep_month = q_cb_unit_price.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_cb_unit_price_mod AS
SELECT q_cb_up_coeff_mod.rep_month, q_cb_up_coeff_mod.up_pr_code AS p01_code, q_cb_up_coeff_mod.l_1, q_cb_up_coeff_mod.l_2, q_cb_up_coeff_mod.l_3, q_cb_up_coeff_mod.l_4, q_cb_up_coeff_mod.l_5, q_cb_up_coeff_mod.l_6, q_cb_up_coeff_mod.month, q_cb_up_coeff_mod.g_month, q_cb_up_coeff_mod.rs_currency AS up_curr, sum(up_cost*an_rs_quantity*up_cost_coeff_all) AS unit_price_planned_coeff, q_cb_up_coeff_mod.key_r_pc_l6
FROM q_cb_up_coeff_mod
GROUP BY q_cb_up_coeff_mod.rep_month, q_cb_up_coeff_mod.up_pr_code, q_cb_up_coeff_mod.l_1, q_cb_up_coeff_mod.l_2, q_cb_up_coeff_mod.l_3, q_cb_up_coeff_mod.l_4, q_cb_up_coeff_mod.l_5, q_cb_up_coeff_mod.l_6, q_cb_up_coeff_mod.month, q_cb_up_coeff_mod.g_month, q_cb_up_coeff_mod.rs_currency, q_cb_up_coeff_mod.key_r_pc_l6
ORDER BY q_cb_up_coeff_mod.rep_month, q_cb_up_coeff_mod.up_pr_code, q_cb_up_coeff_mod.l_1, q_cb_up_coeff_mod.l_2, q_cb_up_coeff_mod.l_3, q_cb_up_coeff_mod.l_4, q_cb_up_coeff_mod.l_5, q_cb_up_coeff_mod.l_6, q_cb_up_coeff_mod.month, q_cb_up_coeff_mod.g_month;

CREATE OR REPLACE VIEW -- ok
q_cb_up_coeff AS
SELECT q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.pc AS up_pr_code, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.r_1_code AS up_rs_l1, q_cb_res_up_market_coeff.r_2_code AS up_rs_l2, q_cb_res_up_market_coeff.r_3_code AS up_rs_l3, q_cb_res_up_market_coeff.r_4_code AS up_rs_l4, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.up_cost_coeff, q_cb_curr_escalation_rates.k_usd, q_cb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6) AS up_cost_coeff_all, q_cb_res_up_market_coeff.up_cost, q_cb_res_up_market_coeff.currency AS rs_currency, q_cb_res_up_market_coeff.key_full, q_cb_res_up_market_coeff.an_rs_quantity, q_cb_res_up_market_coeff.key_r_pc_l6
FROM q_cb_res_up_market_coeff LEFT JOIN q_cb_curr_escalation_rates ON q_cb_res_up_market_coeff.key_full_comb = q_cb_curr_escalation_rates.key_full_comb
GROUP BY q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.r_1_code, q_cb_res_up_market_coeff.r_2_code, q_cb_res_up_market_coeff.r_3_code, q_cb_res_up_market_coeff.r_4_code, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.up_cost_coeff, q_cb_curr_escalation_rates.k_usd, q_cb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6), q_cb_res_up_market_coeff.up_cost, q_cb_res_up_market_coeff.currency, q_cb_res_up_market_coeff.key_full, q_cb_res_up_market_coeff.an_rs_quantity, q_cb_res_up_market_coeff.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_coeff_mod AS
SELECT q_cb_res_up_market_coeff_mod.rep_month, q_cb_res_up_market_coeff_mod.pc AS up_pr_code, q_cb_res_up_market_coeff_mod.l_1, q_cb_res_up_market_coeff_mod.l_2, q_cb_res_up_market_coeff_mod.l_3, q_cb_res_up_market_coeff_mod.l_4, q_cb_res_up_market_coeff_mod.l_5, q_cb_res_up_market_coeff_mod.l_6, q_cb_res_up_market_coeff_mod.r_1_code AS up_rs_l1, q_cb_res_up_market_coeff_mod.r_2_code AS up_rs_l2, q_cb_res_up_market_coeff_mod.r_3_code AS up_rs_l3, q_cb_res_up_market_coeff_mod.r_4_code AS up_rs_l4, q_cb_res_up_market_coeff_mod.g_month, q_cb_res_up_market_coeff_mod.up_cost_coeff, q_cb_curr_escalation_rates_mod.k_usd, q_cb_curr_escalation_rates_mod.k_eur, round(up_cost_coeff*k_usd*k_eur,6) AS up_cost_coeff_all, q_cb_res_up_market_coeff_mod.up_cost, q_cb_res_up_market_coeff_mod.currency AS rs_currency, q_cb_res_up_market_coeff_mod.key_full, q_cb_res_up_market_coeff_mod.an_rs_quantity, q_cb_res_up_market_coeff_mod.key_r_pc_l6, q_cb_res_up_market_coeff_mod.g_month AS month
FROM q_cb_res_up_market_coeff_mod LEFT JOIN q_cb_curr_escalation_rates_mod ON q_cb_res_up_market_coeff_mod.key_full_comb = q_cb_curr_escalation_rates_mod.key_full_comb
GROUP BY q_cb_res_up_market_coeff_mod.rep_month, q_cb_res_up_market_coeff_mod.pc, q_cb_res_up_market_coeff_mod.l_1, q_cb_res_up_market_coeff_mod.l_2, q_cb_res_up_market_coeff_mod.l_3, q_cb_res_up_market_coeff_mod.l_4, q_cb_res_up_market_coeff_mod.l_5, q_cb_res_up_market_coeff_mod.l_6, q_cb_res_up_market_coeff_mod.r_1_code, q_cb_res_up_market_coeff_mod.r_2_code, q_cb_res_up_market_coeff_mod.r_3_code, q_cb_res_up_market_coeff_mod.r_4_code, q_cb_res_up_market_coeff_mod.g_month, q_cb_res_up_market_coeff_mod.up_cost_coeff, q_cb_curr_escalation_rates_mod.k_usd, q_cb_curr_escalation_rates_mod.k_eur, round(up_cost_coeff*k_usd*k_eur,6), q_cb_res_up_market_coeff_mod.up_cost, q_cb_res_up_market_coeff_mod.currency, q_cb_res_up_market_coeff_mod.key_full, q_cb_res_up_market_coeff_mod.an_rs_quantity, q_cb_res_up_market_coeff_mod.key_r_pc_l6, q_cb_res_up_market_coeff_mod.g_month;

CREATE OR REPLACE VIEW -- ok
q_cb_up_pre_coeff_activem_indexes AS
SELECT q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon, q_cb_analysis_activem_with_prices.rs_l1, q_cb_analysis_activem_with_prices.rs_l2, q_cb_analysis_activem_with_prices.rs_l3, q_cb_analysis_activem_with_prices.rs_l4, t_cb_indexes.bb_ufe, t_cb_indexes.bb_tufe, t_cb_indexes.bb_inf_usd, t_cb_indexes.bb_inf_eur, t_cb_indexes.bb_metal, t_cb_indexes.bb_petrol, t_cb_indexes.bb_cement, t_cb_indexes.bb_electricity, q_cb_analysis_activem_with_prices.currency AS rs_currency, q_cb_analysis_activem_with_prices.an_rs_quantity, q_cb_analysis_activem_with_prices.up_cost, q_cb_analysis_activem_with_prices.key_r4_simple, q_cb_analysis_activem_with_prices.key_r4, q_cb_analysis_activem_with_prices.key_r_pc_l6, q_cb_analysis_activem_with_prices.key_full
FROM q_cb_analysis_activem_with_prices LEFT JOIN t_cb_indexes ON (q_cb_analysis_activem_with_prices.exp_cb_mon = t_cb_indexes.g_month) AND (q_cb_analysis_activem_with_prices.rep_month = t_cb_indexes.rep_month);

CREATE OR REPLACE VIEW -- ok
q_cb_up_pre_coeff_activem_indexes_mod AS
SELECT q_cb_analysis_activem_with_prices_mod.rep_month, q_cb_analysis_activem_with_prices_mod.key_r4, q_cb_analysis_activem_with_prices_mod.key_r_pc_l6, q_cb_analysis_activem_with_prices_mod.key_full, q_cb_analysis_activem_with_prices_mod.key_r4_simple, q_cb_analysis_activem_with_prices_mod.pc, q_cb_analysis_activem_with_prices_mod.exp_cb_mon, q_cb_analysis_activem_with_prices_mod.l_1, q_cb_analysis_activem_with_prices_mod.l_2, q_cb_analysis_activem_with_prices_mod.l_3, q_cb_analysis_activem_with_prices_mod.l_4, q_cb_analysis_activem_with_prices_mod.l_5, q_cb_analysis_activem_with_prices_mod.l_6, q_cb_analysis_activem_with_prices_mod.rs_l1, q_cb_analysis_activem_with_prices_mod.rs_l2, q_cb_analysis_activem_with_prices_mod.rs_l3, q_cb_analysis_activem_with_prices_mod.rs_l4, t_ac_indexes_mod.bb_ufe, t_ac_indexes_mod.bb_tufe, t_ac_indexes_mod.bb_inf_usd, t_ac_indexes_mod.bb_inf_eur, t_ac_indexes_mod.bb_metal, t_ac_indexes_mod.bb_petrol, t_ac_indexes_mod.bb_cement, t_ac_indexes_mod.bb_electricity, q_cb_analysis_activem_with_prices_mod.rs_currency, q_cb_analysis_activem_with_prices_mod.an_rs_quantity, q_cb_analysis_activem_with_prices_mod.up_cost
FROM q_cb_analysis_activem_with_prices_mod LEFT JOIN t_ac_indexes_mod ON (q_cb_analysis_activem_with_prices_mod.exp_cb_mon = t_ac_indexes_mod.g_month) AND (q_cb_analysis_activem_with_prices_mod.rep_month = t_ac_indexes_mod.rep_month)
ORDER BY q_cb_analysis_activem_with_prices_mod.rep_month, q_cb_analysis_activem_with_prices_mod.pc, q_cb_analysis_activem_with_prices_mod.exp_cb_mon, q_cb_analysis_activem_with_prices_mod.l_1, q_cb_analysis_activem_with_prices_mod.l_2, q_cb_analysis_activem_with_prices_mod.l_3, q_cb_analysis_activem_with_prices_mod.l_4, q_cb_analysis_activem_with_prices_mod.l_5, q_cb_analysis_activem_with_prices_mod.l_6;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_with_curr_coeff_crosstab AS
transform sum(q_cb_work_up_with_curr_coeff.up) AS up
SELECT q_cb_work_up_with_curr_coeff.rep_month, q_cb_work_up_with_curr_coeff.pc, q_cb_work_up_with_curr_coeff.l_1, q_cb_work_up_with_curr_coeff.l_2, q_cb_work_up_with_curr_coeff.l_3, q_cb_work_up_with_curr_coeff.l_4, q_cb_work_up_with_curr_coeff.l_5, q_cb_work_up_with_curr_coeff.l_6, q_cb_work_up_with_curr_coeff.rs_currency
FROM q_cb_work_up_with_curr_coeff
GROUP BY q_cb_work_up_with_curr_coeff.rep_month, q_cb_work_up_with_curr_coeff.pc, q_cb_work_up_with_curr_coeff.l_1, q_cb_work_up_with_curr_coeff.l_2, q_cb_work_up_with_curr_coeff.l_3, q_cb_work_up_with_curr_coeff.l_4, q_cb_work_up_with_curr_coeff.l_5, q_cb_work_up_with_curr_coeff.l_6, q_cb_work_up_with_curr_coeff.rs_currency
ORDER BY q_cb_work_up_with_curr_coeff.rep_month, q_cb_work_up_with_curr_coeff.pc, q_cb_work_up_with_curr_coeff.l_1, q_cb_work_up_with_curr_coeff.l_2, q_cb_work_up_with_curr_coeff.l_3, q_cb_work_up_with_curr_coeff.l_4, q_cb_work_up_with_curr_coeff.l_5, q_cb_work_up_with_curr_coeff.l_6, q_cb_work_up_with_curr_coeff.month
PIVOT q_cb_work_up_with_curr_coeff.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_with_curr_coeff_crosstab_mod AS
transform sum(q_cb_work_up_with_curr_coeff_mod.up) AS sumofup
SELECT q_cb_work_up_with_curr_coeff_mod.rep_month, q_cb_work_up_with_curr_coeff_mod.pc, q_cb_work_up_with_curr_coeff_mod.l_1, q_cb_work_up_with_curr_coeff_mod.l_2, q_cb_work_up_with_curr_coeff_mod.l_3, q_cb_work_up_with_curr_coeff_mod.l_4, q_cb_work_up_with_curr_coeff_mod.l_5, q_cb_work_up_with_curr_coeff_mod.l_6, q_cb_work_up_with_curr_coeff_mod.rs_currency
FROM q_cb_work_up_with_curr_coeff_mod
GROUP BY q_cb_work_up_with_curr_coeff_mod.rep_month, q_cb_work_up_with_curr_coeff_mod.pc, q_cb_work_up_with_curr_coeff_mod.l_1, q_cb_work_up_with_curr_coeff_mod.l_2, q_cb_work_up_with_curr_coeff_mod.l_3, q_cb_work_up_with_curr_coeff_mod.l_4, q_cb_work_up_with_curr_coeff_mod.l_5, q_cb_work_up_with_curr_coeff_mod.l_6, q_cb_work_up_with_curr_coeff_mod.rs_currency
ORDER BY q_cb_work_up_with_curr_coeff_mod.rep_month, q_cb_work_up_with_curr_coeff_mod.pc, q_cb_work_up_with_curr_coeff_mod.l_1, q_cb_work_up_with_curr_coeff_mod.l_2, q_cb_work_up_with_curr_coeff_mod.l_3, q_cb_work_up_with_curr_coeff_mod.l_4, q_cb_work_up_with_curr_coeff_mod.l_5, q_cb_work_up_with_curr_coeff_mod.l_6, q_cb_work_up_with_curr_coeff_mod.month
PIVOT q_cb_work_up_with_curr_coeff_mod.month;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_with_market_coeff_crosstab AS
transform sum(q_cb_work_up_with_market_coeff.up_with_coeff) AS sumofup_with_coeff
SELECT q_cb_work_up_with_market_coeff.rep_month, q_cb_work_up_with_market_coeff.pc, q_cb_work_up_with_market_coeff.l_1, q_cb_work_up_with_market_coeff.l_2, q_cb_work_up_with_market_coeff.l_3, q_cb_work_up_with_market_coeff.l_4, q_cb_work_up_with_market_coeff.l_5, q_cb_work_up_with_market_coeff.l_6, q_cb_work_up_with_market_coeff.currency
FROM q_cb_work_up_with_market_coeff
GROUP BY q_cb_work_up_with_market_coeff.rep_month, q_cb_work_up_with_market_coeff.pc, q_cb_work_up_with_market_coeff.l_1, q_cb_work_up_with_market_coeff.l_2, q_cb_work_up_with_market_coeff.l_3, q_cb_work_up_with_market_coeff.l_4, q_cb_work_up_with_market_coeff.l_5, q_cb_work_up_with_market_coeff.l_6, q_cb_work_up_with_market_coeff.currency
PIVOT q_cb_work_up_with_market_coeff.g_month;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_with_market_coeff_crosstab_mod AS
transform sum(q_cb_work_up_with_market_coeff_mod.up_with_coeff) AS sumofup_with_coeff
SELECT q_cb_work_up_with_market_coeff_mod.rep_month, q_cb_work_up_with_market_coeff_mod.pc, q_cb_work_up_with_market_coeff_mod.l_1, q_cb_work_up_with_market_coeff_mod.l_2, q_cb_work_up_with_market_coeff_mod.l_3, q_cb_work_up_with_market_coeff_mod.l_4, q_cb_work_up_with_market_coeff_mod.l_5, q_cb_work_up_with_market_coeff_mod.l_6, q_cb_work_up_with_market_coeff_mod.currency
FROM q_cb_work_up_with_market_coeff_mod
GROUP BY q_cb_work_up_with_market_coeff_mod.rep_month, q_cb_work_up_with_market_coeff_mod.pc, q_cb_work_up_with_market_coeff_mod.l_1, q_cb_work_up_with_market_coeff_mod.l_2, q_cb_work_up_with_market_coeff_mod.l_3, q_cb_work_up_with_market_coeff_mod.l_4, q_cb_work_up_with_market_coeff_mod.l_5, q_cb_work_up_with_market_coeff_mod.l_6, q_cb_work_up_with_market_coeff_mod.currency
PIVOT q_cb_work_up_with_market_coeff_mod.g_month;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_without_coeff_crosstab AS
transform sum(q_cb_work_up_without_coeff.unit_price_planned) AS sumofunit_price_planned
SELECT q_cb_work_up_without_coeff.rep_month, q_cb_work_up_without_coeff.pc, q_cb_work_up_without_coeff.l_1, q_cb_work_up_without_coeff.l_2, q_cb_work_up_without_coeff.l_3, q_cb_work_up_without_coeff.l_4, q_cb_work_up_without_coeff.l_5, q_cb_work_up_without_coeff.l_6, q_cb_work_up_without_coeff.rs_currency
FROM q_cb_work_up_without_coeff
GROUP BY q_cb_work_up_without_coeff.rep_month, q_cb_work_up_without_coeff.pc, q_cb_work_up_without_coeff.l_1, q_cb_work_up_without_coeff.l_2, q_cb_work_up_without_coeff.l_3, q_cb_work_up_without_coeff.l_4, q_cb_work_up_without_coeff.l_5, q_cb_work_up_without_coeff.l_6, q_cb_work_up_without_coeff.rs_currency
PIVOT q_cb_work_up_without_coeff.exp_cb_mon;

CREATE OR REPLACE VIEW -- not ok
q_cb_up_without_coeff_crosstab_mod AS
transform sum(q_cb_work_up_without_coeff_mod.unit_price_planned) AS sumofunit_price_planned
SELECT q_cb_work_up_without_coeff_mod.rep_month, q_cb_work_up_without_coeff_mod.pc, q_cb_work_up_without_coeff_mod.l_1, q_cb_work_up_without_coeff_mod.l_2, q_cb_work_up_without_coeff_mod.l_3, q_cb_work_up_without_coeff_mod.l_4, q_cb_work_up_without_coeff_mod.l_5, q_cb_work_up_without_coeff_mod.l_6, q_cb_work_up_without_coeff_mod.rs_currency
FROM q_cb_work_up_without_coeff_mod
GROUP BY q_cb_work_up_without_coeff_mod.rep_month, q_cb_work_up_without_coeff_mod.pc, q_cb_work_up_without_coeff_mod.l_1, q_cb_work_up_without_coeff_mod.l_2, q_cb_work_up_without_coeff_mod.l_3, q_cb_work_up_without_coeff_mod.l_4, q_cb_work_up_without_coeff_mod.l_5, q_cb_work_up_without_coeff_mod.l_6, q_cb_work_up_without_coeff_mod.rs_currency
PIVOT q_cb_work_up_without_coeff_mod.exp_cb_mon;

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_with_curr_coeff AS
SELECT q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon AS month, sum(an_rs_quantity*up_cost*k_usd*k_eur) AS up, q_cb_curr_escalation_rates.rs_currency
FROM q_cb_analysis_activem_with_prices LEFT JOIN q_cb_curr_escalation_rates ON (q_cb_analysis_activem_with_prices.rep_month = q_cb_curr_escalation_rates.rep_month) AND (q_cb_analysis_activem_with_prices.pc = q_cb_curr_escalation_rates.pc) AND (q_cb_analysis_activem_with_prices.l_1 = q_cb_curr_escalation_rates.l_1) AND (q_cb_analysis_activem_with_prices.l_2 = q_cb_curr_escalation_rates.l_2) AND (q_cb_analysis_activem_with_prices.l_3 = q_cb_curr_escalation_rates.l_3) AND (q_cb_analysis_activem_with_prices.l_4 = q_cb_curr_escalation_rates.l_4) AND (q_cb_analysis_activem_with_prices.l_5 = q_cb_curr_escalation_rates.l_5) AND (q_cb_analysis_activem_with_prices.l_6 = q_cb_curr_escalation_rates.l_6) AND (q_cb_analysis_activem_with_prices.rs_l1 = q_cb_curr_escalation_rates.rs_l1) AND (q_cb_analysis_activem_with_prices.rs_l2 = q_cb_curr_escalation_rates.rs_l2) AND (q_cb_analysis_activem_with_prices.rs_l3 = q_cb_curr_escalation_rates.rs_l3) AND (q_cb_analysis_activem_with_prices.rs_l4 = q_cb_curr_escalation_rates.rs_l4) AND (q_cb_analysis_activem_with_prices.currency = q_cb_curr_escalation_rates.rs_currency) AND (q_cb_analysis_activem_with_prices.exp_cb_mon = q_cb_curr_escalation_rates.month)
GROUP BY q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon, q_cb_curr_escalation_rates.rs_currency
ORDER BY q_cb_analysis_activem_with_prices.rep_month, q_cb_analysis_activem_with_prices.pc, q_cb_analysis_activem_with_prices.l_1, q_cb_analysis_activem_with_prices.l_2, q_cb_analysis_activem_with_prices.l_3, q_cb_analysis_activem_with_prices.l_4, q_cb_analysis_activem_with_prices.l_5, q_cb_analysis_activem_with_prices.l_6, q_cb_analysis_activem_with_prices.exp_cb_mon, sum(an_rs_quantity*up_cost*k_usd*k_eur);

CREATE OR REPLACE VIEW -- not ok
q_cb_work_up_with_curr_coeff_diff AS
SELECT q_cb_work_up_with_curr_coeff_mod.rep_month, q_cb_work_up_with_curr_coeff_mod.pc, q_cb_work_up_with_curr_coeff_mod.l_1, q_cb_work_up_with_curr_coeff_mod.l_2, q_cb_work_up_with_curr_coeff_mod.l_3, q_cb_work_up_with_curr_coeff_mod.l_4, q_cb_work_up_with_curr_coeff_mod.l_5, q_cb_work_up_with_curr_coeff_mod.l_6, q_cb_work_up_with_curr_coeff_mod.rs_currency, q_cb_work_up_with_curr_coeff_mod.month, q_cb_work_up_with_curr_coeff.up AS up_orj, q_cb_work_up_with_curr_coeff_mod.up AS up_mod, (up_orj)-(up_mod) AS diff
FROM q_cb_work_up_with_curr_coeff_mod LEFT JOIN q_cb_work_up_with_curr_coeff ON (q_cb_work_up_with_curr_coeff_mod.rs_currency = q_cb_work_up_with_curr_coeff.rs_currency) AND (q_cb_work_up_with_curr_coeff_mod.month = q_cb_work_up_with_curr_coeff.month) AND (q_cb_work_up_with_curr_coeff_mod.l_6 = q_cb_work_up_with_curr_coeff.l_6) AND (q_cb_work_up_with_curr_coeff_mod.l_5 = q_cb_work_up_with_curr_coeff.l_5) AND (q_cb_work_up_with_curr_coeff_mod.l_4 = q_cb_work_up_with_curr_coeff.l_4) AND (q_cb_work_up_with_curr_coeff_mod.l_3 = q_cb_work_up_with_curr_coeff.l_3) AND (q_cb_work_up_with_curr_coeff_mod.l_2 = q_cb_work_up_with_curr_coeff.l_2) AND (q_cb_work_up_with_curr_coeff_mod.l_1 = q_cb_work_up_with_curr_coeff.l_1) AND (q_cb_work_up_with_curr_coeff_mod.pc = q_cb_work_up_with_curr_coeff.pc) AND (q_cb_work_up_with_curr_coeff_mod.rep_month = q_cb_work_up_with_curr_coeff.rep_month);

CREATE OR REPLACE VIEW -- not ok
q_cb_work_up_with_curr_coeff_mod AS
SELECT q_cb_analysis_activem_with_prices_mod.rep_month, q_cb_analysis_activem_with_prices_mod.pc, q_cb_analysis_activem_with_prices_mod.l_1, q_cb_analysis_activem_with_prices_mod.l_2, q_cb_analysis_activem_with_prices_mod.l_3, q_cb_analysis_activem_with_prices_mod.l_4, q_cb_analysis_activem_with_prices_mod.l_5, q_cb_analysis_activem_with_prices_mod.l_6, q_cb_analysis_activem_with_prices_mod.exp_cb_mon AS month, sum(an_rs_quantity*up_cost*k_usd*k_eur) AS up, q_cb_curr_escalation_rates_mod.rs_currency
FROM q_cb_analysis_activem_with_prices_mod LEFT JOIN q_cb_curr_escalation_rates_mod ON (q_cb_analysis_activem_with_prices_mod.rep_month = q_cb_curr_escalation_rates_mod.rep_month) AND (q_cb_analysis_activem_with_prices_mod.pc = q_cb_curr_escalation_rates_mod.pc) AND (q_cb_analysis_activem_with_prices_mod.l_1 = q_cb_curr_escalation_rates_mod.l_1) AND (q_cb_analysis_activem_with_prices_mod.l_2 = q_cb_curr_escalation_rates_mod.l_2) AND (q_cb_analysis_activem_with_prices_mod.l_3 = q_cb_curr_escalation_rates_mod.l_3) AND (q_cb_analysis_activem_with_prices_mod.l_4 = q_cb_curr_escalation_rates_mod.l_4) AND (q_cb_analysis_activem_with_prices_mod.l_5 = q_cb_curr_escalation_rates_mod.l_5) AND (q_cb_analysis_activem_with_prices_mod.l_6 = q_cb_curr_escalation_rates_mod.l_6) AND (q_cb_analysis_activem_with_prices_mod.rs_l1 = q_cb_curr_escalation_rates_mod.rs_l1) AND (q_cb_analysis_activem_with_prices_mod.rs_l2 = q_cb_curr_escalation_rates_mod.rs_l2) AND (q_cb_analysis_activem_with_prices_mod.rs_l3 = q_cb_curr_escalation_rates_mod.rs_l3) AND (q_cb_analysis_activem_with_prices_mod.rs_l4 = q_cb_curr_escalation_rates_mod.rs_l4) AND (q_cb_analysis_activem_with_prices_mod.rs_currency = q_cb_curr_escalation_rates_mod.rs_currency) AND (q_cb_analysis_activem_with_prices_mod.exp_cb_mon = q_cb_curr_escalation_rates_mod.month)
GROUP BY q_cb_analysis_activem_with_prices_mod.rep_month, q_cb_analysis_activem_with_prices_mod.pc, q_cb_analysis_activem_with_prices_mod.l_1, q_cb_analysis_activem_with_prices_mod.l_2, q_cb_analysis_activem_with_prices_mod.l_3, q_cb_analysis_activem_with_prices_mod.l_4, q_cb_analysis_activem_with_prices_mod.l_5, q_cb_analysis_activem_with_prices_mod.l_6, q_cb_analysis_activem_with_prices_mod.exp_cb_mon, q_cb_curr_escalation_rates_mod.rs_currency
ORDER BY q_cb_analysis_activem_with_prices_mod.rep_month, q_cb_analysis_activem_with_prices_mod.pc, q_cb_analysis_activem_with_prices_mod.l_1, q_cb_analysis_activem_with_prices_mod.l_2, q_cb_analysis_activem_with_prices_mod.l_3, q_cb_analysis_activem_with_prices_mod.l_4, q_cb_analysis_activem_with_prices_mod.l_5, q_cb_analysis_activem_with_prices_mod.l_6, q_cb_analysis_activem_with_prices_mod.exp_cb_mon, sum(an_rs_quantity*up_cost*k_usd*k_eur);

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_with_market_coeff AS
SELECT q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.g_month, sum(an_rs_quantity*up_cost*up_cost_coeff) AS up_with_coeff, q_cb_res_up_market_coeff.currency
FROM q_cb_res_up_market_coeff
GROUP BY q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.currency;

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_with_market_coeff_diff AS
SELECT q_cb_work_up_with_market_coeff_mod.rep_month, q_cb_work_up_with_market_coeff_mod.pc, q_cb_work_up_with_market_coeff_mod.l_1, q_cb_work_up_with_market_coeff_mod.l_2, q_cb_work_up_with_market_coeff_mod.l_3, q_cb_work_up_with_market_coeff_mod.l_4, q_cb_work_up_with_market_coeff_mod.l_5, q_cb_work_up_with_market_coeff_mod.l_6, q_cb_work_up_with_market_coeff_mod.currency, q_cb_work_up_with_market_coeff_mod.g_month, q_cb_work_up_with_market_coeff.up_with_coeff AS up_orj, q_cb_work_up_with_market_coeff.up_with_coeff AS up_mod, (up_orj)-(up_mod) AS diff
FROM q_cb_work_up_with_market_coeff_mod LEFT JOIN q_cb_work_up_with_market_coeff ON (q_cb_work_up_with_market_coeff_mod.g_month = q_cb_work_up_with_market_coeff.g_month) AND (q_cb_work_up_with_market_coeff_mod.currency = q_cb_work_up_with_market_coeff.currency) AND (q_cb_work_up_with_market_coeff_mod.l_6 = q_cb_work_up_with_market_coeff.l_6) AND (q_cb_work_up_with_market_coeff_mod.l_5 = q_cb_work_up_with_market_coeff.l_5) AND (q_cb_work_up_with_market_coeff_mod.l_4 = q_cb_work_up_with_market_coeff.l_4) AND (q_cb_work_up_with_market_coeff_mod.l_3 = q_cb_work_up_with_market_coeff.l_3) AND (q_cb_work_up_with_market_coeff_mod.l_2 = q_cb_work_up_with_market_coeff.l_2) AND (q_cb_work_up_with_market_coeff_mod.l_1 = q_cb_work_up_with_market_coeff.l_1) AND (q_cb_work_up_with_market_coeff_mod.pc = q_cb_work_up_with_market_coeff.pc) AND (q_cb_work_up_with_market_coeff_mod.rep_month = q_cb_work_up_with_market_coeff.rep_month);

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_with_market_coeff_mod AS
SELECT q_cb_res_up_market_coeff_mod.pc, q_cb_res_up_market_coeff_mod.l_1, q_cb_res_up_market_coeff_mod.l_2, q_cb_res_up_market_coeff_mod.l_3, q_cb_res_up_market_coeff_mod.l_4, q_cb_res_up_market_coeff_mod.l_5, q_cb_res_up_market_coeff_mod.l_6, q_cb_res_up_market_coeff_mod.rep_month, q_cb_res_up_market_coeff_mod.g_month, sum(an_rs_quantity*up_cost*up_cost_coeff) AS up_with_coeff, q_cb_res_up_market_coeff_mod.currency
FROM q_cb_res_up_market_coeff_mod
GROUP BY q_cb_res_up_market_coeff_mod.pc, q_cb_res_up_market_coeff_mod.l_1, q_cb_res_up_market_coeff_mod.l_2, q_cb_res_up_market_coeff_mod.l_3, q_cb_res_up_market_coeff_mod.l_4, q_cb_res_up_market_coeff_mod.l_5, q_cb_res_up_market_coeff_mod.l_6, q_cb_res_up_market_coeff_mod.rep_month, q_cb_res_up_market_coeff_mod.g_month, q_cb_res_up_market_coeff_mod.currency;

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_without_coeff AS
SELECT sum((an_rs_quantity*up_cost)) AS unit_price_planned, q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes.rs_currency
FROM q_cb_up_pre_coeff_activem_indexes
GROUP BY q_cb_up_pre_coeff_activem_indexes.rep_month, q_cb_up_pre_coeff_activem_indexes.pc, q_cb_up_pre_coeff_activem_indexes.l_1, q_cb_up_pre_coeff_activem_indexes.l_2, q_cb_up_pre_coeff_activem_indexes.l_3, q_cb_up_pre_coeff_activem_indexes.l_4, q_cb_up_pre_coeff_activem_indexes.l_5, q_cb_up_pre_coeff_activem_indexes.l_6, q_cb_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes.rs_currency;

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_without_coeff_diff AS
SELECT q_cb_work_up_without_coeff_mod.rep_month, q_cb_work_up_without_coeff_mod.pc, q_cb_work_up_without_coeff_mod.l_1, q_cb_work_up_without_coeff_mod.l_2, q_cb_work_up_without_coeff_mod.l_3, q_cb_work_up_without_coeff_mod.l_4, q_cb_work_up_without_coeff_mod.l_5, q_cb_work_up_without_coeff_mod.l_6, q_cb_work_up_without_coeff_mod.rs_currency, q_cb_work_up_without_coeff_mod.exp_cb_mon, q_cb_work_up_without_coeff.unit_price_planned AS up_orj, q_cb_work_up_without_coeff.unit_price_planned AS up_mod, (up_orj)-(up_mod) AS diff
FROM q_cb_work_up_without_coeff_mod LEFT JOIN q_cb_work_up_without_coeff ON (q_cb_work_up_without_coeff_mod.exp_cb_mon = q_cb_work_up_without_coeff.exp_cb_mon) AND (q_cb_work_up_without_coeff_mod.rs_currency = q_cb_work_up_without_coeff.rs_currency) AND (q_cb_work_up_without_coeff_mod.l_6 = q_cb_work_up_without_coeff.l_6) AND (q_cb_work_up_without_coeff_mod.l_5 = q_cb_work_up_without_coeff.l_5) AND (q_cb_work_up_without_coeff_mod.l_4 = q_cb_work_up_without_coeff.l_4) AND (q_cb_work_up_without_coeff_mod.l_3 = q_cb_work_up_without_coeff.l_3) AND (q_cb_work_up_without_coeff_mod.l_2 = q_cb_work_up_without_coeff.l_2) AND (q_cb_work_up_without_coeff_mod.l_1 = q_cb_work_up_without_coeff.l_1) AND (q_cb_work_up_without_coeff_mod.pc = q_cb_work_up_without_coeff.pc) AND (q_cb_work_up_without_coeff_mod.rep_month = q_cb_work_up_without_coeff.rep_month);

CREATE OR REPLACE VIEW -- ok
q_cb_work_up_without_coeff_mod AS
SELECT sum((an_rs_quantity*up_cost)) AS unit_price_planned, q_cb_up_pre_coeff_activem_indexes_mod.rep_month, q_cb_up_pre_coeff_activem_indexes_mod.pc, q_cb_up_pre_coeff_activem_indexes_mod.l_1, q_cb_up_pre_coeff_activem_indexes_mod.l_2, q_cb_up_pre_coeff_activem_indexes_mod.l_3, q_cb_up_pre_coeff_activem_indexes_mod.l_4, q_cb_up_pre_coeff_activem_indexes_mod.l_5, q_cb_up_pre_coeff_activem_indexes_mod.l_6, q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes_mod.rs_currency
FROM q_cb_up_pre_coeff_activem_indexes_mod
GROUP BY q_cb_up_pre_coeff_activem_indexes_mod.rep_month, q_cb_up_pre_coeff_activem_indexes_mod.pc, q_cb_up_pre_coeff_activem_indexes_mod.l_1, q_cb_up_pre_coeff_activem_indexes_mod.l_2, q_cb_up_pre_coeff_activem_indexes_mod.l_3, q_cb_up_pre_coeff_activem_indexes_mod.l_4, q_cb_up_pre_coeff_activem_indexes_mod.l_5, q_cb_up_pre_coeff_activem_indexes_mod.l_6, q_cb_up_pre_coeff_activem_indexes_mod.exp_cb_mon, q_cb_up_pre_coeff_activem_indexes_mod.rs_currency;

CREATE OR REPLACE VIEW -- not ok
q_date_selected AS
SELECT *
FROM (SELECT * FROM t_rnd_budget_active_dates ORDER BY t_rnd_budget_active_dates.date_active DESC LIMIT 1 OFFSET 0) AS t
ORDER BY t.date_active
LIMIT 1 OFFSET 0;

CREATE OR REPLACE VIEW -- not ok
q_exp_diff_curr AS
SELECT q_cb_exp.rep_month, q_cb_exp.p01_code, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.up_curr, sum(q_cb_exp.total_expense-q_bb_exp.total_expense) AS diff
FROM q_cb_exp LEFT JOIN q_bb_exp ON (q_cb_exp.up_curr = q_bb_exp.up_curr) AND (q_cb_exp.month = q_bb_exp.exp_base_mon) AND (q_cb_exp.l_6 = q_bb_exp.l_6) AND (q_cb_exp.l_5 = q_bb_exp.l_5) AND (q_cb_exp.l_4 = q_bb_exp.l_4) AND (q_cb_exp.l_3 = q_bb_exp.l_3) AND (q_cb_exp.l_2 = q_bb_exp.l_2) AND (q_cb_exp.l_1 = q_bb_exp.l_1) AND (q_cb_exp.p01_code = q_bb_exp.pc) AND (q_cb_exp.rep_month = q_bb_exp.rep_month)
WHERE (((q_cb_exp.month)<=dlookup("last_month","q_rep_month_max")))
GROUP BY q_cb_exp.rep_month, q_cb_exp.p01_code, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.up_curr;

CREATE OR REPLACE VIEW -- not ok
q_exp_diff_full AS
SELECT q_cb_exp.rep_month, q_cb_exp.p01_code, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.up_curr, sum(q_cb_exp.total_expense-q_bb_exp.total_expense) AS diff
FROM q_cb_exp LEFT JOIN q_bb_exp ON (q_cb_exp.up_curr = q_bb_exp.up_curr) AND (q_cb_exp.month = q_bb_exp.exp_base_mon) AND (q_cb_exp.l_6 = q_bb_exp.l_6) AND (q_cb_exp.l_5 = q_bb_exp.l_5) AND (q_cb_exp.l_4 = q_bb_exp.l_4) AND (q_cb_exp.l_3 = q_bb_exp.l_3) AND (q_cb_exp.l_2 = q_bb_exp.l_2) AND (q_cb_exp.l_1 = q_bb_exp.l_1) AND (q_cb_exp.p01_code = q_bb_exp.pc) AND (q_cb_exp.rep_month = q_bb_exp.rep_month)
GROUP BY q_cb_exp.rep_month, q_cb_exp.p01_code, q_cb_exp.l_1, q_cb_exp.l_2, q_cb_exp.l_3, q_cb_exp.l_4, q_cb_exp.l_5, q_cb_exp.l_6, q_cb_exp.up_curr;

CREATE OR REPLACE VIEW -- not ok
q_first_budget_gt AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency AS up_curr, sum(t_cb_profit_usd_st.income) AS incomegt, sum(t_cb_profit_usd_st.expense) AS expensegt, sum(t_cb_profit_usd_st.profit) AS profitgt
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency
HAVING t_cb_profit_usd_st.rep_month="2206";

CREATE OR REPLACE VIEW -- not ok
q_first_budget_rt AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency AS up_curr, sum(t_cb_profit_usd_st.income) AS incomert, sum(t_cb_profit_usd_st.expense) AS expensert, sum(t_cb_profit_usd_st.profit) AS profitrt
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency, t_cb_profit_usd_st.month
HAVING t_cb_profit_usd_st.rep_month="2206"AND t_cb_profit_usd_st.month<=forms!comparison_screen!cmb_allproject_curr_month;

CREATE OR REPLACE VIEW -- not ok
q_first_budget_rt_grouped AS
SELECT q_first_budget_rt.rep_month, q_first_budget_rt.l_1, q_first_budget_rt.l_2, q_first_budget_rt.l_3, q_first_budget_rt.l_4, q_first_budget_rt.l_5, q_first_budget_rt.l_6, q_first_budget_rt.DESC_tr_l3, q_first_budget_rt.DESC_tr_l2, q_first_budget_rt.DESC_tr_l6, q_first_budget_rt.up_curr, sum(q_first_budget_rt.incomert) AS incomert, sum(q_first_budget_rt.expensert) AS expensert, sum(q_first_budget_rt.profitrt) AS profitrt
FROM q_first_budget_rt
GROUP BY q_first_budget_rt.rep_month, q_first_budget_rt.l_1, q_first_budget_rt.l_2, q_first_budget_rt.l_3, q_first_budget_rt.l_4, q_first_budget_rt.l_5, q_first_budget_rt.l_6, q_first_budget_rt.DESC_tr_l3, q_first_budget_rt.DESC_tr_l2, q_first_budget_rt.DESC_tr_l6, q_first_budget_rt.up_curr;

CREATE OR REPLACE VIEW -- not ok
q_first_budget_rt_grouped_projects AS
SELECT q_first_budget_rt.rep_month, q_first_budget_rt.pc, q_first_budget_rt.l_1, q_first_budget_rt.l_2, q_first_budget_rt.l_3, q_first_budget_rt.l_4, q_first_budget_rt.l_5, q_first_budget_rt.l_6, q_first_budget_rt.DESC_tr_l3, q_first_budget_rt.DESC_tr_l2, q_first_budget_rt.DESC_tr_l6, q_first_budget_rt.up_curr, sum(q_first_budget_rt.incomert) AS incomert, sum(q_first_budget_rt.expensert) AS expensert, sum(q_first_budget_rt.profitrt) AS profitrt
FROM q_first_budget_rt
GROUP BY q_first_budget_rt.rep_month, q_first_budget_rt.pc, q_first_budget_rt.l_1, q_first_budget_rt.l_2, q_first_budget_rt.l_3, q_first_budget_rt.l_4, q_first_budget_rt.l_5, q_first_budget_rt.l_6, q_first_budget_rt.DESC_tr_l3, q_first_budget_rt.DESC_tr_l2, q_first_budget_rt.DESC_tr_l6, q_first_budget_rt.up_curr;

CREATE OR REPLACE VIEW -- not ok
q_l6_code_selection AS
SELECT top 1 *
FROM (SELECT top 2716 * FROM c6_code ORDER BY code_l6 ) AS t
ORDER BY code_l6 DESC;

CREATE OR REPLACE VIEW -- not ok
q_l6_selected AS
SELECT top 1 *
FROM (SELECT top 5 * FROM t_rnd_budget_l6 ORDER BY t_rnd_budget_l6.l_1 DESC,t_rnd_budget_l6.l_2 DESC,t_rnd_budget_l6.l_3 DESC,t_rnd_budget_l6.l_4 DESC,t_rnd_budget_l6.l_5 DESC,t_rnd_budget_l6.l_6 DESC) AS t
ORDER BY t_rnd_budget_l6.l_1, t_rnd_budget_l6.l_2, t_rnd_budget_l6.l_3, t_rnd_budget_l6.l_4, t_rnd_budget_l6.l_5, t_rnd_budget_l6.l_6;

CREATE OR REPLACE VIEW 
q_monthly_curr_rates AS
SELECT
*

FROM 
q_monthly_rates_eur_try

	

UNION SELECT
*

FROM 
q_monthly_rates_usd_try;

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_ap AS
insert into t_monthly_curr_rates_mod ( month, constant, rate, budget_curr, rep_month )
SELECT q_monthly_curr_rates.month, q_monthly_curr_rates.constant, q_monthly_curr_rates.rate, q_monthly_curr_rates.budget_curr, q_monthly_curr_rates.rep_month
FROM q_monthly_curr_rates
WHERE (((q_monthly_curr_rates.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_diff AS
SELECT q_monthly_curr_rates_mod_crosstab.month, (q_monthly_curr_rates_mod_crosstab.r_eur_try-mon_curr_rates.r_eur_try) AS eur_try, (q_monthly_curr_rates_mod_crosstab.r_try_eur-mon_curr_rates.r_try_eur) AS try_eur, (q_monthly_curr_rates_mod_crosstab.r_usd_try-mon_curr_rates.r_usd_try) AS usd_try, (q_monthly_curr_rates_mod_crosstab.r_try_usd-mon_curr_rates.r_try_usd) AS try_usd, (q_monthly_curr_rates_mod_crosstab.r_eur_usd-mon_curr_rates.r_eur_usd) AS eur_usd, (q_monthly_curr_rates_mod_crosstab.r_usd_eur-mon_curr_rates.r_usd_eur) AS usd_eur, mon_curr_rates.rep_month
FROM q_monthly_curr_rates_mod_crosstab INNER JOIN mon_curr_rates ON q_monthly_curr_rates_mod_crosstab.month = mon_curr_rates.month
WHERE (((mon_curr_rates.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_crosstab AS
transform sum(q_monthly_curr_rates_mod_union.rate) AS sumofrate
SELECT q_monthly_curr_rates_mod_union.month
FROM q_monthly_curr_rates_mod_union
GROUP BY q_monthly_curr_rates_mod_union.month
PIVOT q_monthly_curr_rates_mod_union.constant;

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_DELETE AS
DELETE t_monthly_curr_rates_mod.constant, t_monthly_curr_rates_mod.budget_curr, t_monthly_curr_rates_mod.month, t_monthly_curr_rates_mod.rate, t_monthly_curr_rates_mod.rep_month, t_monthly_curr_rates_mod.rep_month
FROM t_monthly_curr_rates_mod;

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_eur_eur AS
SELECT "eur" AS budget_curr, q_monthly_curr_rates_mod_try_eur.month, 1 AS rate, "r_eur_eur" AS constant, q_monthly_curr_rates_mod_try_usd.rep_month
FROM q_monthly_curr_rates_mod_try_eur LEFT JOIN q_monthly_curr_rates_mod_try_usd ON q_monthly_curr_rates_mod_try_eur.month = q_monthly_curr_rates_mod_try_usd.month
WHERE (((q_monthly_curr_rates_mod_try_usd.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_eur_try AS
SELECT t_monthly_curr_rates_mod.budget_curr, t_monthly_curr_rates_mod.month, t_monthly_curr_rates_mod.rate, t_monthly_curr_rates_mod.constant, t_monthly_curr_rates_mod.rep_month
FROM t_monthly_curr_rates_mod
WHERE (((t_monthly_curr_rates_mod.constant)="r_eur_try") AND ((t_monthly_curr_rates_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_eur_try_graph AS
SELECT t_monthly_curr_rates_st.constant, t_monthly_curr_rates_st.rate, t_monthly_curr_rates_mod.rate, t_monthly_curr_rates_st.budget_curr, t_monthly_curr_rates_st.month
FROM t_monthly_curr_rates_st INNER JOIN t_monthly_curr_rates_mod ON (t_monthly_curr_rates_st.rep_month = t_monthly_curr_rates_mod.rep_month) AND (t_monthly_curr_rates_st.month = t_monthly_curr_rates_mod.month) AND (t_monthly_curr_rates_st.constant = t_monthly_curr_rates_mod.constant)
WHERE (((t_monthly_curr_rates_st.constant)="r_eur_try") AND ((t_monthly_curr_rates_st.month)>=#1/1/2022#));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_eur_usd AS
SELECT "usd" AS budget_curr, q_monthly_curr_rates_mod_eur_try.month, round(q_monthly_curr_rates_mod_eur_try.rate/q_monthly_curr_rates_mod_usd_try.rate,6) AS rate, "r_eur_usd" AS constant, q_monthly_curr_rates_mod_usd_try.rep_month
FROM q_monthly_curr_rates_mod_eur_try INNER JOIN q_monthly_curr_rates_mod_usd_try ON q_monthly_curr_rates_mod_eur_try.month = q_monthly_curr_rates_mod_usd_try.month
WHERE (((q_monthly_curr_rates_mod_usd_try.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_try_eur AS
SELECT "eur" AS budget_curr, q_monthly_curr_rates_mod_eur_try.month, round(1/q_monthly_curr_rates_mod_eur_try.rate,6) AS rate, "r_try_eur" AS constant, q_monthly_curr_rates_mod_eur_try.rep_month
FROM q_monthly_curr_rates_mod_eur_try
WHERE (((q_monthly_curr_rates_mod_eur_try.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_try_try AS
SELECT "try" AS budget_curr, q_monthly_curr_rates_mod_try_eur.month, 1 AS rate, "r_try_try" AS constant, q_monthly_curr_rates_mod_try_usd.rep_month
FROM q_monthly_curr_rates_mod_try_eur LEFT JOIN q_monthly_curr_rates_mod_try_usd ON q_monthly_curr_rates_mod_try_eur.month = q_monthly_curr_rates_mod_try_usd.month
WHERE (((q_monthly_curr_rates_mod_try_usd.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_try_usd AS
SELECT "usd" AS budget_curr, q_monthly_curr_rates_mod_usd_try.month, round(1/q_monthly_curr_rates_mod_usd_try.rate,6) AS rate, "r_try_usd" AS constant, q_monthly_curr_rates_mod_usd_try.rep_month
FROM q_monthly_curr_rates_mod_usd_try
WHERE (((q_monthly_curr_rates_mod_usd_try.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_UNION AS
SELECT 
*
FROM 
q_monthly_curr_rates_mod_eur_eur

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_eur_try

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_eur_usd


UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_try_eur

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_try_try

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_try_usd

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_usd_eur

UNION 
SELECT 
*
FROM 
q_monthly_curr_rates_mod_usd_try

UNION SELECT 
*
FROM 
q_monthly_curr_rates_mod_usd_usd;

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_usd_eur AS
SELECT "eur" AS budget_curr, q_monthly_curr_rates_mod_usd_try.month, round(q_monthly_curr_rates_mod_usd_try.rate/q_monthly_curr_rates_mod_eur_try.rate,6) AS rate, "r_usd_eur" AS constant, q_monthly_curr_rates_mod_eur_try.rep_month
FROM q_monthly_curr_rates_mod_usd_try LEFT JOIN q_monthly_curr_rates_mod_eur_try ON q_monthly_curr_rates_mod_usd_try.month = q_monthly_curr_rates_mod_eur_try.month
WHERE (((q_monthly_curr_rates_mod_eur_try.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_usd_try AS
SELECT t_monthly_curr_rates_mod.budget_curr, t_monthly_curr_rates_mod.month, t_monthly_curr_rates_mod.rate, t_monthly_curr_rates_mod.constant, t_monthly_curr_rates_mod.rep_month
FROM t_monthly_curr_rates_mod
WHERE (((t_monthly_curr_rates_mod.constant)="r_usd_try") AND ((t_monthly_curr_rates_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_usd_try_graph AS
SELECT t_monthly_curr_rates_st.constant, t_monthly_curr_rates_st.rate, t_monthly_curr_rates_mod.rate, t_monthly_curr_rates_st.budget_curr, t_monthly_curr_rates_st.month
FROM t_monthly_curr_rates_st INNER JOIN t_monthly_curr_rates_mod ON (t_monthly_curr_rates_st.rep_month = t_monthly_curr_rates_mod.rep_month) AND (t_monthly_curr_rates_st.month = t_monthly_curr_rates_mod.month) AND (t_monthly_curr_rates_st.constant = t_monthly_curr_rates_mod.constant)
WHERE (((t_monthly_curr_rates_st.constant)="r_usd_try") AND ((t_monthly_curr_rates_st.month)>=#1/1/2022#));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mod_usd_usd AS
SELECT "usd" AS budget_curr, q_monthly_curr_rates_mod_try_eur.month, 1 AS rate, "r_usd_usd" AS constant, q_monthly_curr_rates_mod_try_usd.rep_month
FROM q_monthly_curr_rates_mod_try_eur LEFT JOIN q_monthly_curr_rates_mod_try_usd ON q_monthly_curr_rates_mod_try_eur.month = q_monthly_curr_rates_mod_try_usd.month
WHERE (((q_monthly_curr_rates_mod_try_usd.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_curr_rates_mt AS
SELECT q_monthly_curr_rates.constant, q_monthly_curr_rates.budget_curr, q_monthly_curr_rates.month, q_monthly_curr_rates.rate, q_monthly_curr_rates.rep_month into t_monthly_curr_rates_st
FROM q_monthly_curr_rates
WHERE (((q_monthly_curr_rates.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_rates_eur_try AS
SELECT mon_curr_rates.month, "r_eur_try" AS constant, mon_curr_rates.r_eur_try AS rate, "try" AS budget_curr, mon_curr_rates.rep_month
FROM mon_curr_rates
WHERE (((mon_curr_rates.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_rates_upd_mod AS
UPDATE t_monthly_curr_rates_st LEFT JOIN t_monthly_curr_rates_mod ON (t_monthly_curr_rates_st.budget_curr = t_monthly_curr_rates_mod.budget_curr) AND (t_monthly_curr_rates_st.constant = t_monthly_curr_rates_mod.constant) AND (t_monthly_curr_rates_st.month = t_monthly_curr_rates_mod.month) AND (t_monthly_curr_rates_st.rep_month = t_monthly_curr_rates_mod.rep_month) SET t_monthly_curr_rates_mod.constant = t_monthly_curr_rates_st.constant, t_monthly_curr_rates_mod.budget_curr = t_monthly_curr_rates_st.budget_curr, t_monthly_curr_rates_mod.month = t_monthly_curr_rates_st.month, t_monthly_curr_rates_mod.rate = t_monthly_curr_rates_st.rate, t_monthly_curr_rates_mod.rep_month = t_monthly_curr_rates_st.rep_month
WHERE (((t_monthly_curr_rates_mod.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_monthly_rates_usd_try AS
SELECT mon_curr_rates.month, "r_usd_try" AS constant, mon_curr_rates.r_usd_try AS rate, "try" AS budget_curr, mon_curr_rates.rep_month
FROM mon_curr_rates
WHERE (((mon_curr_rates.rep_month)=dlookup("rep_month","q_rep_month_max_val")));

CREATE OR REPLACE VIEW -- not ok
q_pl_analysis_comp AS
SELECT t_bb_analysis_add.p01_code, t_bb_analysis_add.rs_l1, t_bb_analysis_add.rs_l2, t_bb_analysis_add.rs_l3, t_bb_analysis_add.rs_l4, t_bb_analysis_add.analysis_date, t_bb_analysis.p01_code
FROM t_bb_analysis_add LEFT JOIN t_bb_analysis ON (t_bb_analysis_add.analysis_date = t_bb_analysis.analysis_date) AND (t_bb_analysis_add.rs_l4 = t_bb_analysis.rs_l4) AND (t_bb_analysis_add.rs_l3 = t_bb_analysis.rs_l3) AND (t_bb_analysis_add.rs_l2 = t_bb_analysis.rs_l2) AND (t_bb_analysis_add.rs_l1 = t_bb_analysis.rs_l1) AND (t_bb_analysis_add.p01_code = t_bb_analysis.p01_code)
WHERE (((t_bb_analysis.p01_code) is null));

CREATE OR REPLACE VIEW -- not ok
q_pl_coeff_export AS
SELECT t_pl_analysis.p01_code, t_pl_analysis.rs_l1, t_pl_analysis.rs_l2, t_pl_analysis.rs_l3, t_pl_analysis.rs_l4, r4_code.r_4_DESC_tr, r4_code.w_ufe, r4_code.w_tufe, r4_code.w_inf_usd, r4_code.w_inf_eur, r4_code.w_metal, r4_code.w_petrol, r4_code.w_cement, r4_code.w_electricity
FROM r4_code LEFT JOIN t_pl_analysis ON (r4_code.r_1_code = t_pl_analysis.rs_l1) AND (r4_code.r_2_code = t_pl_analysis.rs_l2) AND (r4_code.r_3_code = t_pl_analysis.rs_l3) AND (r4_code.r_4_code = t_pl_analysis.rs_l4)
GROUP BY t_pl_analysis.p01_code, t_pl_analysis.rs_l1, t_pl_analysis.rs_l2, t_pl_analysis.rs_l3, t_pl_analysis.rs_l4, r4_code.r_4_DESC_tr, r4_code.w_ufe, r4_code.w_tufe, r4_code.w_inf_usd, r4_code.w_inf_eur, r4_code.w_metal, r4_code.w_petrol, r4_code.w_cement, r4_code.w_electricity
HAVING (((t_pl_analysis.p01_code) is not null));

CREATE OR REPLACE VIEW -- ok
q_pl_exp AS
SELECT q_cb_unit_price.rep_month, q_cb_unit_price.p01_code, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.month, sum((exp_cb_qty*unit_price_planned_coeff)) AS total_expense, q_cb_unit_price.up_curr, t_cb_qty.key_r_pc_l6
FROM q_cb_unit_price LEFT JOIN t_cb_qty ON (q_cb_unit_price.key_r_pc_l6 = t_cb_qty.key_r_pc_l6) AND (q_cb_unit_price.month = t_cb_qty.exp_cb_mon)
GROUP BY q_cb_unit_price.rep_month, q_cb_unit_price.p01_code, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.month, q_cb_unit_price.up_curr, t_cb_qty.key_r_pc_l6;

CREATE OR REPLACE VIEW -- not ok
q_pl_exp_mod AS
SELECT q_cb_unit_price_mod.rep_month, q_cb_unit_price_mod.p01_code, q_cb_unit_price_mod.l_1, q_cb_unit_price_mod.l_2, q_cb_unit_price_mod.l_3, q_cb_unit_price_mod.l_4, q_cb_unit_price_mod.l_5, q_cb_unit_price_mod.l_6, q_cb_unit_price_mod.month, sum((exp_cb_qty*unit_price_planned_coeff)) AS total_expense, q_cb_unit_price_mod.up_curr, q_cb_unit_price_mod.key_r_pc_l6
FROM q_cb_unit_price_mod LEFT JOIN t_cb_qty ON (q_cb_unit_price_mod.g_month = t_cb_qty.exp_cb_mon) AND (q_cb_unit_price_mod.key_r_pc_l6 = t_cb_qty.key_r_pc_l6)
GROUP BY q_cb_unit_price_mod.rep_month, q_cb_unit_price_mod.p01_code, q_cb_unit_price_mod.l_1, q_cb_unit_price_mod.l_2, q_cb_unit_price_mod.l_3, q_cb_unit_price_mod.l_4, q_cb_unit_price_mod.l_5, q_cb_unit_price_mod.l_6, q_cb_unit_price_mod.month, q_cb_unit_price_mod.up_curr, q_cb_unit_price_mod.key_r_pc_l6;

CREATE OR REPLACE VIEW -- ok
q_pl_indexes AS
SELECT t_cb_indexes.rep_month, t_cb_indexes.g_month, t_cb_indexes.bb_metal, t_cb_indexes.bb_electricity, t_cb_indexes.bb_cement, t_cb_indexes.bb_petrol, t_cb_indexes.bb_inf_usd, t_cb_indexes.bb_inf_eur, t_cb_indexes.bb_ufe, t_cb_indexes.bb_tufe
FROM t_cb_indexes
WHERE ((t_cb_indexes.rep_month)=(SELECT rep_month FROM q_rep_month_max_val));

CREATE OR REPLACE VIEW -- not ok
q_r4_code_pool AS
SELECT r4_code.r_1_code, r4_code.r_2_code, r4_code.r_3_code, r4_code.r_4_code, r4_code.currency
FROM r4_code
ORDER BY r4_code.r_1_code DESC , r4_code.r_2_code DESC , r4_code.r_3_code DESC , r4_code.r_4_code DESC;

CREATE OR REPLACE VIEW -- not ok
q_r4_code_selection AS
SELECT top 1 *
FROM (SELECT top 1015 * FROM q_r4_code_pool ORDER BY r4_code.r_1_code ,r4_code.r_2_code ,r4_code.r_3_code ,r4_code.r_4_code ) AS t
ORDER BY r4_code.r_1_code DESC , r4_code.r_2_code DESC , r4_code.r_3_code DESC , r4_code.r_4_code DESC;

CREATE OR REPLACE VIEW -- not ok
q_r4_filtered AS
SELECT t_rnd_budget_r4.r_1, t_rnd_budget_r4.r_2, t_rnd_budget_r4.r_3, t_rnd_budget_r4.r_4
FROM t_rnd_budget_r4
GROUP BY t_rnd_budget_r4.r_1, t_rnd_budget_r4.r_2, t_rnd_budget_r4.r_3, t_rnd_budget_r4.r_4
ORDER BY t_rnd_budget_r4.r_1, t_rnd_budget_r4.r_2, t_rnd_budget_r4.r_3, t_rnd_budget_r4.r_4;

CREATE OR REPLACE VIEW -- not ok
q_r4_selected_for_up AS
SELECT top 1 *
FROM (SELECT top 5 * FROM q_r4_filtered ORDER BY q_r4_filtered.r_1 DESC,q_r4_filtered.r_2 DESC,q_r4_filtered.r_3 DESC,q_r4_filtered.r_4 DESC) AS t
ORDER BY q_r4_filtered.r_1, q_r4_filtered.r_2, q_r4_filtered.r_3, q_r4_filtered.r_4;

CREATE OR REPLACE VIEW --ok
q_rep_month_max AS
SELECT max(t_rep_month.rep_month_date) AS last_month
FROM t_rep_month;

CREATE OR REPLACE VIEW --ok
q_rep_month_max_val AS
SELECT max(t_rep_month.rep_month) AS rep_month
FROM t_rep_month;

CREATE OR REPLACE VIEW -- ok
q_rep_month_order AS
SELECT t_rep_month.rep_month, t_rep_month.rep_month_date, ROW_NUMBER () OVER (ORDER BY rep_month_date) AS rownum
FROM t_rep_month
ORDER BY t_rep_month.rep_month DESC , t_rep_month.rep_month_date DESC;

CREATE OR REPLACE VIEW -- not ok
q_second_budget_gt AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency AS up_curr, sum(t_cb_profit_usd_st.income) AS incomegt, sum(t_cb_profit_usd_st.expense) AS expensegt, sum(t_cb_profit_usd_st.profit) AS profitgt
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency
HAVING t_cb_profit_usd_st.rep_month="2207";

CREATE OR REPLACE VIEW -- not ok
q_second_budget_rt AS
SELECT t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency AS up_curr, sum(t_cb_profit_usd_st.income) AS incomert, sum(t_cb_profit_usd_st.expense) AS expensert, sum(t_cb_profit_usd_st.profit) AS profitrt
FROM t_cb_profit_usd_st
GROUP BY t_cb_profit_usd_st.rep_month, t_cb_profit_usd_st.pc, t_cb_profit_usd_st.l_1, t_cb_profit_usd_st.l_2, t_cb_profit_usd_st.l_3, t_cb_profit_usd_st.l_4, t_cb_profit_usd_st.l_5, t_cb_profit_usd_st.l_6, t_cb_profit_usd_st.DESC_tr_l3, t_cb_profit_usd_st.DESC_tr_l2, t_cb_profit_usd_st.DESC_tr_l6, t_cb_profit_usd_st.currency, t_cb_profit_usd_st.month
HAVING t_cb_profit_usd_st.rep_month="2207"AND t_cb_profit_usd_st.month<=forms!comparison_screen!cmb_allproject_curr_month;

CREATE OR REPLACE VIEW -- not ok
q_second_budget_rt_grouped AS
SELECT q_second_budget_rt.rep_month, q_second_budget_rt.l_1, q_second_budget_rt.l_2, q_second_budget_rt.l_3, q_second_budget_rt.l_4, q_second_budget_rt.l_5, q_second_budget_rt.l_6, q_second_budget_rt.DESC_tr_l3, q_second_budget_rt.DESC_tr_l2, q_second_budget_rt.DESC_tr_l6, q_second_budget_rt.up_curr, sum(q_second_budget_rt.incomert) AS incomert, sum(q_second_budget_rt.expensert) AS expensert, sum(q_second_budget_rt.profitrt) AS profitrt
FROM q_second_budget_rt
GROUP BY q_second_budget_rt.rep_month, q_second_budget_rt.l_1, q_second_budget_rt.l_2, q_second_budget_rt.l_3, q_second_budget_rt.l_4, q_second_budget_rt.l_5, q_second_budget_rt.l_6, q_second_budget_rt.DESC_tr_l3, q_second_budget_rt.DESC_tr_l2, q_second_budget_rt.DESC_tr_l6, q_second_budget_rt.up_curr;

CREATE OR REPLACE VIEW -- not ok
q_second_budget_rt_grouped_projects AS
SELECT q_second_budget_rt.rep_month, q_second_budget_rt.pc, q_second_budget_rt.l_1, q_second_budget_rt.l_2, q_second_budget_rt.l_3, q_second_budget_rt.l_4, q_second_budget_rt.l_5, q_second_budget_rt.l_6, q_second_budget_rt.DESC_tr_l3, q_second_budget_rt.DESC_tr_l2, q_second_budget_rt.DESC_tr_l6, q_second_budget_rt.up_curr, sum(q_second_budget_rt.incomert) AS incomert, sum(q_second_budget_rt.expensert) AS expensert, sum(q_second_budget_rt.profitrt) AS profitrt
FROM q_second_budget_rt
GROUP BY q_second_budget_rt.rep_month, q_second_budget_rt.pc, q_second_budget_rt.l_1, q_second_budget_rt.l_2, q_second_budget_rt.l_3, q_second_budget_rt.l_4, q_second_budget_rt.l_5, q_second_budget_rt.l_6, q_second_budget_rt.DESC_tr_l3, q_second_budget_rt.DESC_tr_l2, q_second_budget_rt.DESC_tr_l6, q_second_budget_rt.up_curr;

