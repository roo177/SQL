-- FUNCTION: public.q_cb_mod_create_budget_system(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_create_budget_system(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_create_budget_system(
	motor_type text,
	motor_market_status text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

if motor_type = 'motor_one' 
THEN RAISE NOTICE 'Testing';
ELSE RAISE NOTICE 'Not-Testing';
end if;

-- DROP TABLE IF EXISTS t_cb_mod_mon_curr_rates CASCADE;
-- Table: public.t_cb_mod_mon_curr_rates

-- DROP TABLE IF EXISTS public.t_cb_mod_mon_curr_rates CASCADE;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_mon_curr_rates
(
    user_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    session_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    r_eur_try numeric(12,6),
    r_usd_try numeric(12,6),
    r_try_try numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_usd_usd numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_eur_eur numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_eur_usd numeric(12,6) GENERATED ALWAYS AS ((r_eur_try / r_usd_try)) STORED,
    r_try_eur numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_eur_try)) STORED,
    r_usd_eur numeric(12,6) GENERATED ALWAYS AS ((r_usd_try / r_eur_try)) STORED,
    r_try_usd numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_usd_try)) STORED,
	jkey_curr_index character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || extract(DAY FROM "month")|| '.' || extract(MONTH FROM "month") || '.' || extract(YEAR FROM "month") || '.' ||  "user_id" || '.'  || "session_id") STORED,
	rm_month character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || extract(DAY FROM "month")|| '.' || extract(MONTH FROM "month") || '.' || extract(YEAR FROM "month") ) STORED,
	CONSTRAINT t_cb_mod_mon_curr_rates_pkey PRIMARY KEY (user_id, session_id, rep_month, month)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_mon_curr_rates
    OWNER to ictasadmin;

-- DROP TABLE IF EXISTS t_cb_mod_indexes CASCADE;
-- Table: public.t_cb_mod_indexes

-- DROP TABLE IF EXISTS public.t_cb_mod_indexes;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_indexes
(
    user_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    session_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    bb_ufe numeric(18,10),
    bb_tufe numeric(18,10),
    bb_inf_usd numeric(18,10),
    bb_inf_eur numeric(18,10),
    bb_metal numeric(18,10),
    bb_petrol numeric(18,10),
    bb_cement numeric(18,10),
    bb_electricity numeric(18,10),
	jkey_curr_index character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || extract(DAY FROM "month")::text|| '.' || extract(MONTH FROM "month")::text || '.' || extract(YEAR FROM "month")::text || '.' ||  "user_id" || '.'  || "session_id") STORED,
	rm_month character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || extract(DAY FROM "month")::text || '.' || extract(MONTH FROM "month")::text || '.' || extract(YEAR FROM "month")::text ) STORED,
    CONSTRAINT t_cb_mod_indexes_pkey PRIMARY KEY (user_id, session_id, rep_month, month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_indexes
    OWNER to ictasadmin;

-- Table: public.t_ac_mod_exp

-- DROP TABLE IF EXISTS public.t_ac_mod_exp CASCADE;

CREATE TABLE IF NOT EXISTS public.t_ac_mod_exp
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    user_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    session_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    exp_ac_mon date NOT NULL,
    exp_ac_exp numeric(25,15) NOT NULL,
    curr character varying(3) COLLATE pg_catalog."default" NOT NULL,
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month) || '.') || (pc)) || '.') || (l_1)) || '.') || (l_2)) || '.') || (l_3)) || '.') || (l_4)) || '.') || (l_5)) || '.') || (l_6))) STORED,
    ccode character varying(18) COLLATE pg_catalog."default" NOT NULL,
    pkey character varying(60) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((rep_month) || '-') || (pc)) || '-') || (l_1)) || '.') || (l_2)) || '.') || (l_3)) || '.') || (l_4)) || '.') || (l_5)) || '.') || (l_6)) || '-') || (EXTRACT(year FROM exp_ac_mon)::text)) || '-') || (EXTRACT(month FROM exp_ac_mon)::text)) || '-') || (EXTRACT(day FROM exp_ac_mon)::text)) || '-') || (curr))) STORED,
	jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || "pc" || '.' || "curr" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6"  || '.' ||  extract(DAY FROM "exp_ac_mon")::text|| '.' || extract(MONTH FROM "exp_ac_mon")::text || '.' || extract(YEAR FROM "exp_ac_mon")::text || '.' ||  "user_id" || '.'  || "session_id") STORED,
    CONSTRAINT t_cb_exp_mod_pkey PRIMARY KEY (rep_month, user_id, session_id, pc, l_1, l_2, l_3, l_4, l_5, l_6, exp_ac_mon, exp_ac_exp, curr, ccode)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_ac_mod_exp
    OWNER to ictasadmin;

--DROP TABLE IF EXISTS t_cb_mod_inc_st CASCADE;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_inc_st
(
    user_id text COLLATE pg_catalog."default" NOT NULL,
    session_id text COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1) || '.') || (l_2)) || '.') || (l_3)) || '.') || (l_4)) || '.') || (l_5)) || '.') || (l_6))) STORED,
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    inc_base_mon date,
    inc_total double precision,
    curr character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    desc_tr_l6 character varying(150) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month) || '.') || (pc)) || '.') || (l_1)) || '.') || (l_2)) || '.') || (l_3)) || '.') || (l_4)) || '.') || (l_5)) || '.') || (l_6))) STORED,
    jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((((((rep_month) || '.') || (pc)) || '.') || (curr)) || '.') || (l_1)) || '.') || (l_2)) || '.') || (l_3)) || '.') || (l_4)) || '.') || (l_5)) || '.') || (l_6)) || '.') || (EXTRACT(day FROM inc_base_mon)::text)) || '.') || (EXTRACT(month FROM inc_base_mon)::text)) || '.') || (EXTRACT(year FROM inc_base_mon)::text)) || '.') || user_id) || '.') || session_id)) STORED
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_inc_st
    OWNER to ictasadmin;

