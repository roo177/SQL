-- Table: public.mon_curr_rates

-- DROP TABLE IF EXISTS public.mon_curr_rates;

CREATE TABLE IF NOT EXISTS public.mon_curr_rates
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month timestamp with time zone NOT NULL,
    r_eur_eur numeric(12,6),
    r_eur_try numeric(12,6),
    r_eur_usd numeric(12,6),
    r_try_eur numeric(12,6),
    r_try_try numeric(12,6),
    r_try_usd numeric(12,6),
    r_usd_eur numeric(12,6),
    r_usd_try numeric(12,6),
    r_usd_usd numeric(12,6),
    CONSTRAINT mon_curr_rates_pkey PRIMARY KEY (rep_month, month),
    CONSTRAINT r__mon_cur__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.mon_curr_rates
    OWNER to ictasadmin;