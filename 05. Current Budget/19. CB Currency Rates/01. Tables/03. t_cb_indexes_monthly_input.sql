-- Table: public.t_cb_indexes_monthly_input

-- DROP TABLE IF EXISTS public.t_cb_indexes_monthly_input;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes_monthly_input
(
    cb_month date NOT NULL,
    cb_ufe numeric(18,4),
    cb_tufe numeric(18,4),
    cb_inf_usd numeric(18,4),
    cb_inf_eur numeric(18,4),
    cb_metal numeric(18,4),
    cb_electricity numeric(18,4),
    cb_cement numeric(18,4),
    cb_petrol numeric(18,4),
    cb_usdtry numeric(18,6),
    cb_eurtry numeric(18,6),
    CONSTRAINT pkey_t_cb_indexes_mon_input PRIMARY KEY (cb_month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes_monthly_input
    OWNER to ictasadmin;