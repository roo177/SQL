-- Table: public.t_cb_inc_esc_rates_pcode

-- DROP TABLE IF EXISTS public.t_cb_inc_esc_rates_pcode;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_esc_rates_pcode
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    month date,
    inc_rate_pcode numeric(18,9)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_inc_esc_rates_pcode
    OWNER to ictasadmin;