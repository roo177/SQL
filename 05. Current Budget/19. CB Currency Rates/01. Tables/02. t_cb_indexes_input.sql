-- Table: public.t_cb_indexes_input

-- DROP TABLE IF EXISTS public.t_cb_indexes_input;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes_input
(
    cb_year character varying(4) COLLATE pg_catalog."default" NOT NULL,
    cb_ufe numeric(18,4),
    cb_tufe numeric(18,4),
    cb_inf_usd numeric(18,4),
    cb_inf_eur numeric(18,4),
    cb_metal numeric(18,4),
    cb_electricity numeric(18,4),
    cb_cement numeric(18,4),
    cb_petrol numeric(18,4),
    cb_usdtry numeric(18,4),
    cb_eurtry numeric(18,4),
    CONSTRAINT primary_t_cb_indexes PRIMARY KEY (cb_year)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes_input
    OWNER to ictasadmin;