CREATE OR REPLACE VIEW q_cb_mod_qty_activem_works_monthly AS

select 
t_cb_qty.rep_month, 
t_cb_qty.pc, 
t_cb_qty.exp_cb_mon
from t_cb_qty left join t_rep_month on t_cb_qty.rep_month = t_rep_month.rep_month
where (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) and ((t_cb_qty.exp_cb_qty)<>0))
group by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
having (((t_cb_qty.rep_month)= (SELECT Max(rep_month) from t_rep_month)))
order by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;

--DROP VIEW IF EXISTS q_cb_mod_qty_activem_works ;

CREATE OR REPLACE VIEW q_cb_mod_qty_activem_works AS

select t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon
from t_cb_qty left join t_rep_month on t_cb_qty.rep_month = t_rep_month.rep_month
where (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) and ((t_cb_qty.exp_cb_qty)<>0) and ((t_cb_qty.rep_month)=(SELECT Max(rep_month) from t_rep_month)))
order by t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon;

--DROP VIEW IF EXISTS q_cb_mod_active_months_res_qty;

CREATE OR REPLACE VIEW q_cb_mod_active_months_res_qty AS

select 
  t_cb_analysis.rep_month, 
  t_cb_analysis.pc, 
  q_cb_mod_qty_activem_works.exp_cb_mon, 
  t_cb_analysis.key_r4, 
  q_cb_mod_qty_activem_works.key_r_pc_l6, 
  t_cb_analysis.key_full, 
  t_cb_analysis.l_1, 
  t_cb_analysis.l_2, 
  t_cb_analysis.l_3, 
  t_cb_analysis.l_4, 
  t_cb_analysis.l_5, 
  t_cb_analysis.l_6, 
  t_cb_analysis.rs_l1, 
  t_cb_analysis.rs_l2, 
  t_cb_analysis.rs_l3, 
  t_cb_analysis.rs_l4, 
  t_cb_analysis.key_r4_simple, 
  (1 + r_loss)*(
    t_cb_analysis.an_rs_quantity
  ) as an_rs_quantity, 
  t_cb_analysis.r_loss 
from 
  q_cb_mod_qty_activem_works 
  left join t_cb_analysis on q_cb_mod_qty_activem_works.key_r_pc_l6 = t_cb_analysis.key_r_pc_l6;

--DROP VIEW IF EXISTS q_cb_mod_curr_base_month;

CREATE OR REPLACE VIEW q_cb_mod_curr_base_month AS
SELECT 
q_budget_project_months.pc, 
t_rep_month.rep_month_date, 
q_budget_project_months.rep_month
FROM t_rep_month 
right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
Where q_budget_project_months.rep_month = (SELECT MAX(rep_month) from t_rep_month)
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

--DROP VIEW IF EXISTS q_cb_mod_curr_base_val;

CREATE OR REPLACE VIEW q_cb_mod_curr_base_val AS
select 
t_cb_mod_mon_curr_rates.user_id,
t_cb_mod_mon_curr_rates.session_id,
q_cb_mod_curr_base_month.rep_month_date, 
t_cb_mod_mon_curr_rates.r_eur_eur, 
t_cb_mod_mon_curr_rates.r_eur_try, 
t_cb_mod_mon_curr_rates.r_eur_usd, 
t_cb_mod_mon_curr_rates.r_try_eur, 
t_cb_mod_mon_curr_rates.r_try_try, 
t_cb_mod_mon_curr_rates.r_try_usd, 
t_cb_mod_mon_curr_rates.r_usd_eur, 
t_cb_mod_mon_curr_rates.r_usd_try, 
t_cb_mod_mon_curr_rates.r_usd_usd, 
q_cb_mod_curr_base_month.rep_month
from q_cb_mod_curr_base_month left join t_cb_mod_mon_curr_rates on q_cb_mod_curr_base_month.rep_month_date = t_cb_mod_mon_curr_rates.month AND  q_cb_mod_curr_base_month.rep_month = t_cb_mod_mon_curr_rates.rep_month
group by q_cb_mod_curr_base_month.rep_month_date, t_cb_mod_mon_curr_rates.user_id, t_cb_mod_mon_curr_rates.session_id, t_cb_mod_mon_curr_rates.r_eur_eur, t_cb_mod_mon_curr_rates.r_eur_try, t_cb_mod_mon_curr_rates.r_eur_usd, t_cb_mod_mon_curr_rates.r_try_eur, t_cb_mod_mon_curr_rates.r_try_try, t_cb_mod_mon_curr_rates.r_try_usd, t_cb_mod_mon_curr_rates.r_usd_eur, t_cb_mod_mon_curr_rates.r_usd_try, t_cb_mod_mon_curr_rates.r_usd_usd, q_cb_mod_curr_base_month.rep_month;

