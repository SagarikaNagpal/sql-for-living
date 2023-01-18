# Definition: 
The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.

# Normal Case usage
    SELECT OrderID, Quantity,
    CASE
        WHEN Quantity > 30 THEN 'The quantity is greater than 30'
        WHEN Quantity = 30 THEN 'The quantity is 30'
        ELSE 'The quantity is under 30'
    END AS QuantityText
    FROM OrderDetails;

# Case in Oder by clause:
    SELECT CustomerName, City, Country
    FROM Customers
    ORDER BY
    (CASE
    WHEN City IS NULL THEN Country
    ELSE City
    END);

# Some More Examples:

https://stackoverflow.com/questions/14630984/how-do-i-do-multiple-case-when-conditions-using-sql-server-2008

There are three formats of case expression. You can do CASE with many WHEN as;

    CASE  WHEN Col1 = 1 OR Col3 = 1  THEN 1 
      WHEN Col1 = 2 THEN 2
      ...
      ELSE 0 END as Qty

Or a Simple CASE expression

    CASE Col1 WHEN 1 THEN 11 WHEN 2 THEN 21 ELSE 13 END
    

Or CASE within CASE as;

    CASE  WHEN Col1 < 2 THEN  
                    CASE Col2 WHEN 'X' THEN 10 ELSE 11 END
      WHEN Col1 = 2 THEN 2
      ...
      ELSE 0 END as Qty