DROP VIEW IF EXISTS q_cb_mod_qty_activem_works_monthly;

CREATE TEMPORARY VIEW -- ok
q_cb_mod_qty_activem_works_monthly AS

select 
t_cb_qty.rep_month, 
t_cb_qty.pc, 
t_cb_qty.exp_cb_mon
from t_cb_qty left join t_rep_month on t_cb_qty.rep_month = t_rep_month.rep_month
where (((t_cb_qty.exp_cb_mon)>t_rep_month.rep_month_date) and ((t_cb_qty.exp_cb_qty)<>0))
group by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
having (((t_cb_qty.rep_month)= (SELECT Max(rep_month) from t_rep_month)))
order by t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;