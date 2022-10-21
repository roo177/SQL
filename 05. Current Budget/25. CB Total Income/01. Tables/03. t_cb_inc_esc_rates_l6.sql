-- Table: public.t_cb_inc_esc_rates_l6

-- DROP TABLE IF EXISTS public.t_cb_inc_esc_rates_l6;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_esc_rates_l6
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    month date,
    inc_rate numeric(18,9)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_inc_esc_rates_l6
    OWNER to ictasadmin;