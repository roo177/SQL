-- Table: public.t_ac_mod_exp

DROP TABLE IF EXISTS public.t_ac_mod_exp;

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
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    ccode character varying(18) COLLATE pg_catalog."default" NOT NULL,
    pkey character varying(60) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((rep_month)::text || '-'::text) || (pc)::text) || '-'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '-'::text) || (EXTRACT(year FROM exp_ac_mon))::text) || '-'::text) || (EXTRACT(month FROM exp_ac_mon))::text) || '-'::text) || (EXTRACT(day FROM exp_ac_mon))::text) || '-'::text) || (curr)::text)) STORED,
    jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (curr)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '.'::text) || (EXTRACT(day FROM exp_ac_mon))::text) || '.'::text) || (EXTRACT(month FROM exp_ac_mon))::text) || '.'::text) || (EXTRACT(year FROM exp_ac_mon))::text) || '.'::text) || (user_id)::text) || '.'::text) || (session_id)::text)) STORED,
    CONSTRAINT t_cb_exp_mod_pkey PRIMARY KEY (rep_month, user_id, session_id, pc, l_1, l_2, l_3, l_4, l_5, l_6, exp_ac_mon, exp_ac_exp, curr, ccode)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_ac_mod_exp
    OWNER to ictasadmin;