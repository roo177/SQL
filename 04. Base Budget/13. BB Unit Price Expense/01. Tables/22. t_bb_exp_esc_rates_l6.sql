-- Table: public.t_bb_exp_esc_rates_l6

-- DROP TABLE IF EXISTS public.t_bb_exp_esc_rates_l6;

CREATE TABLE IF NOT EXISTS public.t_bb_exp_esc_rates_l6
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    exp_rate numeric(18,9),
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    CONSTRAINT t_bb_exp_esc_rates PRIMARY KEY (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, month),
    CONSTRAINT l6 FOREIGN KEY (l_5, l_4, l_3, l_2, l_6, l_1)
        REFERENCES public.c6_code (c_l5, c_l4, c_l3, c_l2, c_l6, c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT pc FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT repmonth FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_exp_esc_rates_l6
    OWNER to ictasadmin;