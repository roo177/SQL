--Just about the simplest possible example would be this;

CREATE FUNCTION test() RETURNS TABLE(num INT) AS
  'SELECT id FROM table1'
  LANGUAGE SQL;

SELECT * FROM test()
An SQLfiddle to test with.

--If you need a parameter, here's another example;

CREATE FUNCTION test(sel INT) RETURNS TABLE(val VARCHAR) AS
  'SELECT value FROM table1 WHERE id=sel'
  LANGUAGE SQL;

SELECT * FROM test(2) 