--DROP VIEW IF EXISTS q_cb_mod_monthly_curr_rates_activem;

CREATE OR REPLACE VIEW q_cb_mod_monthly_curr_rates_activem AS

SELECT q_cb_mod_active_months_res_qty.rep_month
	,t_cb_mod_mon_curr_rates.user_id
	,t_cb_mod_mon_curr_rates.session_id
	,q_cb_mod_active_months_res_qty.pc
	,q_cb_mod_active_months_res_qty.l_1
	,q_cb_mod_active_months_res_qty.l_2
	,q_cb_mod_active_months_res_qty.l_3
	,q_cb_mod_active_months_res_qty.l_4
	,q_cb_mod_active_months_res_qty.l_5
	,q_cb_mod_active_months_res_qty.l_6
	,q_cb_mod_active_months_res_qty.rs_l1
	,q_cb_mod_active_months_res_qty.rs_l2
	,q_cb_mod_active_months_res_qty.rs_l3
	,q_cb_mod_active_months_res_qty.rs_l4
	,q_cb_mod_active_months_res_qty.exp_cb_mon
	,t_cb_mod_mon_curr_rates.r_eur_try
	,t_cb_mod_mon_curr_rates.r_eur_usd
	,t_cb_mod_mon_curr_rates.r_usd_eur
	,t_cb_mod_mon_curr_rates.r_usd_try
	,r4_code.Currency as curr
FROM (q_cb_mod_active_months_res_qty
	LEFT JOIN t_cb_mod_mon_curr_rates ON (q_cb_mod_active_months_res_qty.exp_cb_mon = t_cb_mod_mon_curr_rates.month) 
	AND (q_cb_mod_active_months_res_qty.rep_month = t_cb_mod_mon_curr_rates.rep_month))
	LEFT JOIN r4_code ON q_cb_mod_active_months_res_qty.key_r4_simple = r4_code.Key_R4_Simple 
GROUP BY q_cb_mod_active_months_res_qty.rep_month
	,t_cb_mod_mon_curr_rates.user_id
	,t_cb_mod_mon_curr_rates.session_id
	,q_cb_mod_active_months_res_qty.pc
	,q_cb_mod_active_months_res_qty.l_1
	,q_cb_mod_active_months_res_qty.l_2
	,q_cb_mod_active_months_res_qty.l_3
	,q_cb_mod_active_months_res_qty.l_4
	,q_cb_mod_active_months_res_qty.l_5
	,q_cb_mod_active_months_res_qty.l_6
	,q_cb_mod_active_months_res_qty.rs_l1
	,q_cb_mod_active_months_res_qty.rs_l2
	,q_cb_mod_active_months_res_qty.rs_l3
	,q_cb_mod_active_months_res_qty.rs_l4
	,q_cb_mod_active_months_res_qty.exp_cb_mon
	,t_cb_mod_mon_curr_rates.r_eur_try
	,t_cb_mod_mon_curr_rates.r_eur_usd
	,t_cb_mod_mon_curr_rates.r_usd_eur
	,t_cb_mod_mon_curr_rates.r_usd_try
	,r4_code.Currency;

--DROP VIEW IF EXISTS q_cb_mod_monthly_curr_rates_inc;

CREATE OR REPLACE VIEW q_cb_mod_monthly_curr_rates_inc AS

SELECT q_cb_mod_monthly_curr_rates_activem.rep_month
	,q_cb_mod_monthly_curr_rates_activem.user_id
	,q_cb_mod_monthly_curr_rates_activem.session_id
	,q_cb_mod_monthly_curr_rates_activem.pc
	,q_cb_mod_monthly_curr_rates_activem.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_activem.r_eur_try/q_cb_mod_curr_base_val.r_eur_try-1 AS rt_eur_try
	,q_cb_mod_monthly_curr_rates_activem.r_eur_usd/q_cb_mod_curr_base_val.r_eur_usd-1 AS rt_eur_usd
	,q_cb_mod_monthly_curr_rates_activem.r_usd_try/q_cb_mod_curr_base_val.r_usd_try-1 AS rt_usd_try
	,q_cb_mod_monthly_curr_rates_activem.r_usd_eur/q_cb_mod_curr_base_val.r_usd_eur-1 AS rt_usd_eur 
FROM q_cb_mod_monthly_curr_rates_activem
	LEFT JOIN q_cb_mod_curr_base_val ON (q_cb_mod_monthly_curr_rates_activem.rep_month = q_cb_mod_curr_base_val.rep_month) 
	AND (q_cb_mod_monthly_curr_rates_activem.user_id = q_cb_mod_curr_base_val.user_id) 
	AND (q_cb_mod_monthly_curr_rates_activem.session_id = q_cb_mod_curr_base_val.session_id) 
GROUP BY q_cb_mod_monthly_curr_rates_activem.rep_month
	,q_cb_mod_monthly_curr_rates_activem.user_id
	,q_cb_mod_monthly_curr_rates_activem.session_id
	,q_cb_mod_monthly_curr_rates_activem.pc
	,q_cb_mod_monthly_curr_rates_activem.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_activem.r_eur_try/q_cb_mod_curr_base_val.r_eur_try-1
	,q_cb_mod_monthly_curr_rates_activem.r_eur_usd/q_cb_mod_curr_base_val.r_eur_usd-1
	,q_cb_mod_monthly_curr_rates_activem.r_usd_try/q_cb_mod_curr_base_val.r_usd_try-1
	,q_cb_mod_monthly_curr_rates_activem.r_usd_eur/q_cb_mod_curr_base_val.r_usd_eur-1;

