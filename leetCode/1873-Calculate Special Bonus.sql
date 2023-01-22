Drop table learning.Employees;

Create table If Not Exists Learning.Employees (employee_id int, name varchar(30), salary int)

insert into Learning.Employees (employee_id, name, salary) values ('2', 'Meir', '3000')
insert into Learning.Employees (employee_id, name, salary) values ('3', 'Michael', '3800')
insert into Learning.Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400')
insert into Learning.Employees (employee_id, name, salary) values ('8', 'Juan', '6100')
insert into Learning.Employees (employee_id, name, salary) values ('9', 'Kannon', '7700')

select * from Learning.Employees;


select employee_id,  (
case when employee_id%2 <> 0 and name not like 'M%'  then salary else 0 end)bonus
from Learning.Employees
order by employee_id
