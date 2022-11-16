-- Table: public.t_cb_indexes_budget

-- DROP TABLE IF EXISTS public.t_cb_indexes_budget;

CREATE TABLE IF NOT EXISTS public.t_cb_indexes_budget
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    cb_month date NOT NULL,
    cb_ufe numeric(18,6),
    cb_tufe numeric(18,6),
    cb_inf_usd numeric(18,6),
    cb_inf_eur numeric(18,6),
    cb_metal numeric(18,6),
    cb_electricity numeric(18,6),
    cb_cement numeric(18,6),
    cb_petrol numeric(18,6),
    cb_usdtry numeric(18,6),
    cb_eurtry numeric(18,6),
    CONSTRAINT pkay_indexes_budget PRIMARY KEY (rep_month, cb_month),
    CONSTRAINT t_cb_indexes_rep_month FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_indexes_budget
    OWNER to ictasadmin;