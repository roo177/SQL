-- Table: public.t_cb_mod_mon_curr_rates

-- DROP TABLE IF EXISTS public.t_cb_mod_mon_curr_rates;

CREATE TABLE IF NOT EXISTS public.t_cb_mod_mon_curr_rates
(
    user_id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    session_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    r_eur_try numeric(12,6),
    r_usd_try numeric(12,6),
    r_try_try numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_usd_usd numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_eur_eur numeric(2,1) GENERATED ALWAYS AS (1) STORED,
    r_eur_usd numeric(12,6) GENERATED ALWAYS AS ((r_eur_try / r_usd_try)) STORED,
    r_try_eur numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_eur_try)) STORED,
    r_usd_eur numeric(12,6) GENERATED ALWAYS AS ((r_usd_try / r_eur_try)) STORED,
    r_try_usd numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_usd_try)) STORED,
    rep_month_userid_sessionid character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((rep_month)::text || '.'::text) || (user_id)::text) || '.'::text) || (session_id)::text)) STORED,
    rm_month character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rep_month)::text || '.'::text) || (EXTRACT(day FROM month))::text) || '.'::text) || (EXTRACT(month FROM month))::text) || '.'::text) || (EXTRACT(year FROM month))::text)) STORED,
    jkey_curr_index character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (EXTRACT(day FROM month))::text) || '.'::text) || (EXTRACT(month FROM month))::text) || '.'::text) || (EXTRACT(year FROM month))::text) || '.'::text) || (user_id)::text) || '.'::text) || (session_id)::text)) STORED,
    CONSTRAINT t_cb_mod_mon_curr_rates_pkey PRIMARY KEY (user_id, session_id, rep_month, month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_cb_mod_mon_curr_rates
    OWNER to ictasadmin;