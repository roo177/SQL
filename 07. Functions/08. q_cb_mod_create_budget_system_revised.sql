-- FUNCTION: q_cb_mod_create_budget_system()

DROP FUNCTION IF EXISTS q_cb_mod_create_budget_system();

CREATE OR REPLACE FUNCTION q_cb_mod_create_budget_system(motor_type text
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

if motor_type = 'motor_one'::text 
THEN RAISE NOTICE 'Using Motor One: Agirliklar Serbest';
ELSE RAISE NOTICE 'Using Motor Two: Agirliklar 1 Uzerinden';
end if;

DROP TABLE IF EXISTS temp_r4_code CASCADE;
CREATE TEMPORARY TABLE IF NOT EXISTS temp_r4_code
(
    r_1_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_2_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_3_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_4_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    unit character varying(25) COLLATE pg_catalog."default",
    r_4_desc_en character varying(160) COLLATE pg_catalog."default",
    r_4_desc_tr character varying(160) COLLATE pg_catalog."default",
    w_ufe numeric(7,5),
    w_tufe numeric(7,5),
    w_inf_usd numeric(7,5),
    w_inf_eur numeric(7,5),
    w_metal numeric(7,5),
    w_petrol numeric(7,5),
    w_cement numeric(7,5),
    w_electricity numeric(7,5),
    currency character varying(3) COLLATE pg_catalog."default",
    administration character varying(50) COLLATE pg_catalog."default",
    admin_id character varying(50) COLLATE pg_catalog."default",
    r_loss numeric(7,5) DEFAULT 0,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((r_1_code)::text || '.'::text) || (r_2_code)::text) || '.'::text) || (r_3_code)::text) || '.'::text) || (r_4_code)::text)) STORED
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS temp_r4_code
    OWNER to ictasadmin;

INSERT INTO temp_r4_code (r_1_code, r_2_code, r_3_code, r_4_code, unit, r_4_desc_en, r_4_desc_tr, w_ufe, w_tufe, w_inf_usd, w_inf_eur, w_metal, w_petrol, w_cement,w_electricity,
currency,administration,admin_id,r_loss)
SELECT 
r_1_code, r_2_code, r_3_code, r_4_code, unit, r_4_desc_en, r_4_desc_tr, w_ufe, w_tufe, w_inf_usd, w_inf_eur, w_metal, w_petrol, w_cement,w_electricity,
currency,administration,admin_id,r_loss
from r4_code;

DROP TABLE IF EXISTS t_cb_mod_mon_curr_rates CASCADE;
CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_mon_curr_rates
(
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
    r_try_usd numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_usd_try)) STORED
)
;

INSERT INTO t_cb_mod_mon_curr_rates (rep_month, month, r_eur_try, r_usd_try)

SELECT 
rep_month, 
"month",
r_eur_try,
r_usd_try
from mon_curr_rates 
where rep_month = (SELECT MAX(rep_month) from t_rep_month);

DROP TABLE IF EXISTS t_cb_mod_analysis CASCADE;
CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_analysis
(
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    an_rs_quantity numeric(18,9),
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    r_loss numeric(7,5) DEFAULT 0,
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rs_l1)::text || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_r4 character varying(25) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_full character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    l_comb character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1)::text || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED
)
;

INSERT INTO t_cb_mod_analysis (pc, rs_l1, rs_l2, rs_l3, rs_l4, an_rs_quantity, l_1, l_2, l_3, l_4, l_5, l_6, rep_month, r_loss)

SELECT 
pc, rs_l1, rs_l2, rs_l3, rs_l4, an_rs_quantity, l_1, l_2, l_3, l_4, l_5, l_6, rep_month, r_loss
from t_cb_analysis
where rep_month = (SELECT MAX(rep_month) from t_rep_month);

DROP TABLE IF EXISTS t_cb_mod_res_up CASCADE; 
    CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_res_up
    (
        rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
        pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
        rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
        rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
        rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
        rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
        up_cost numeric(18,4),
        key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rs_l1)::text || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
        key_r4 character varying(25) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED

    )

    ;

    INSERT INTO t_cb_mod_res_up (rep_month, pc, rs_l1, rs_l2, rs_l3, rs_l4, up_cost)

    SELECT 
    rep_month, pc, rs_l1, rs_l2, rs_l3, rs_l4, up_cost
    from t_cb_res_up
    where rep_month = (SELECT MAX(rep_month) from t_rep_month);


