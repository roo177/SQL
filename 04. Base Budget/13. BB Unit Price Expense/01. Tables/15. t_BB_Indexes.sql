-- Table: public.t_bb_indexes

-- DROP TABLE IF EXISTS public.t_bb_indexes;

CREATE TABLE IF NOT EXISTS public.t_bb_indexes
(
    month date NOT NULL,
    r_ufe numeric(18,10),
    r_tufe numeric(18,10),
    r_inf_usd numeric(18,10),
    r_inf_eur numeric(18,10),
    r_metal numeric(18,10),
    r_petrol numeric(18,10),
    r_cement numeric(18,10),
    r_electricity numeric(18,10),
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT t_bb_indexes_pkey PRIMARY KEY (month, pc, rep_month),
    CONSTRAINT pcode FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT r__t_bb_in__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_indexes
    OWNER to ictasadmin;