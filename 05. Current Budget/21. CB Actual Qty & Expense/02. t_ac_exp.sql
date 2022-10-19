-- Table: public.t_ac_exp

-- DROP TABLE IF EXISTS public.t_ac_exp;

CREATE TABLE IF NOT EXISTS public.t_ac_exp
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    exp_ac_mon date NOT NULL,
    exp_ac_exp numeric(20,2),
    up_curr character varying(255) COLLATE pg_catalog."default" NOT NULL,
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT t_ac_exp_pkey PRIMARY KEY (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, exp_ac_mon, up_curr),
    CONSTRAINT pcode FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT repmonth FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_ac_exp
    OWNER to ictasadmin;