-- Table: public.t_cb_mod_indexes

-- DROP TABLE IF EXISTS public.t_cb_mod_indexes;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_indexes
(
    user_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    session_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    bb_ufe numeric(18,10),
    bb_tufe numeric(18,10),
    bb_inf_usd numeric(18,10),
    bb_inf_eur numeric(18,10),
    bb_metal numeric(18,10),
    bb_petrol numeric(18,10),
    bb_cement numeric(18,10),
    bb_electricity numeric(18,10),
    rm_month character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rep_month)::text || '.'::text) || (EXTRACT(day FROM month))::text) || '.'::text) || (EXTRACT(month FROM month))::text) || '.'::text) || (EXTRACT(year FROM month))::text)) STORED,
    jkey_curr_index character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (EXTRACT(day FROM month))::text) || '.'::text) || (EXTRACT(month FROM month))::text) || '.'::text) || (EXTRACT(year FROM month))::text) || '.'::text) || (user_id)::text) || '.'::text) || (session_id)::text)) STORED,
    rep_month_userid_sessionid character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((rep_month)::text || '.'::text) || (user_id)::text) || '.'::text) || (session_id)::text)) STORED,
    CONSTRAINT t_cb_mod_indexes_pkey PRIMARY KEY (user_id, session_id, rep_month, month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_indexes
    OWNER to ictasadmin;