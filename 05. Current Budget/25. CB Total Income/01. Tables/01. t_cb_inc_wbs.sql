-- Table: public.t_cb_inc_wbs

-- DROP TABLE IF EXISTS public.t_cb_inc_wbs;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_wbs
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
    CONSTRAINT t_cb_inc_wbs_pkey PRIMARY KEY (rep_month, p01_code, c_l1, c_l2, c_l4, c_l3, c_l5, currency, c_l6)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_inc_wbs
    OWNER to ictasadmin;