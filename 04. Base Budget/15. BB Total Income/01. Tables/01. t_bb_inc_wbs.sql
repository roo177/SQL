-- Table: public.t_bb_inc_wbs

-- DROP TABLE IF EXISTS public.t_bb_inc_wbs;

CREATE TABLE IF NOT EXISTS public.t_bb_inc_wbs
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    p01_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    currency character varying(3) COLLATE pg_catalog."default" NOT NULL,
    up numeric(18,9),
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT t_bb_inc_wbs_pkey PRIMARY KEY (rep_month, p01_code, c_l1, c_l2, c_l3, c_l4, c_l5, c_l6, currency),
    CONSTRAINT r__t_bb_in__c6_code FOREIGN KEY (c_l2, c_l5, c_l4, c_l1, c_l3, c_l6)
        REFERENCES public.c6_code (c_l2, c_l5, c_l4, c_l1, c_l3, c_l6) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_in__t_001_p FOREIGN KEY (p01_code)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_in__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_inc_wbs
    OWNER to ictasadmin;