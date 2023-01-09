Create table If Not Exists Learning.Employees (id int, name varchar(20));
Create table If Not Exists Learning.EmployeeUNI (id int, unique_id int);
Truncate table Learning.Employees;
insert into Learning.Employees (id, name) values ('1', 'Alice');
insert into Learning.Employees (id, name) values ('7', 'Bob');
insert into Learning.Employees (id, name) values ('11', 'Meir');
insert into Learning.Employees (id, name) values ('90', 'Winston');
insert into Learning.Employees (id, name) values ('3', 'Jonathan');
Truncate table Learning.EmployeeUNI;
insert into Learning.EmployeeUNI (id, unique_id) values ('11', '2');
insert into Learning.EmployeeUNI (id, unique_id) values ('3', '1');
insert into Learning.EmployeeUNI (id, unique_id) values ('90', '3');

select * from Learning.EmployeeUNI;
select * from Learning.Employees;

select b.unique_id, a.name
from Learning.Employees a left join Learning.EmployeeUNI b
on a.id = b.id
