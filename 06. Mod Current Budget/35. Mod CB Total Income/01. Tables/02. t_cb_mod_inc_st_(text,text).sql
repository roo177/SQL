-- Table: public.t_cb_mod_inc_st

DROP TABLE IF EXISTS public.t_cb_mod_inc_st;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_inc_st
(
    user_id text COLLATE pg_catalog."default" NOT NULL,
    session_id text COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1)::text || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
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
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (curr)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '.'::text) || (EXTRACT(day FROM inc_base_mon))::text) || '.'::text) || (EXTRACT(month FROM inc_base_mon))::text) || '.'::text) || (EXTRACT(year FROM inc_base_mon))::text) || '.'::text) || user_id) || '.'::text) || session_id)) STORED
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_inc_st
    OWNER to ictasadmin;