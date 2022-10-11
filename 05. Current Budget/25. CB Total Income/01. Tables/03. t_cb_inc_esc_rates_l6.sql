-- Table: public.t_cb_inc_esc_rates_l6

-- DROP TABLE IF EXISTS public.t_cb_inc_esc_rates_l6;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_esc_rates_l6
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    p01_code character varying(3) COLLATE pg_catalog."default",
    c_l1 character varying(1) COLLATE pg_catalog."default",
    c_l2 character varying(2) COLLATE pg_catalog."default",
    c_l3 character varying(2) COLLATE pg_catalog."default",
    c_l4 character varying(2) COLLATE pg_catalog."default",
    c_l5 character varying(2) COLLATE pg_catalog."default",
    c_l6 character varying(3) COLLATE pg_catalog."default",
    month timestamp with time zone,
    inc_rate numeric(18,9)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_inc_esc_rates_l6
    OWNER to ictasadmin;