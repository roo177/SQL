-- Table: public.t_cb_inc_esc_rates_pcode

-- DROP TABLE IF EXISTS public.t_cb_inc_esc_rates_pcode;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_esc_rates_pcode
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    inc_rate_pcode numeric(18,9),
    CONSTRAINT pkey PRIMARY KEY (rep_month, pc, month),
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

ALTER TABLE IF EXISTS public.t_cb_inc_esc_rates_pcode
    OWNER to ictasadmin;