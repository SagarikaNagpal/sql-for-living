select * from Learning.sales order by FIRST_NAME asc ;

Select* from Learning.sales order by SALARY desc;

#Order by col number
select * from Learning.sales order by 3 desc;

/* This example shows you how you can order by a column alias.
This is very helpful to reduce the amount of code you
write and to keep your logic in one place (the SELECT clause, for example).
SELECT
salesperson_id,
first_name,
salary + commission AS total_earnings
FROM salesperson
ORDER BY total_earnings DESC;
 */
select *,salary + COMMISSION as total_earnings
from Learning.sales
order by  total_earnings desc ;


select  * ,(salary + COMMISSION) as total_earnings,
round((salary + COMMISSION),2) half_earnings
from Learning.sales
order by  total_earnings desc ;


SELECT
salesperson_id,
first_name,
salary,
commission
FROM Learning.sales
ORDER BY commission ASC,salary DESC;