--DROP VIEW IF EXISTS q_cb_mod_curr_escalation_rates;
CREATE OR REPLACE VIEW q_cb_mod_curr_escalation_rates AS 
select 
  q_cb_mod_active_months_res_qty.rep_month, 
  q_cb_mod_monthly_curr_rates_inc.user_id,
  q_cb_mod_monthly_curr_rates_inc.session_id,
  q_cb_mod_active_months_res_qty.pc, 
  q_cb_mod_active_months_res_qty.l_1, 
  q_cb_mod_active_months_res_qty.l_2, 
  q_cb_mod_active_months_res_qty.l_3, 
  q_cb_mod_active_months_res_qty.l_4, 
  q_cb_mod_active_months_res_qty.l_5, 
  q_cb_mod_active_months_res_qty.l_6, 
  q_cb_mod_active_months_res_qty.exp_cb_mon as month, 
  q_cb_mod_active_months_res_qty.rs_l1, 
  q_cb_mod_active_months_res_qty.rs_l2, 
  q_cb_mod_active_months_res_qty.rs_l3, 
  q_cb_mod_active_months_res_qty.rs_l4, 
  CASE WHEN r4_code.currency = 'TRY' 
  and w_inf_usd <> 0 THEN 1 + rt_usd_try * w_inf_usd ELSE CASE WHEN r4_code.currency = 'EUR' 
  and w_inf_usd <> 0 THEN 1 + rt_usd_eur * w_inf_usd ELSE 1 end end as k_usd, 
  CASE WHEN r4_code.currency = 'TRY' 
  and w_inf_eur <> 0 THEN 1 + rt_eur_try * w_inf_eur ELSE CASE WHEN r4_code.currency = 'USD' 
  and w_inf_eur <> 0 THEN 1 + rt_eur_usd * w_inf_eur ELSE 1 end END as k_eur, 
  r4_code.w_inf_usd, 
  r4_code.w_inf_eur, 
  r4_code.currency as curr, 
  q_cb_mod_active_months_res_qty.key_r4_simple, 
  q_cb_mod_active_months_res_qty.key_full, 
  q_cb_mod_active_months_res_qty.key_r_pc_l6, 
  q_cb_mod_active_months_res_qty.key_r4, 
  key_full || '.' || currency || '.' || q_cb_mod_active_months_res_qty.exp_cb_mon as key_full_comb 
from 
  (
    q_cb_mod_active_months_res_qty 
    left join q_cb_mod_monthly_curr_rates_inc on (
      q_cb_mod_active_months_res_qty.exp_cb_mon = q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
    ) 
    and (
      q_cb_mod_active_months_res_qty.pc = q_cb_mod_monthly_curr_rates_inc.pc
    ) 
    and (
      q_cb_mod_active_months_res_qty.rep_month = q_cb_mod_monthly_curr_rates_inc.rep_month
    )
  ) 
  left join r4_code on q_cb_mod_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple;

--DROP VIEW IF EXISTS q_cb_mod_analysis_activem_with_prices;

CREATE OR REPLACE VIEW q_cb_mod_analysis_activem_with_prices AS
SELECT q_cb_mod_active_months_res_qty.rep_month,
       q_cb_mod_active_months_res_qty.pc,
       q_cb_mod_active_months_res_qty.exp_cb_mon,
       q_cb_mod_active_months_res_qty.an_rs_quantity,
       q_cb_mod_active_months_res_qty.key_r4,
       q_cb_mod_active_months_res_qty.key_r_pc_l6,
       q_cb_mod_active_months_res_qty.key_full,
       t_cb_res_up.up_cost,
       q_cb_mod_active_months_res_qty.l_1,
       q_cb_mod_active_months_res_qty.l_2,
       q_cb_mod_active_months_res_qty.l_3,
       q_cb_mod_active_months_res_qty.l_4,
       q_cb_mod_active_months_res_qty.l_5,
       q_cb_mod_active_months_res_qty.l_6,
       q_cb_mod_active_months_res_qty.rs_l1,
       q_cb_mod_active_months_res_qty.rs_l2,
       q_cb_mod_active_months_res_qty.rs_l3,
       q_cb_mod_active_months_res_qty.rs_l4,
       r4_code.currency,
       q_cb_mod_active_months_res_qty.key_r4_simple
FROM   (q_cb_mod_active_months_res_qty
        LEFT JOIN t_cb_res_up
               ON q_cb_mod_active_months_res_qty.key_r4 = t_cb_res_up.key_r4)
       LEFT JOIN r4_code
              ON q_cb_mod_active_months_res_qty.key_r4_simple =
                 r4_code.key_r4_simple; 

DROP VIEW IF EXISTS q_cb_mod_up_pre_coeff_activem_indexes cascade;
If motor_type = 'motor_one'::text 
THEN RAISE NOTICE 'Using Motor One';
CREATE OR REPLACE VIEW q_cb_mod_up_pre_coeff_activem_indexes AS