DROP TABLE IF EXISTS t_cb_mod_indexes CASCADE;
CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_indexes
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    bb_metal numeric(18,10),
    bb_electricity numeric(18,10),
    bb_cement numeric(18,10),
    bb_petrol numeric(18,10),
    bb_inf_usd numeric(18,10),
    bb_inf_eur numeric(18,10),
    bb_ufe numeric(18,10),
    bb_tufe numeric(18,10)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS t_cb_mod_indexes
    OWNER to ictasadmin;

INSERT INTO t_cb_mod_indexes (rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe)

SELECT 
rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe
from t_cb_indexes
where rep_month = (SELECT MAX(rep_month) from t_rep_month);


DROP TABLE IF EXISTS t_cb_mod_exp_esc_rates_l6 CASCADE;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_exp_esc_rates_l6
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    exp_rate numeric(18,9),
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED

);

INSERT INTO t_cb_mod_exp_esc_rates_l6 (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, month, exp_rate)
SELECT 
rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, month, exp_rate
from t_cb_exp_esc_rates_l6
where rep_month = (SELECT MAX(rep_month) from t_rep_month);

DROP VIEW IF EXISTS q_cb_mod_qty_activem_works_monthly CASCADE;

CREATE TEMPORARY VIEW q_cb_mod_qty_activem_works_monthly AS

select 
t_cb_qty.rep_month, 
t_cb_qty.pc, 
t_cb_qty.exp_cb_mon
from t_cb_qty left join t_rep_month on t_cb_qty.rep_month = t_rep_month.rep_month
where (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) and ((t_cb_qty.exp_cb_qty)<>0))
group by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
having (((t_cb_qty.rep_month)= (SELECT Max(rep_month) from t_rep_month)))
order by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;

DROP VIEW IF EXISTS q_cb_mod_qty_activem_works CASCADE;

CREATE TEMPORARY VIEW q_cb_mod_qty_activem_works AS

select t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon
from t_cb_qty left join t_rep_month on t_cb_qty.rep_month = t_rep_month.rep_month
where (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) and ((t_cb_qty.exp_cb_qty)<>0) and ((t_cb_qty.rep_month)=(SELECT Max(rep_month) from t_rep_month)))
order by t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon;

DROP VIEW IF EXISTS q_cb_active_months_res_qty_mod_pre CASCADE;

CREATE TEMPORARY VIEW q_cb_active_months_res_qty_mod_pre AS
SELECT t_cb_mod_analysis.rep_month,
       t_cb_mod_analysis.pc,
       q_cb_qty_activem_works.exp_cb_mon,
       t_cb_mod_analysis.key_r4,
       q_cb_qty_activem_works.key_r_pc_l6,
       t_cb_mod_analysis.key_full,
       t_cb_mod_analysis.l_1,
       t_cb_mod_analysis.l_2,
       t_cb_mod_analysis.l_3,
       t_cb_mod_analysis.rs_l1,
       t_cb_mod_analysis.rs_l2,
       t_cb_mod_analysis.rs_l3,
       t_cb_mod_analysis.rs_l4,
       t_cb_mod_analysis.l_4,
       t_cb_mod_analysis.l_5,
       t_cb_mod_analysis.l_6,
       t_cb_mod_analysis.key_r4_simple,
       ( 1 + (r_loss) ) * ( (t_cb_mod_analysis).an_rs_quantity ) AS an_rs_quantity,
       t_cb_mod_analysis.r_loss
FROM   q_cb_qty_activem_works
       LEFT JOIN t_cb_mod_analysis
              ON q_cb_qty_activem_works.key_r_pc_l6 = t_cb_mod_analysis.key_r_pc_l6
              where ((t_cb_mod_analysis.rep_month)=(SELECT Max(rep_month) from t_rep_month));


DROP VIEW IF EXISTS q_cb_mod_active_months_res_qty;
CREATE TEMPORARY VIEW q_cb_mod_active_months_res_qty AS

