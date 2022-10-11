-- Table: public.t_cb_indexes

-- DROP TABLE IF EXISTS public.t_cb_indexes;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    g_month timestamp with time zone NOT NULL,
    bb_metal numeric(18,4),
    bb_electricity numeric(18,4),
    bb_cement numeric(18,4),
    bb_petrol numeric(18,4),
    bb_inf_usd numeric(18,4),
    bb_inf_eur numeric(18,4),
    bb_ufe numeric(18,4),
    bb_tufe numeric(18,4),
    CONSTRAINT t_cb_indexes_pkey PRIMARY KEY (rep_month, g_month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes
    OWNER to ictasadmin;