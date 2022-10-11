-- Table: public.t_001_projects

-- DROP TABLE IF EXISTS public.t_001_projects;

CREATE TABLE IF NOT EXISTS public.t_001_projects
(
    r01_p_order smallint,
    p_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    r03_s_name character varying(150) COLLATE pg_catalog."default",
    r04_l_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT t_001_projects_pkey PRIMARY KEY (p_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_001_projects
    OWNER to ictasadmin;