SELECT q_cb_mod_analysis_activem_with_prices.rep_month,
       q_cb_mod_analysis_activem_with_prices.pc,
       q_cb_mod_analysis_activem_with_prices.l_1,
       q_cb_mod_analysis_activem_with_prices.l_2,
       q_cb_mod_analysis_activem_with_prices.l_3,
       q_cb_mod_analysis_activem_with_prices.l_4,
       q_cb_mod_analysis_activem_with_prices.l_5,
       q_cb_mod_analysis_activem_with_prices.l_6,
       q_cb_mod_analysis_activem_with_prices.exp_cb_mon,
       q_cb_mod_analysis_activem_with_prices.rs_l1,
       q_cb_mod_analysis_activem_with_prices.rs_l2,
       q_cb_mod_analysis_activem_with_prices.rs_l3,
       q_cb_mod_analysis_activem_with_prices.rs_l4,
       t_cb_mod_indexes.user_id,
       t_cb_mod_indexes.session_id,
       t_cb_mod_indexes.bb_ufe,
       t_cb_mod_indexes.bb_tufe,
       t_cb_mod_indexes.bb_inf_usd,
       t_cb_mod_indexes.bb_inf_eur,
       t_cb_mod_indexes.bb_metal,
       t_cb_mod_indexes.bb_petrol,
       t_cb_mod_indexes.bb_cement,
       t_cb_mod_indexes.bb_electricity,
       q_cb_mod_analysis_activem_with_prices.currency AS curr,
       q_cb_mod_analysis_activem_with_prices.an_rs_quantity,
       q_cb_mod_analysis_activem_with_prices.up_cost,
       q_cb_mod_analysis_activem_with_prices.key_r4_simple,
       q_cb_mod_analysis_activem_with_prices.key_r4,
       q_cb_mod_analysis_activem_with_prices.key_r_pc_l6,
       q_cb_mod_analysis_activem_with_prices.key_full
FROM   q_cb_mod_analysis_activem_with_prices
       LEFT JOIN t_cb_mod_indexes
              ON ( q_cb_mod_analysis_activem_with_prices.exp_cb_mon =
                   t_cb_mod_indexes.month )
                 AND ( q_cb_mod_analysis_activem_with_prices.rep_month =
                       t_cb_mod_indexes.rep_month ); 

-- View: q_cb_mod_res_up_market_coeff

DROP VIEW IF EXISTS q_cb_mod_res_up_market_coeff;