select q_cb_active_months_res_qty_mod_pre.rep_month,
       q_cb_active_months_res_qty_mod_pre.pc,
       q_cb_active_months_res_qty_mod_pre.l_1,
       q_cb_active_months_res_qty_mod_pre.l_2,
       q_cb_active_months_res_qty_mod_pre.l_3,
       q_cb_active_months_res_qty_mod_pre.l_4,
       q_cb_active_months_res_qty_mod_pre.l_5,
       q_cb_active_months_res_qty_mod_pre.l_6,
       q_cb_active_months_res_qty_mod_pre.exp_cb_mon,
       q_cb_active_months_res_qty_mod_pre.rs_l1,
       q_cb_active_months_res_qty_mod_pre.rs_l2,
       q_cb_active_months_res_qty_mod_pre.rs_l3,
       q_cb_active_months_res_qty_mod_pre.rs_l4,
       q_cb_active_months_res_qty_mod_pre.an_rs_quantity,
       temp_r4_code.currency as curr,
       temp_r4_code.w_inf_usd,
       temp_r4_code.w_inf_eur,
       q_cb_active_months_res_qty_mod_pre.key_r4,
       q_cb_active_months_res_qty_mod_pre.key_r_pc_l6,
       q_cb_active_months_res_qty_mod_pre.key_full,
       q_cb_active_months_res_qty_mod_pre.key_r4_simple
from   q_cb_active_months_res_qty_mod_pre
       left join temp_r4_code
              on q_cb_active_months_res_qty_mod_pre.key_r4_simple =
                 temp_r4_code.key_r4_simple;


DROP VIEW IF EXISTS q_cb_mod_curr_base_month;

CREATE TEMPORARY VIEW q_cb_mod_curr_base_month AS
SELECT 
q_budget_project_months.pc, 
t_rep_month.rep_month_date, 
q_budget_project_months.rep_month
FROM t_rep_month 
right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
Where q_budget_project_months.rep_month = (SELECT MAX(rep_month) from t_rep_month)
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

DROP VIEW IF EXISTS q_cb_mod_curr_base_val;

CREATE TEMPORARY VIEW q_cb_mod_curr_base_val AS
select 
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
from q_cb_mod_curr_base_month left join t_cb_mod_mon_curr_rates on q_cb_mod_curr_base_month.rep_month_date = t_cb_mod_mon_curr_rates.month
group by q_cb_mod_curr_base_month.rep_month_date, t_cb_mod_mon_curr_rates.r_eur_eur, t_cb_mod_mon_curr_rates.r_eur_try, t_cb_mod_mon_curr_rates.r_eur_usd, t_cb_mod_mon_curr_rates.r_try_eur, t_cb_mod_mon_curr_rates.r_try_try, t_cb_mod_mon_curr_rates.r_try_usd, t_cb_mod_mon_curr_rates.r_usd_eur, t_cb_mod_mon_curr_rates.r_usd_try, t_cb_mod_mon_curr_rates.r_usd_usd, q_cb_mod_curr_base_month.rep_month;

DROP VIEW IF EXISTS q_cb_mod_monthly_curr_rates_activem;

CREATE TEMPORARY VIEW q_cb_mod_monthly_curr_rates_activem AS

SELECT q_cb_mod_active_months_res_qty.rep_month,
       q_cb_mod_active_months_res_qty.pc,
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
       q_cb_mod_active_months_res_qty.exp_cb_mon,
       t_cb_mod_mon_curr_rates.r_eur_try,
       t_cb_mod_mon_curr_rates.r_eur_usd,
       t_cb_mod_mon_curr_rates.r_usd_eur,
       t_cb_mod_mon_curr_rates.r_usd_try,
       temp_r4_code.currency AS curr
FROM   (q_cb_mod_active_months_res_qty
        LEFT JOIN t_cb_mod_mon_curr_rates
               ON q_cb_mod_active_months_res_qty.exp_cb_mon =
                  t_cb_mod_mon_curr_rates.month)
       LEFT JOIN temp_r4_code
              ON q_cb_mod_active_months_res_qty.key_r4_simple =
                 temp_r4_code.key_r4_simple
