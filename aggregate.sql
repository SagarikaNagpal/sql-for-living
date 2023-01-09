#Sum:

SELECT * from Learning.sales;

select sum(SALARY) from Learning.sales;

select first_name,SALARY,COMMISSION,sum(SALARY+COMMISSION) Total_Money
from Learning.sales
group by  1,2,3;

select *
from Learning.sales
having SALARY>90000;


select * from Learning.sales;
select *
from Learning.sales
group by 1,2,3,4,5
having SALARY>90000;

id >>

select distinct count(SALESPERSON_ID) from Learning.sales;

# waq to find the no of employees who earn between 100000 and 110000
select distinct count(SALESPERSON_ID) from Learning.sales
where SALARY between 100000 and 110000;


# waq to find the name of the employees that begin with 's'
select FIRST_NAME from Learning.sales
where FIRST_NAME like 's%';

# waq to find top 5 records with highest salary
select * from Learning.sales
order by SALARY desc
limit 5;

# waq to add a new column to table 'total earning' where total earning = salary + commission
select *,(salary+COMMISSION) AS total_earning
from Learning.sales;
# waq to fetch names of employees to fetch top 5 earning based on the above columns
select *,(salary+COMMISSION) total_earning
from Learning.sales
order by total_earning desc
limit 5;

