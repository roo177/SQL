-- For the preceding example, the result looks as shown following.

OrderID  Item            Quantity
3        M6 Locking Nut  300
3        M8 Washer       200
1        M8 Bolt         100
The following example includes rows with ties.

SELECT *
FROM
(
  SELECT *
  FROM OrderItems
  ORDER BY Quantity DESC
  LIMIT 3 OFFSET 0
) AS X
UNION
SELECT *
FROM OrderItems
WHERE Quantity = (
  SELECT Quantity
  FROM OrderItems
  ORDER BY Quantity DESC
  LIMIT 1 OFFSET 2
)
ORDER BY Quantity DESC

--For the preceding example, the result looks as shown following.

OrderID  Item            Quantity
3        M6 Locking Nut  300
3        M8 Washer       200
2        M8 Nut          100
1        M8 Bolt         100