GROUP  BY q_cb_mod_active_months_res_qty.rep_month,
          q_cb_mod_active_months_res_qty.pc,
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
          q_cb_mod_active_months_res_qty.exp_cb_mon,
          t_cb_mod_mon_curr_rates.r_eur_try,
          t_cb_mod_mon_curr_rates.r_eur_usd,
          t_cb_mod_mon_curr_rates.r_usd_eur,
          t_cb_mod_mon_curr_rates.r_usd_try,
          temp_r4_code.currency; 

DROP VIEW IF EXISTS q_cb_mod_monthly_curr_rates_inc;

CREATE TEMPORARY VIEW q_cb_mod_monthly_curr_rates_inc AS
SELECT
    q_cb_mod_qty_activem_works_monthly.rep_month,
    q_cb_mod_qty_activem_works_monthly.pc,
    q_cb_mod_qty_activem_works_monthly.exp_cb_mon,
q_cb_mod_monthly_curr_rates_activem.r_eur_try /q_cb_mod_curr_base_val.r_eur_try - 1 AS rt_eur_try,
q_cb_mod_monthly_curr_rates_activem.r_eur_usd /q_cb_mod_curr_base_val.r_eur_usd - 1 AS rt_eur_usd,
q_cb_mod_monthly_curr_rates_activem.r_usd_try /q_cb_mod_curr_base_val.r_usd_try - 1 AS rt_usd_try,
q_cb_mod_monthly_curr_rates_activem.r_usd_eur /q_cb_mod_curr_base_val.r_usd_eur - 1 AS rt_usd_eur
FROM (q_cb_mod_qty_activem_works_monthly
    LEFT JOIN q_cb_mod_monthly_curr_rates_activem ON (q_cb_mod_qty_activem_works_monthly.exp_cb_mon = q_cb_mod_monthly_curr_rates_activem.exp_cb_mon)
        AND (q_cb_mod_qty_activem_works_monthly.rep_month = q_cb_mod_monthly_curr_rates_activem.rep_month))
    LEFT JOIN q_cb_mod_curr_base_val ON q_cb_mod_qty_activem_works_monthly.rep_month = q_cb_mod_curr_base_val.rep_month
GROUP BY
    q_cb_mod_qty_activem_works_monthly.rep_month,
    q_cb_mod_qty_activem_works_monthly.pc,
    q_cb_mod_qty_activem_works_monthly.exp_cb_mon,
q_cb_mod_monthly_curr_rates_activem.r_eur_try /q_cb_mod_curr_base_val.r_eur_try - 1,
q_cb_mod_monthly_curr_rates_activem.r_eur_usd /q_cb_mod_curr_base_val.r_eur_usd - 1,
q_cb_mod_monthly_curr_rates_activem.r_usd_try /q_cb_mod_curr_base_val.r_usd_try - 1,
q_cb_mod_monthly_curr_rates_activem.r_usd_eur /q_cb_mod_curr_base_val.r_usd_eur - 1;

DROP VIEW IF EXISTS q_cb_mod_curr_escalation_rates;
CREATE TEMPORARY VIEW q_cb_mod_curr_escalation_rates AS 
select 
  q_cb_mod_active_months_res_qty.rep_month, 
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
  CASE WHEN temp_r4_code.currency = 'TRY' 
  and temp_r4_code.w_inf_usd <> 0 THEN 1 + rt_usd_try * temp_r4_code.w_inf_usd ELSE CASE WHEN temp_r4_code.currency = 'EUR' 
  and temp_r4_code.w_inf_usd <> 0 THEN 1 + rt_usd_eur * temp_r4_code.w_inf_usd ELSE 1 end end as k_usd, 
  CASE WHEN temp_r4_code.currency = 'TRY' 
  and temp_r4_code.w_inf_eur <> 0 THEN 1 + rt_eur_try * temp_r4_code.w_inf_eur ELSE CASE WHEN temp_r4_code.currency = 'USD' 
  and temp_r4_code.w_inf_eur <> 0 THEN 1 + rt_eur_usd * temp_r4_code.w_inf_eur ELSE 1 end END as k_eur, 
  temp_r4_code.w_inf_usd, 
  temp_r4_code.w_inf_eur, 
  temp_r4_code.currency as curr, 
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
  left join temp_r4_code on q_cb_mod_active_months_res_qty.key_r4_simple = temp_r4_code.key_r4_simple;