CREATE OR REPLACE VIEW q_cb_mod_res_up_market_coeff AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.user_id,
    q_cb_mod_up_pre_coeff_activem_indexes.session_id,
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l1,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l2,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l3,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l4 ,
    (1::numeric + r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS "month",
    q_cb_mod_up_pre_coeff_activem_indexes.up_cost,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
    q_cb_mod_up_pre_coeff_activem_indexes.curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_cb_mod_up_pre_coeff_activem_indexes.key_full,
    (((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS key_full_comb
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_cb_mod_up_pre_coeff_activem_indexes.session_id, q_cb_mod_up_pre_coeff_activem_indexes.user_id, q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)), q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_mod_up_pre_coeff_activem_indexes.up_cost, q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity, q_cb_mod_up_pre_coeff_activem_indexes.curr, q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_mod_up_pre_coeff_activem_indexes.key_r4, q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_mod_up_pre_coeff_activem_indexes.key_full, ((((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon)
  ORDER BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon;

-- View: q_cb_mod_up_coeff

DROP VIEW IF EXISTS q_cb_mod_up_coeff;

CREATE OR REPLACE VIEW q_cb_mod_up_coeff AS
SELECT q_cb_mod_res_up_market_coeff.rep_month
	,q_cb_mod_res_up_market_coeff.user_id
	,q_cb_mod_res_up_market_coeff.session_id
	,q_cb_mod_res_up_market_coeff.pc
	,q_cb_mod_res_up_market_coeff.l_1
	,q_cb_mod_res_up_market_coeff.l_2
	,q_cb_mod_res_up_market_coeff.l_3
	,q_cb_mod_res_up_market_coeff.l_4
	,q_cb_mod_res_up_market_coeff.l_5
	,q_cb_mod_res_up_market_coeff.l_6
	,q_cb_mod_res_up_market_coeff.rs_l1
	,q_cb_mod_res_up_market_coeff.rs_l2
	,q_cb_mod_res_up_market_coeff.rs_l3
	,q_cb_mod_res_up_market_coeff.rs_l4
	,q_cb_mod_res_up_market_coeff.Month
	,q_cb_mod_res_up_market_coeff.up_cost_coeff
	,q_cb_mod_curr_escalation_rates.k_usd
	,q_cb_mod_curr_escalation_rates.k_eur
	,up_cost_coeff*q_cb_mod_curr_escalation_rates.k_usd*q_cb_mod_curr_escalation_rates.k_eur AS up_cost_coeff_all
	,q_cb_mod_res_up_market_coeff.up_cost
	,q_cb_mod_res_up_market_coeff.curr
	,q_cb_mod_res_up_market_coeff.key_full
	,q_cb_mod_res_up_market_coeff.an_rs_quantity
	,q_cb_mod_res_up_market_coeff.key_r_pc_l6 
FROM q_cb_mod_res_up_market_coeff
	LEFT JOIN q_cb_mod_curr_escalation_rates ON (q_cb_mod_res_up_market_coeff.key_full_comb = q_cb_mod_curr_escalation_rates.key_full_comb) 
	AND (q_cb_mod_res_up_market_coeff.session_id = q_cb_mod_curr_escalation_rates.session_id) 
	AND (q_cb_mod_res_up_market_coeff.user_id = q_cb_mod_curr_escalation_rates.user_id) 
GROUP BY q_cb_mod_res_up_market_coeff.rep_month
	,q_cb_mod_res_up_market_coeff.user_id
	,q_cb_mod_res_up_market_coeff.session_id
	,q_cb_mod_res_up_market_coeff.pc
	,q_cb_mod_res_up_market_coeff.l_1
	,q_cb_mod_res_up_market_coeff.l_2
	,q_cb_mod_res_up_market_coeff.l_3
	,q_cb_mod_res_up_market_coeff.l_4
	,q_cb_mod_res_up_market_coeff.l_5
	,q_cb_mod_res_up_market_coeff.l_6
	,q_cb_mod_res_up_market_coeff.rs_l1
	,q_cb_mod_res_up_market_coeff.rs_l2
	,q_cb_mod_res_up_market_coeff.rs_l3
	,q_cb_mod_res_up_market_coeff.rs_l4
	,q_cb_mod_res_up_market_coeff.Month
	,q_cb_mod_res_up_market_coeff.up_cost_coeff
	,q_cb_mod_curr_escalation_rates.k_usd
	,q_cb_mod_curr_escalation_rates.k_eur
	,up_cost_coeff*q_cb_mod_curr_escalation_rates.k_usd*q_cb_mod_curr_escalation_rates.k_eur
	,q_cb_mod_res_up_market_coeff.up_cost
	,q_cb_mod_res_up_market_coeff.curr
	,q_cb_mod_res_up_market_coeff.key_full
	,q_cb_mod_res_up_market_coeff.an_rs_quantity
	,q_cb_mod_res_up_market_coeff.key_r_pc_l6;
-- View: q_cb_mod_unit_price

DROP VIEW IF EXISTS q_cb_mod_unit_price cascade;

CREATE OR REPLACE VIEW q_cb_mod_unit_price AS
 SELECT q_cb_mod_up_coeff.rep_month,
 	q_cb_mod_up_coeff.user_id,
	q_cb_mod_up_coeff.session_id,
    q_cb_mod_up_coeff.pc,
    q_cb_mod_up_coeff.l_1,
    q_cb_mod_up_coeff.l_2,
    q_cb_mod_up_coeff.l_3,
    q_cb_mod_up_coeff.l_4,
    q_cb_mod_up_coeff.l_5,
    q_cb_mod_up_coeff.l_6,
    q_cb_mod_up_coeff.month,
    q_cb_mod_up_coeff.curr,
    sum(q_cb_mod_up_coeff.up_cost * q_cb_mod_up_coeff.an_rs_quantity * q_cb_mod_up_coeff.up_cost_coeff_all) AS unit_price_planned_coeff,
    q_cb_mod_up_coeff.key_r_pc_l6
   FROM q_cb_mod_up_coeff
  GROUP BY q_cb_mod_up_coeff.session_id,q_cb_mod_up_coeff.user_id,q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month, q_cb_mod_up_coeff.curr, q_cb_mod_up_coeff.key_r_pc_l6
  ORDER BY q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month;

ELSE RAISE NOTICE 'Using Motor Two';

DROP VIEW IF EXISTS q_cb_mod_indexes_and_curr CASCADE;

CREATE OR REPLACE VIEW q_cb_mod_indexes_and_curr
 AS
SELECT q_cb_mod_monthly_curr_rates_inc.rep_month
	,q_cb_mod_monthly_curr_rates_inc.user_id
	,q_cb_mod_monthly_curr_rates_inc.session_id
	,q_cb_mod_monthly_curr_rates_inc.pc
	,q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_try
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_usd
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_try
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_eur
	,t_cb_mod_indexes.bb_ufe
	,t_cb_mod_indexes.bb_tufe
	,t_cb_mod_indexes.bb_inf_usd
	,t_cb_mod_indexes.bb_inf_eur
	,t_cb_mod_indexes.bb_metal
	,t_cb_mod_indexes.bb_petrol
	,t_cb_mod_indexes.bb_cement
	,t_cb_mod_indexes.bb_electricity 
FROM q_cb_mod_monthly_curr_rates_inc
	LEFT JOIN t_cb_mod_indexes ON (q_cb_mod_monthly_curr_rates_inc.exp_cb_mon = t_cb_mod_indexes.month) 
	AND (q_cb_mod_monthly_curr_rates_inc.session_id = t_cb_mod_indexes.session_id) 
	AND (q_cb_mod_monthly_curr_rates_inc.user_id = t_cb_mod_indexes.user_id) 
	AND (q_cb_mod_monthly_curr_rates_inc.rep_month = t_cb_mod_indexes.rep_month) 
GROUP BY q_cb_mod_monthly_curr_rates_inc.rep_month
	,q_cb_mod_monthly_curr_rates_inc.user_id
	,q_cb_mod_monthly_curr_rates_inc.session_id
	,q_cb_mod_monthly_curr_rates_inc.pc
	,q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_try
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_usd
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_try
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_eur
	,t_cb_mod_indexes.bb_ufe
	,t_cb_mod_indexes.bb_tufe
	,t_cb_mod_indexes.bb_inf_usd
	,t_cb_mod_indexes.bb_inf_eur
	,t_cb_mod_indexes.bb_metal
	,t_cb_mod_indexes.bb_petrol
	,t_cb_mod_indexes.bb_cement
	,t_cb_mod_indexes.bb_electricity;

DROP VIEW IF EXISTS q_cb_mod_up_pre_coeff_activem_indexes CASCADE;

CREATE OR REPLACE VIEW q_cb_mod_up_pre_coeff_activem_indexes AS
SELECT q_cb_mod_analysis_activem_with_prices.rep_month
	,q_cb_mod_indexes_and_curr.user_id
	,q_cb_mod_indexes_and_curr.session_id
	,q_cb_mod_analysis_activem_with_prices.pc
	,q_cb_mod_analysis_activem_with_prices.l_1
	,q_cb_mod_analysis_activem_with_prices.l_2
	,q_cb_mod_analysis_activem_with_prices.l_3
	,q_cb_mod_analysis_activem_with_prices.l_4
	,q_cb_mod_analysis_activem_with_prices.l_5
	,q_cb_mod_analysis_activem_with_prices.l_6
	,q_cb_mod_indexes_and_curr.rt_eur_try
	,q_cb_mod_indexes_and_curr.rt_eur_usd
	,q_cb_mod_indexes_and_curr.rt_usd_try
	,q_cb_mod_indexes_and_curr.rt_usd_eur
	,q_cb_mod_analysis_activem_with_prices.exp_cb_mon
	,q_cb_mod_analysis_activem_with_prices.rs_l1
	,q_cb_mod_analysis_activem_with_prices.rs_l2
	,q_cb_mod_analysis_activem_with_prices.rs_l3
	,q_cb_mod_analysis_activem_with_prices.rs_l4
	,q_cb_mod_indexes_and_curr.bb_ufe
	,q_cb_mod_indexes_and_curr.bb_tufe
	,q_cb_mod_indexes_and_curr.bb_inf_usd
	,q_cb_mod_indexes_and_curr.bb_inf_eur
	,q_cb_mod_indexes_and_curr.bb_metal
	,q_cb_mod_indexes_and_curr.bb_petrol
	,q_cb_mod_indexes_and_curr.bb_cement
	,q_cb_mod_indexes_and_curr.bb_electricity
	,q_cb_mod_analysis_activem_with_prices.currency AS curr
	,q_cb_mod_analysis_activem_with_prices.an_rs_quantity
	,q_cb_mod_analysis_activem_with_prices.up_cost
	,q_cb_mod_analysis_activem_with_prices.key_r4_simple
	,q_cb_mod_analysis_activem_with_prices.key_r4
	,q_cb_mod_analysis_activem_with_prices.key_r_pc_l6
	,q_cb_mod_analysis_activem_with_prices.key_full 
FROM q_cb_mod_analysis_activem_with_prices
	LEFT JOIN q_cb_mod_indexes_and_curr ON (q_cb_mod_analysis_activem_with_prices.pc = q_cb_mod_indexes_and_curr.pc) 
	AND (q_cb_mod_analysis_activem_with_prices.exp_cb_mon = q_cb_mod_indexes_and_curr.exp_cb_mon) 
	AND (q_cb_mod_analysis_activem_with_prices.rep_month = q_cb_mod_indexes_and_curr.rep_month);

DROP VIEW IF EXISTS q_cb_mod_res_up_market_coeff;

CREATE OR REPLACE VIEW q_cb_mod_res_up_market_coeff
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.user_id,
    q_cb_mod_up_pre_coeff_activem_indexes.session_id,
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l1,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l2,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l3,
    q_cb_mod_up_pre_coeff_activem_indexes.rs_l4 ,
    (1::numeric + r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS "month",
    q_cb_mod_up_pre_coeff_activem_indexes.up_cost,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
    r4_code.currency as curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r4,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_cb_mod_up_pre_coeff_activem_indexes.key_full,
    (((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS key_full_comb
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_cb_mod_up_pre_coeff_activem_indexes.user_id,q_cb_mod_up_pre_coeff_activem_indexes.session_id,q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)), q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_mod_up_pre_coeff_activem_indexes.up_cost, q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_mod_up_pre_coeff_activem_indexes.key_r4, q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_mod_up_pre_coeff_activem_indexes.key_full, ((((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon)
  ORDER BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon;

if motor_market_status = 'ON'
Then

-- View: public.q_cb_mod_unit_price_pre

DROP VIEW IF EXISTS public.q_cb_mod_unit_price_pre CASCADE;

CREATE OR REPLACE VIEW q_cb_mod_unit_price_pre
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.user_id,
    q_cb_mod_up_pre_coeff_activem_indexes.session_id,   
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_mod_up_pre_coeff_activem_indexes.curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END AS cost_market_end_rate_change,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text
     LEFT JOIN t_cb_exp_esc_rates_l6 ON q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_exp_esc_rates_l6.month AND q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_exp_esc_rates_l6.key_r_pc_l6::text;

ELSE

-- View: public.q_cb_mod_unit_price_pre

DROP VIEW IF EXISTS public.q_cb_mod_unit_price_pre;

CREATE OR REPLACE VIEW q_cb_mod_unit_price_pre
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
    q_cb_mod_up_pre_coeff_activem_indexes.user_id,
    q_cb_mod_up_pre_coeff_activem_indexes.session_id,   
    q_cb_mod_up_pre_coeff_activem_indexes.pc,
    q_cb_mod_up_pre_coeff_activem_indexes.l_1,
    q_cb_mod_up_pre_coeff_activem_indexes.l_2,
    q_cb_mod_up_pre_coeff_activem_indexes.l_3,
    q_cb_mod_up_pre_coeff_activem_indexes.l_4,
    q_cb_mod_up_pre_coeff_activem_indexes.l_5,
    q_cb_mod_up_pre_coeff_activem_indexes.l_6,
    q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_mod_up_pre_coeff_activem_indexes.curr,
    q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity,
        CASE
            WHEN t_cb_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text
     LEFT JOIN t_cb_exp_esc_rates_l6 ON q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_exp_esc_rates_l6.month AND q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_exp_esc_rates_l6.key_r_pc_l6::text;

end if;

DROP VIEW IF EXISTS q_cb_mod_unit_price CASCADE;
CREATE OR REPLACE VIEW q_cb_mod_unit_price
 AS
SELECT q_cb_mod_unit_price_pre.rep_month,
       q_cb_mod_unit_price_pre.user_id,
       q_cb_mod_unit_price_pre.session_id,   
       q_cb_mod_unit_price_pre.pc,
       q_cb_mod_unit_price_pre.l_1,
       q_cb_mod_unit_price_pre.l_2,
       q_cb_mod_unit_price_pre.l_3,
       q_cb_mod_unit_price_pre.l_4,
       q_cb_mod_unit_price_pre.l_5,
       q_cb_mod_unit_price_pre.l_6,
       q_cb_mod_unit_price_pre.month,
       q_cb_mod_unit_price_pre.curr,
       SUM((up_cost_total) * (an_rs_quantity)) AS unit_price_planned_coeff,
       q_cb_mod_unit_price_pre.key_r_pc_l6
FROM   q_cb_mod_unit_price_pre
GROUP  BY q_cb_mod_unit_price_pre.rep_month,
          q_cb_mod_unit_price_pre.user_id,
          q_cb_mod_unit_price_pre.session_id,   
          q_cb_mod_unit_price_pre.pc,
          q_cb_mod_unit_price_pre.l_1,
          q_cb_mod_unit_price_pre.l_2,
          q_cb_mod_unit_price_pre.l_3,
          q_cb_mod_unit_price_pre.l_4,
          q_cb_mod_unit_price_pre.l_5,
          q_cb_mod_unit_price_pre.l_6,
          q_cb_mod_unit_price_pre.month,
          q_cb_mod_unit_price_pre.curr,
          q_cb_mod_unit_price_pre.key_r_pc_l6
ORDER  BY q_cb_mod_unit_price_pre.rep_month,
          q_cb_mod_unit_price_pre.pc,
          q_cb_mod_unit_price_pre.l_1,
          q_cb_mod_unit_price_pre.l_2,
          q_cb_mod_unit_price_pre.l_3,
          q_cb_mod_unit_price_pre.l_4,
          q_cb_mod_unit_price_pre.l_5,
          q_cb_mod_unit_price_pre.l_6,
          q_cb_mod_unit_price_pre.month; 

End IF;

-- View: q_pl_mod_exp

--DROP VIEW IF EXISTS q_pl_mod_exp CASCADE;

CREATE OR REPLACE VIEW q_pl_mod_exp
 AS
 SELECT q_cb_mod_unit_price.rep_month,
    q_cb_mod_unit_price.user_id,
    q_cb_mod_unit_price.session_id,   
    q_cb_mod_unit_price.pc,
    q_cb_mod_unit_price.l_1,
    q_cb_mod_unit_price.l_2,
    q_cb_mod_unit_price.l_3,
    q_cb_mod_unit_price.l_4,
    q_cb_mod_unit_price.l_5,
    q_cb_mod_unit_price.l_6,
    q_cb_mod_unit_price.month,
    sum(t_cb_qty.exp_cb_qty * q_cb_mod_unit_price.unit_price_planned_coeff) AS total_expense,
    q_cb_mod_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_mod_unit_price
     LEFT JOIN t_cb_qty ON q_cb_mod_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_mod_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY         q_cb_mod_unit_price.session_id,  q_cb_mod_unit_price.user_id,q_cb_mod_unit_price.rep_month, q_cb_mod_unit_price.pc, q_cb_mod_unit_price.l_1, q_cb_mod_unit_price.l_2, q_cb_mod_unit_price.l_3, q_cb_mod_unit_price.l_4, q_cb_mod_unit_price.l_5, q_cb_mod_unit_price.l_6, q_cb_mod_unit_price.month, q_cb_mod_unit_price.curr, t_cb_qty.key_r_pc_l6;

ALTER TABLE q_pl_mod_exp
    OWNER TO ictasadmin;

--DROP VIEW IF EXISTS q_cb_mod_exp;
CREATE OR REPLACE VIEW q_cb_mod_exp AS

SELECT 
rep_month,
user_id,
session_id,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
total_expense,
curr,
key_r_pc_l6

FROM 
q_pl_mod_exp
		
Where total_expense <>0

UNION 

ALL SELECT 
rep_month,
user_id,
session_id,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
exp_ac_mon,
exp_ac_exp,
curr,
key_r_pc_l6

	FROM 
		t_ac_mod_exp;

END
$BODY$;

ALTER FUNCTION public.q_cb_mod_create_budget_system(text, text)
    OWNER TO ictasadmin;
