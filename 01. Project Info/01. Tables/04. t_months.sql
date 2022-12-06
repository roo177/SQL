-- Table: public.t_months

-- DROP TABLE IF EXISTS public.t_months;

CREATE TABLE IF NOT EXISTS public.t_months
(
    month date NOT NULL,
    year character varying(4) COLLATE pg_catalog."default",
    CONSTRAINT pkey_t_months PRIMARY KEY (month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_months
    OWNER to ictasadmin;