DROP VIEW IF EXISTS 
q_cb_mod_analysis_activem_with_prices CASCADE;

CREATE TEMPORARY VIEW q_cb_mod_analysis_activem_with_prices AS
SELECT q_cb_mod_active_months_res_qty.rep_month,
       q_cb_mod_active_months_res_qty.pc,
       q_cb_mod_active_months_res_qty.exp_cb_mon,
       q_cb_mod_active_months_res_qty.an_rs_quantity,
       q_cb_mod_active_months_res_qty.key_r4,
       q_cb_mod_active_months_res_qty.key_r_pc_l6,
       q_cb_mod_active_months_res_qty.key_full,
       t_cb_mod_res_up.up_cost,
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
       temp_r4_code.currency as curr,
       q_cb_mod_active_months_res_qty.key_r4_simple
FROM   (q_cb_mod_active_months_res_qty
        LEFT JOIN t_cb_mod_res_up
               ON q_cb_mod_active_months_res_qty.key_r4 = t_cb_mod_res_up.key_r4)
       LEFT JOIN temp_r4_code
              ON q_cb_mod_active_months_res_qty.key_r4_simple =
                 temp_r4_code.key_r4_simple; 

DROP VIEW IF EXISTS q_cb_mod_up_pre_coeff_activem_indexes CASCADE;

If motor_type = 'motor_one'::text 

THEN RAISE NOTICE 'Using Motor One';
CREATE TEMPORARY VIEW q_cb_mod_up_pre_coeff_activem_indexes AS

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
       t_cb_mod_indexes.bb_ufe,
       t_cb_mod_indexes.bb_tufe,
       t_cb_mod_indexes.bb_inf_usd,
       t_cb_mod_indexes.bb_inf_eur,
       t_cb_mod_indexes.bb_metal,
       t_cb_mod_indexes.bb_petrol,
       t_cb_mod_indexes.bb_cement,
       t_cb_mod_indexes.bb_electricity,
       q_cb_mod_analysis_activem_with_prices.curr,
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

