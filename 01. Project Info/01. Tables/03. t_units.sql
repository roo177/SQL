-- Table: public.t_units

-- DROP TABLE IF EXISTS public.t_units;

CREATE TABLE IF NOT EXISTS public.t_units
(
    unit character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT primary_unit PRIMARY KEY (unit)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_units
    OWNER to ictasadmin;