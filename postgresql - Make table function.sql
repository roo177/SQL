CREATE OR REPLACE FUNCTION test5() returns BOOLEAN AS
$$
DECLARE
id varchar := 'T';

BEGIN
raise notice 'Testing %', id;
Delete from c1_code where c_l1 = id;

RETURN TRUE;
End;

$$
language plpgsql;