CREATE TEMPORARY VIEW q_cb_mod_res_up_market_coeff AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
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
    (1::numeric + temp_r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + temp_r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + temp_r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + temp_r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + temp_r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + temp_r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + temp_r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + temp_r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity) AS up_cost_coeff,
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
     LEFT JOIN temp_r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = temp_r4_code.key_r4_simple::text
  GROUP BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + temp_r4_code.w_ufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) * (1::numeric + temp_r4_code.w_tufe * q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) * (1::numeric + temp_r4_code.w_inf_usd * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + temp_r4_code.w_inf_eur * q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur) * (1::numeric + temp_r4_code.w_metal * q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) * (1::numeric + temp_r4_code.w_petrol * q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) * (1::numeric + temp_r4_code.w_cement * q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) * (1::numeric + temp_r4_code.w_electricity * q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)), q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon, q_cb_mod_up_pre_coeff_activem_indexes.up_cost, q_cb_mod_up_pre_coeff_activem_indexes.an_rs_quantity, q_cb_mod_up_pre_coeff_activem_indexes.curr, q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple, q_cb_mod_up_pre_coeff_activem_indexes.key_r4, q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6, q_cb_mod_up_pre_coeff_activem_indexes.key_full, ((((q_cb_mod_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon)
  ORDER BY q_cb_mod_up_pre_coeff_activem_indexes.rep_month, q_cb_mod_up_pre_coeff_activem_indexes.pc, q_cb_mod_up_pre_coeff_activem_indexes.l_1, q_cb_mod_up_pre_coeff_activem_indexes.l_2, q_cb_mod_up_pre_coeff_activem_indexes.l_3, q_cb_mod_up_pre_coeff_activem_indexes.l_4, q_cb_mod_up_pre_coeff_activem_indexes.l_5, q_cb_mod_up_pre_coeff_activem_indexes.l_6, q_cb_mod_up_pre_coeff_activem_indexes.rs_l1, q_cb_mod_up_pre_coeff_activem_indexes.rs_l2, q_cb_mod_up_pre_coeff_activem_indexes.rs_l3, q_cb_mod_up_pre_coeff_activem_indexes.rs_l4, q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon;

-- View: q_cb_mod_up_coeff

DROP VIEW IF EXISTS q_cb_mod_up_coeff;

CREATE TEMPORARY VIEW q_cb_mod_up_coeff AS
 SELECT q_cb_mod_res_up_market_coeff.rep_month,
    q_cb_mod_res_up_market_coeff.pc,
    q_cb_mod_res_up_market_coeff.l_1,
    q_cb_mod_res_up_market_coeff.l_2,
    q_cb_mod_res_up_market_coeff.l_3,
    q_cb_mod_res_up_market_coeff.l_4,
    q_cb_mod_res_up_market_coeff.l_5,
    q_cb_mod_res_up_market_coeff.l_6,
    q_cb_mod_res_up_market_coeff.rs_l1,
    q_cb_mod_res_up_market_coeff.rs_l2,
    q_cb_mod_res_up_market_coeff.rs_l3,
    q_cb_mod_res_up_market_coeff.rs_l4,
    q_cb_mod_res_up_market_coeff.month,
    q_cb_mod_res_up_market_coeff.up_cost_coeff,
    q_cb_mod_curr_escalation_rates.k_usd,
    q_cb_mod_curr_escalation_rates.k_eur,
    q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur AS up_cost_coeff_all,
    q_cb_mod_res_up_market_coeff.up_cost,
    q_cb_mod_res_up_market_coeff.curr,
    q_cb_mod_res_up_market_coeff.key_full,
    q_cb_mod_res_up_market_coeff.an_rs_quantity,
    q_cb_mod_res_up_market_coeff.key_r_pc_l6
   FROM q_cb_mod_res_up_market_coeff
     LEFT JOIN q_cb_mod_curr_escalation_rates ON q_cb_mod_res_up_market_coeff.key_full_comb = q_cb_mod_curr_escalation_rates.key_full_comb
  GROUP BY q_cb_mod_res_up_market_coeff.rep_month, q_cb_mod_res_up_market_coeff.pc, q_cb_mod_res_up_market_coeff.l_1, q_cb_mod_res_up_market_coeff.l_2, q_cb_mod_res_up_market_coeff.l_3, q_cb_mod_res_up_market_coeff.l_4, q_cb_mod_res_up_market_coeff.l_5, q_cb_mod_res_up_market_coeff.l_6, q_cb_mod_res_up_market_coeff.rs_l1, q_cb_mod_res_up_market_coeff.rs_l2, q_cb_mod_res_up_market_coeff.rs_l3, q_cb_mod_res_up_market_coeff.rs_l4, q_cb_mod_res_up_market_coeff.month, q_cb_mod_res_up_market_coeff.up_cost_coeff, q_cb_mod_curr_escalation_rates.k_usd, q_cb_mod_curr_escalation_rates.k_eur, (round(q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur, 6)), q_cb_mod_res_up_market_coeff.up_cost, q_cb_mod_res_up_market_coeff.curr, q_cb_mod_res_up_market_coeff.key_full, q_cb_mod_res_up_market_coeff.an_rs_quantity, q_cb_mod_res_up_market_coeff.key_r_pc_l6;

-- View: q_cb_mod_unit_price

DROP VIEW IF EXISTS q_cb_mod_unit_price;

CREATE TEMPORARY VIEW q_cb_mod_unit_price AS
 SELECT q_cb_mod_up_coeff.rep_month,
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
  GROUP BY q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month, q_cb_mod_up_coeff.curr, q_cb_mod_up_coeff.key_r_pc_l6
  ORDER BY q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month;

ELSE RAISE NOTICE 'Using Motor Two';

CREATE TEMPORARY VIEW q_cb_mod_up_pre_coeff_activem_indexes
 AS
SELECT q_cb_mod_analysis_activem_with_prices.rep_month,
       q_cb_mod_analysis_activem_with_prices.pc,
       q_cb_mod_analysis_activem_with_prices.l_1,
       q_cb_mod_analysis_activem_with_prices.l_2,
       q_cb_mod_analysis_activem_with_prices.l_3,
       q_cb_mod_analysis_activem_with_prices.l_4,
       q_cb_mod_analysis_activem_with_prices.l_5,
       q_cb_mod_analysis_activem_with_prices.l_6,
       q_cb_mod_monthly_curr_rates_inc.rt_eur_try,
       q_cb_mod_monthly_curr_rates_inc.rt_eur_usd,
       q_cb_mod_monthly_curr_rates_inc.rt_usd_try,
       q_cb_mod_monthly_curr_rates_inc.rt_usd_eur,
       q_cb_mod_analysis_activem_with_prices.exp_cb_mon,
       q_cb_mod_analysis_activem_with_prices.rs_l1,
       q_cb_mod_analysis_activem_with_prices.rs_l2,
       q_cb_mod_analysis_activem_with_prices.rs_l3,
       q_cb_mod_analysis_activem_with_prices.rs_l4,
       t_cb_mod_indexes.bb_ufe,
       t_cb_mod_indexes.bb_tufe,
       t_cb_mod_indexes.bb_inf_usd,
       t_cb_mod_indexes.bb_inf_eur,
       t_cb_mod_indexes.bb_metal,
       t_cb_mod_indexes.bb_petrol,
       t_cb_mod_indexes.bb_cement,
       t_cb_mod_indexes.bb_electricity,
       q_cb_mod_analysis_activem_with_prices.curr,
       q_cb_mod_analysis_activem_with_prices.an_rs_quantity,
       q_cb_mod_analysis_activem_with_prices.up_cost,
       q_cb_mod_analysis_activem_with_prices.key_r4_simple,
       q_cb_mod_analysis_activem_with_prices.key_r4,
       q_cb_mod_analysis_activem_with_prices.key_r_pc_l6,
       q_cb_mod_analysis_activem_with_prices.key_full
FROM   (q_cb_mod_analysis_activem_with_prices
        LEFT JOIN t_cb_mod_indexes
               ON ( q_cb_mod_analysis_activem_with_prices.rep_month =
                    t_cb_mod_indexes.rep_month )
                  AND ( q_cb_mod_analysis_activem_with_prices.exp_cb_mon =
                        t_cb_mod_indexes.month ))
       LEFT JOIN q_cb_mod_monthly_curr_rates_inc
              ON ( q_cb_mod_analysis_activem_with_prices.rep_month =
                             q_cb_mod_monthly_curr_rates_inc.rep_month )
                 AND ( q_cb_mod_analysis_activem_with_prices.pc =
                       q_cb_mod_monthly_curr_rates_inc.pc )
                 AND ( q_cb_mod_analysis_activem_with_prices.exp_cb_mon =
                           q_cb_mod_monthly_curr_rates_inc.exp_cb_mon ); 


DROP VIEW IF EXISTS q_cb_mod_unit_price_pre CASCADE;

CREATE TEMPORARY VIEW q_cb_mod_unit_price_pre
 AS
 SELECT q_cb_mod_up_pre_coeff_activem_indexes.rep_month,
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
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_usd,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END AS cost_exc_inf_eur,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS cost_market,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END AS cost_market_end_rate_change,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_usd * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * temp_r4_code.w_inf_eur * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_eur)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN
            CASE
                WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_try) - 1::numeric)
                ELSE
                CASE
                    WHEN q_cb_mod_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * ((1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.rt_usd_eur) - 1::numeric)
                    ELSE q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity)) * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_inf_usd - 1::numeric)
                END
            END
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_mod_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END +
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (temp_r4_code.w_ufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_ufe) + temp_r4_code.w_tufe * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_tufe) + temp_r4_code.w_metal * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_metal) + temp_r4_code.w_petrol * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_petrol) + temp_r4_code.w_cement * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_cement) + temp_r4_code.w_electricity * (1::numeric + q_cb_mod_up_pre_coeff_activem_indexes.bb_electricity))
            ELSE 0::numeric
        END AS up_cost_total,
    t_cb_mod_analysis.an_rs_quantity,
        CASE
            WHEN t_cb_mod_exp_esc_rates_l6.exp_rate IS NOT NULL THEN q_cb_mod_up_pre_coeff_activem_indexes.up_cost * (1::numeric + t_cb_mod_exp_esc_rates_l6.exp_rate)
            ELSE 0::numeric
        END AS bypass_cost
   FROM q_cb_mod_up_pre_coeff_activem_indexes
     LEFT JOIN temp_r4_code ON q_cb_mod_up_pre_coeff_activem_indexes.key_r4_simple::text = temp_r4_code.key_r4_simple::text
     LEFT JOIN t_cb_mod_analysis ON q_cb_mod_up_pre_coeff_activem_indexes.key_full::text = t_cb_mod_analysis.key_full::text
     LEFT JOIN t_cb_mod_exp_esc_rates_l6 ON q_cb_mod_up_pre_coeff_activem_indexes.exp_cb_mon = t_cb_mod_exp_esc_rates_l6.month AND q_cb_mod_up_pre_coeff_activem_indexes.key_r_pc_l6::text = t_cb_mod_exp_esc_rates_l6.key_r_pc_l6::text;

