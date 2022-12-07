CREATE OR REPLACE FUNCTION get_month(date) RETURNS integer
AS $$
      SELECT extract(MONTH FROM $1)::integer;
$$ LANGUAGE sql IMMUTABLE;
