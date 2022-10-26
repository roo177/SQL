    -- Table: t_cb_mod_res_up

    -- DROP TABLE IF EXISTS t_cb_mod_res_up;

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

