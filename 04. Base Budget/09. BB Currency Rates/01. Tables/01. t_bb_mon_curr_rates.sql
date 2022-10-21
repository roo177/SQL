-- Table: public.t_bb_mon_curr_rates

-- DROP TABLE IF EXISTS public.t_bb_mon_curr_rates;

CREATE TABLE IF NOT EXISTS public.t_bb_mon_curr_rates
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    r_eur_try numeric(12,6),
    r_usd_try numeric(12,6),
    r_eur_eur numeric(12,6) GENERATED ALWAYS AS (1) STORED,
    r_try_eur numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_eur_try)) STORED,
    r_try_try numeric(12,6) GENERATED ALWAYS AS (1) STORED,
    r_usd_usd numeric(12,6) GENERATED ALWAYS AS (1) STORED,
    r_try_usd numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_usd_try)) STORED,
    r_eur_usd numeric(12,6) GENERATED ALWAYS AS ((r_eur_try / r_usd_try)) STORED,
    r_usd_eur numeric(12,6) GENERATED ALWAYS AS ((r_usd_try / r_eur_try)) STORED,
    CONSTRAINT t_bb_mon_curr_rates_pkey PRIMARY KEY (rep_month, pc, month),
    CONSTRAINT r__t_bb_mo__t_001_p FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_mo__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_mon_curr_rates
    OWNER to ictasadmin;