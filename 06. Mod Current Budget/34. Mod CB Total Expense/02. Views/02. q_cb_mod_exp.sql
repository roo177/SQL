DROP VIEW IF EXISTS q_cb_mod_exp;
CREATE TEMPORARY VIEW q_cb_mod_exp AS

SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
month,
total_expense,
curr,
key_r_pc_l6

FROM 
q_pl_mod_exp
		
Where total_expense <>0

UNION 

ALL SELECT 
rep_month,
pc,
l_1,
l_2,
l_3,
l_4,
l_5,
l_6,
exp_ac_mon,
exp_ac_exp,
curr,
key_r_pc_l6

	FROM 
		t_cb_exp

Where exp_ac_exp <>0 AND rep_month = (SELECT MAX(rep_month) from t_rep_month); 
