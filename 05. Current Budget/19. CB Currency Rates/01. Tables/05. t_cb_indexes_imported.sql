-- Table: public.t_cb_indexes_imported

DROP TABLE IF EXISTS public.t_cb_indexes_imported cascade;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes_imported
(
    rep_month text COLLATE pg_catalog."default",
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

    CONSTRAINT pkey_t_cb_indexes_mon_input_calculated PRIMARY KEY (cb_month),
    CONSTRAINT rep_month_indexes_imported FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes_imported
    OWNER to ictasadmin;