ALTER TABLE q_cb_mod_unit_price_pre
    OWNER TO ictasadmin;


-- View: q_cb_mod_unit_price

DROP VIEW IF EXISTS q_cb_mod_unit_price CASCADE;

CREATE TEMPORARY VIEW q_cb_mod_unit_price
 AS
 SELECT q_cb_mod_unit_price_pre.rep_month,
    q_cb_mod_unit_price_pre.pc,
    q_cb_mod_unit_price_pre.l_1,
    q_cb_mod_unit_price_pre.l_2,
    q_cb_mod_unit_price_pre.l_3,
    q_cb_mod_unit_price_pre.l_4,
    q_cb_mod_unit_price_pre.l_5,
    q_cb_mod_unit_price_pre.l_6,
    q_cb_mod_unit_price_pre.month,
    q_cb_mod_unit_price_pre.curr,
    sum(q_cb_mod_unit_price_pre.up_cost_total * q_cb_mod_unit_price_pre.an_rs_quantity) AS unit_price_planned_coeff,
    q_cb_mod_unit_price_pre.key_r_pc_l6
   FROM q_cb_mod_unit_price_pre
  GROUP BY q_cb_mod_unit_price_pre.rep_month, q_cb_mod_unit_price_pre.pc, q_cb_mod_unit_price_pre.l_1, q_cb_mod_unit_price_pre.l_2, q_cb_mod_unit_price_pre.l_3, q_cb_mod_unit_price_pre.l_4, q_cb_mod_unit_price_pre.l_5, q_cb_mod_unit_price_pre.l_6, q_cb_mod_unit_price_pre.month, q_cb_mod_unit_price_pre.curr, q_cb_mod_unit_price_pre.key_r_pc_l6
  ORDER BY q_cb_mod_unit_price_pre.rep_month, q_cb_mod_unit_price_pre.pc, q_cb_mod_unit_price_pre.l_1, q_cb_mod_unit_price_pre.l_2, q_cb_mod_unit_price_pre.l_3, q_cb_mod_unit_price_pre.l_4, q_cb_mod_unit_price_pre.l_5, q_cb_mod_unit_price_pre.l_6, q_cb_mod_unit_price_pre.month;

