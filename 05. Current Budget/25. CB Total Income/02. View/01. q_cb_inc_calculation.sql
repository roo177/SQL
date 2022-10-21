-- View: public.q_cb_inc_calculation

-- DROP VIEW public.q_cb_inc_calculation;

CREATE OR REPLACE VIEW public.q_cb_inc_calculation
 AS
 SELECT t_cb_inc_qty.rep_month,
    t_cb_inc_qty.pc,
    t_cb_inc_qty.l_1,
    t_cb_inc_qty.l_2,
    t_cb_inc_qty.l_3,
    t_cb_inc_qty.l_4,
    t_cb_inc_qty.l_5,
    t_cb_inc_qty.l_6,
    t_cb_inc_qty.inc_base_mon,
    t_cb_inc_wbs.up,
    t_cb_inc_wbs.curr,
    t_cb_inc_wbs.up * s1.inc_rate_1 * s1.inc_rate_2 AS up_total,
    t_cb_inc_qty.inc_base_qty,
    t_cb_inc_wbs.up * s1.inc_rate_1 * s1.inc_rate_2 * t_cb_inc_qty.inc_base_qty AS inc_total,
    t_cb_inc_qty.key_r_pc_l6
   FROM t_cb_inc_qty
     LEFT JOIN t_cb_inc_esc_rates_l6 ON t_cb_inc_qty.inc_base_mon = t_cb_inc_esc_rates_l6.month AND t_cb_inc_qty.l_6::text = t_cb_inc_esc_rates_l6.l_6::text AND t_cb_inc_qty.l_5::text = t_cb_inc_esc_rates_l6.l_5::text AND t_cb_inc_qty.l_4::text = t_cb_inc_esc_rates_l6.l_4::text AND t_cb_inc_qty.l_3::text = t_cb_inc_esc_rates_l6.l_3::text AND t_cb_inc_qty.l_2::text = t_cb_inc_esc_rates_l6.l_2::text AND t_cb_inc_qty.l_1::text = t_cb_inc_esc_rates_l6.l_1::text AND t_cb_inc_qty.pc::text = t_cb_inc_esc_rates_l6.pc::text AND t_cb_inc_qty.rep_month::text = t_cb_inc_esc_rates_l6.rep_month::text
     LEFT JOIN t_cb_inc_esc_rates_pcode ON t_cb_inc_qty.inc_base_mon = t_cb_inc_esc_rates_pcode.month AND t_cb_inc_qty.pc::text = t_cb_inc_esc_rates_pcode.pc::text AND t_cb_inc_qty.rep_month::text = t_cb_inc_esc_rates_pcode.rep_month::text
     LEFT JOIN t_cb_inc_wbs ON t_cb_inc_qty.key_r_pc_l6::text = t_cb_inc_wbs.key_r_pc_l6::text,
    LATERAL ( SELECT
                CASE
                    WHEN t_cb_inc_esc_rates_l6.inc_rate IS NULL THEN 1::numeric
                    ELSE 1::numeric + t_cb_inc_esc_rates_l6.inc_rate
                END AS "case",
                CASE
                    WHEN t_cb_inc_esc_rates_pcode.inc_rate_pcode IS NULL THEN 1::numeric
                    ELSE 1::numeric + t_cb_inc_esc_rates_pcode.inc_rate_pcode
                END AS "case") s1(inc_rate_1, inc_rate_2);

ALTER TABLE public.q_cb_inc_calculation
    OWNER TO ictasadmin;

