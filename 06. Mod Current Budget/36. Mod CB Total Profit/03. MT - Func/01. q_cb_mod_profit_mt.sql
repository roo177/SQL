    -- FUNCTION: public.q_cb_mod_profit_mt()

    -- DROP FUNCTION IF EXISTS public.q_cb_mod_profit_mt();

    CREATE OR REPLACE FUNCTION public.q_cb_mod_profit_mt(
        )
        RETURNS boolean
        LANGUAGE 'plpgsql'
        COST 100
        VOLATILE PARALLEL UNSAFE
    AS $BODY$
    BEGIN

    -- Table: t_cb_mod_profit_st

    --DROP TABLE IF EXISTS t_cb_mod_profit_st cascade;

    CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_profit_st
    (
        rep_month character varying(4) COLLATE pg_catalog."default",
        pc character varying(3) COLLATE pg_catalog."default",
        j_code character varying(50) COLLATE pg_catalog."default",
        desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
        desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
        month date,
        expense double precision,
        income double precision,
        curr character varying(3) COLLATE pg_catalog."default",
        l_1 character varying(1) COLLATE pg_catalog."default",
        l_2 character varying(2) COLLATE pg_catalog."default",
        l_3 character varying(2) COLLATE pg_catalog."default",
        l_4 character varying(2) COLLATE pg_catalog."default",
        l_5 character varying(2) COLLATE pg_catalog."default",
        l_6 character varying(3) COLLATE pg_catalog."default",
        profit double precision,
        desc_tr_l6 character varying(255) COLLATE pg_catalog."default",
        key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
        unit character varying(50) collate pg_catalog."default",
        desc_tr_l4 character varying(255) collate pg_catalog."default",
        desc_tr_l5 character varying(255) collate pg_catalog."default",
        desc_tr_l1 character varying(255) collate pg_catalog."default"
    )

    TABLESPACE pg_default;

    --ALTER TABLE IF EXISTS t_cb_mod_profit_st
    --    OWNER to ictasadmin;
    -- View: q_cb_mod_pr_wbsp_st

    DROP VIEW IF EXISTS q_cb_mod_pr_wbs CASCADE;

    CREATE TEMPORARY VIEW q_cb_mod_pr_wbs
    AS
    SELECT t_cb_mod_inc_st.rep_month,
        t_cb_mod_inc_st.pc,
        t_cb_mod_inc_st.l_1,
        t_cb_mod_inc_st.l_2,
        t_cb_mod_inc_st.l_3,
        t_cb_mod_inc_st.l_4,
        t_cb_mod_inc_st.l_5,
        t_cb_mod_inc_st.l_6,
        t_cb_mod_inc_st.curr,
        t_cb_mod_inc_st.inc_base_mon AS month,
        t_cb_mod_inc_st.key_r_pc_l6
    FROM t_cb_mod_inc_st
    GROUP BY t_cb_mod_inc_st.rep_month, t_cb_mod_inc_st.pc, t_cb_mod_inc_st.l_1, t_cb_mod_inc_st.l_2, t_cb_mod_inc_st.l_3, t_cb_mod_inc_st.l_4, t_cb_mod_inc_st.l_5, t_cb_mod_inc_st.l_6, t_cb_mod_inc_st.curr, t_cb_mod_inc_st.inc_base_mon, t_cb_mod_inc_st.key_r_pc_l6
    HAVING sum(t_cb_mod_inc_st.inc_total) <> 0::double precision
    UNION
    SELECT t_cb_mod_exp_st.rep_month,
        t_cb_mod_exp_st.pc,
        t_cb_mod_exp_st.l_1,
        t_cb_mod_exp_st.l_2,
        t_cb_mod_exp_st.l_3,
        t_cb_mod_exp_st.l_4,
        t_cb_mod_exp_st.l_5,
        t_cb_mod_exp_st.l_6,
        t_cb_mod_exp_st.curr,
        t_cb_mod_exp_st.month,
        t_cb_mod_exp_st.key_r_pc_l6
    FROM t_cb_mod_exp_st
    GROUP BY t_cb_mod_exp_st.rep_month, t_cb_mod_exp_st.pc, t_cb_mod_exp_st.l_1, t_cb_mod_exp_st.l_2, t_cb_mod_exp_st.l_3, t_cb_mod_exp_st.l_4, t_cb_mod_exp_st.l_5, t_cb_mod_exp_st.l_6, t_cb_mod_exp_st.curr, t_cb_mod_exp_st.month, t_cb_mod_exp_st.key_r_pc_l6
    HAVING sum(t_cb_mod_exp_st.total_expense) <> 0::double precision;

    ALTER TABLE q_cb_mod_pr_wbs
        OWNER TO ictasadmin;

    -- View: q_cb_mod_profit

    DROP VIEW IF EXISTS q_cb_mod_profit;

    CREATE TEMPORARY VIEW q_cb_mod_profit
    AS
    SELECT q_cb_mod_pr_wbs.rep_month,
        q_cb_mod_pr_wbs.pc,
        q_cb_mod_pr_wbs.l_1,
        q_cb_mod_pr_wbs.l_2,
        q_cb_mod_pr_wbs.l_3,
        q_cb_mod_pr_wbs.l_4,
        q_cb_mod_pr_wbs.l_5,
        q_cb_mod_pr_wbs.l_6,
        q_cb_mod_pr_wbs.curr,
        q_cb_mod_pr_wbs.month,
        s1.income,
        s1.expense,
        s1.income - s1.expense AS profit,
        q_cb_mod_pr_wbs.key_r_pc_l6
    FROM q_cb_mod_pr_wbs
        LEFT JOIN t_cb_inc_st ON q_cb_mod_pr_wbs.key_r_pc_l6::text = t_cb_inc_st.key_r_pc_l6::text AND q_cb_mod_pr_wbs.month = t_cb_inc_st.inc_base_mon AND q_cb_mod_pr_wbs.curr::text = t_cb_inc_st.curr::text
        LEFT JOIN t_cb_exp_st ON q_cb_mod_pr_wbs.key_r_pc_l6::text = t_cb_exp_st.key_r_pc_l6::text AND q_cb_mod_pr_wbs.month = t_cb_exp_st.month AND q_cb_mod_pr_wbs.curr::text = t_cb_exp_st.curr::text,
        LATERAL ( SELECT
                    CASE
                        WHEN t_cb_inc_st.inc_total IS NULL THEN 0::double precision
                        ELSE t_cb_inc_st.inc_total
                    END AS inc_total,
                    CASE
                        WHEN t_cb_exp_st.total_expense IS NULL THEN 0::double precision
                        ELSE t_cb_exp_st.total_expense
                    END AS total_expense) s1(income, expense)
    ORDER BY q_cb_mod_pr_wbs.rep_month, q_cb_mod_pr_wbs.pc, q_cb_mod_pr_wbs.l_1, q_cb_mod_pr_wbs.l_2, q_cb_mod_pr_wbs.l_3, q_cb_mod_pr_wbs.l_4, q_cb_mod_pr_wbs.l_5, q_cb_mod_pr_wbs.l_6, q_cb_mod_pr_wbs.month;

    ALTER TABLE q_cb_mod_profit
        OWNER TO ictasadmin;

    Raise notice 'Deleting existing data';
    Delete from t_cb_mod_profit_st;
    Raise notice 'Appending new data';

    Insert into t_cb_mod_profit_st

    select 
    q_cb_mod_profit.rep_month, 
    q_cb_mod_profit.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
    c2_code.desc_tr_l2, 
    c3_code.desc_tr_l3, 
    q_cb_mod_profit.month, 
    q_cb_mod_profit.expense, 
    q_cb_mod_profit.income, 
    q_cb_mod_profit.curr, 
    q_cb_mod_profit.l_1, 
    q_cb_mod_profit.l_2, 
    q_cb_mod_profit.l_3, 
    q_cb_mod_profit.l_4, 
    q_cb_mod_profit.l_5, 
    q_cb_mod_profit.l_6, 
    q_cb_mod_profit.profit, 
    c6_code.desc_tr_l6, 
    q_cb_mod_profit.key_r_pc_l6
        ,c6_code.unit
        ,c4_code.desc_tr_l4
        ,c5_code.desc_tr_l5
        ,c1_code.desc_tr_l1
    from ((((q_cb_mod_profit
        left join c3_code on (q_cb_mod_profit.l_1 = c3_code.c_l1) 
        and (q_cb_mod_profit.l_2 = c3_code.c_l2) 
        and (q_cb_mod_profit.l_3 = c3_code.c_l3))
        left join c2_code on (q_cb_mod_profit.l_1 = c2_code.c_l1) 
        and (q_cb_mod_profit.l_2 = c2_code.c_l2))
        left join c1_code on (q_cb_mod_profit.l_1 = c1_code.c_l1)
        left join c6_code on (q_cb_mod_profit.l_1 = c6_code.c_l1) 
        and (q_cb_mod_profit.l_2 = c6_code.c_l2) 
        and (q_cb_mod_profit.l_3 = c6_code.c_l3) 
        and (q_cb_mod_profit.l_4 = c6_code.c_l4) 
        and (q_cb_mod_profit.l_5 = c6_code.c_l5) 
        and (q_cb_mod_profit.l_6 = c6_code.c_l6))
        left join c4_code on (q_cb_mod_profit.l_4 = c4_code.c_l4) 
        and (q_cb_mod_profit.l_3 = c4_code.c_l3) 
        and (q_cb_mod_profit.l_2 = c4_code.c_l2) 
        and (q_cb_mod_profit.l_1 = c4_code.c_l1))
        left join c5_code on (q_cb_mod_profit.l_5 = c5_code.c_l5) 
        and (q_cb_mod_profit.l_4 = c5_code.c_l4) 
        and (q_cb_mod_profit.l_3 = c5_code.c_l3) 
        and (q_cb_mod_profit.l_2 = c5_code.c_l2) 
        and (q_cb_mod_profit.l_1 = c5_code.c_l1) 
    group by 
    q_cb_mod_profit.rep_month, 
    q_cb_mod_profit.pc, 
    l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
    c2_code.desc_tr_l2, 
    c3_code.desc_tr_l3, 
    q_cb_mod_profit.month, 
    q_cb_mod_profit.expense, 
    q_cb_mod_profit.income, 
    q_cb_mod_profit.curr, 
    q_cb_mod_profit.l_1, 
    q_cb_mod_profit.l_2, 
    q_cb_mod_profit.l_3, 
    q_cb_mod_profit.l_4, 
    q_cb_mod_profit.l_5, 
    q_cb_mod_profit.l_6, 
    q_cb_mod_profit.profit, 
    c6_code.desc_tr_l6, 
    q_cb_mod_profit.key_r_pc_l6	
        ,c6_code.unit
        ,c4_code.desc_tr_l4
        ,c5_code.desc_tr_l5
        ,c1_code.desc_tr_l1;

    RETURN TRUE;
    End;

    $BODY$;

    ALTER FUNCTION public.q_cb_mod_profit_mt()
        OWNER TO ictasadmin;