ALTER TABLE q_cb_mod_unit_price
    OWNER TO ictasadmin;


End IF;

DROP VIEW IF EXISTS q_pl_mod_exp;

CREATE TEMPORARY VIEW q_pl_mod_exp
 AS
 SELECT q_cb_mod_unit_price.rep_month,
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
  GROUP BY q_cb_mod_unit_price.rep_month, q_cb_mod_unit_price.pc, q_cb_mod_unit_price.l_1, q_cb_mod_unit_price.l_2, q_cb_mod_unit_price.l_3, q_cb_mod_unit_price.l_4, q_cb_mod_unit_price.l_5, q_cb_mod_unit_price.l_6, q_cb_mod_unit_price.month, q_cb_mod_unit_price.curr, t_cb_qty.key_r_pc_l6;

ALTER TABLE q_pl_mod_exp
    OWNER TO ictasadmin;

DROP VIEW IF EXISTS q_cb_mod_exp;
CREATE TEMPORARY VIEW q_cb_mod_exp AS

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
total_expense,
curr,
key_r_pc_l6

FROM 
q_pl_mod_exp
		
Where total_expense <>0

UNION 

ALL SELECT 
rep_month,
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
		t_cb_exp

Where exp_ac_exp <>0 AND rep_month = (SELECT MAX(rep_month) from t_rep_month); 














END
$BODY$;


