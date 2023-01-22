# Definition and Usage

The COALESCE() function returns the first non-null value in a list.

## Syntax
COALESCE(val1, val2, ...., val_n)

Example: 
    
    SELECT COALESCE(NULL, 1, 2, 'W3Schools.com');
    Output: 1

    SELECT COALESCE(NULL, NULL, NULL, 'W3Schools.com', NULL, 'Example.com');
    output: W3Schools.com

'https://www.w3schools.com/sql/func_sqlserver_coalesce.asp'