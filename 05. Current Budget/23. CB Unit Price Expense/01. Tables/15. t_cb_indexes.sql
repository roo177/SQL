-- Table: public.t_cb_indexes

-- DROP TABLE IF EXISTS public.t_cb_indexes;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    bb_metal numeric(18,4),
    bb_electricity numeric(18,4),
    bb_cement numeric(18,4),
    bb_petrol numeric(18,4),
    bb_inf_usd numeric(18,4),
    bb_inf_eur numeric(18,4),
    bb_ufe numeric(18,4),
    bb_tufe numeric(18,4),
    CONSTRAINT t_cb_indexes_pkey PRIMARY KEY (rep_month, month),
    CONSTRAINT r__t_cb_in__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes
    OWNER to ictasadmin;