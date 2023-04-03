-- Table: public.t_cb_mod_mon_curr_rates

-- DROP TABLE IF EXISTS t_cb_mod_mon_curr_rates;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_mon_curr_rates
(
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
    r_try_usd numeric(12,6) GENERATED ALWAYS AS (((1)::numeric / r_usd_try)) STORED
)
;


INSERT INTO t_cb_mod_mon_curr_rates (rep_month, month, r_eur_try, r_usd_try)

SELECT 
rep_month, 
"month",
r_eur_try,
r_usd_try
from mon_curr_rates 
where rep_month = (SELECT MAX(rep_month) from t_rep_month);





