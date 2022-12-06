-- Table: public.t_coeff_desc

-- DROP TABLE IF EXISTS public.t_coeff_desc;

CREATE TABLE IF NOT EXISTS public.t_coeff_desc
(
    "order" smallint,
    coefficient character varying(30) COLLATE pg_catalog."default" NOT NULL,
    description character varying(30) COLLATE pg_catalog."default",
    initial_value numeric(25,10),
    unit character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT pkey_t_coeff_desc PRIMARY KEY (coefficient)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_coeff_desc
    OWNER to ictasadmin;