Show Databases ;

create table Learning.employee
(
id int,
salary int,
last_name VARCHAR(50)
);

select * from Learning.employee;

insert
INTO Learning.employee (id, last_name, salary) VALUES
(1, 'SMITH', 40000),
(2, 'ANDERSON', 60000),
(3, 'JONES', 45000),
(4, 'LANDY', 82000),
(5, 'CHARLESTON', 21000),
(6, 'JOHNSON', 51000),
(7, 'BROWN', 93000),
(8, 'HARDEN', 40000),
(9, 'CONNOR', 52000),
(10, 'PIERCE', 39000);

#SQL WHERE clause that shows all of the employees that have a salary of 40000.
select * from Learning.employee where salary = 40000;

#This query will show all employees where the last name is BROWN.
select * from Learning.employee where last_name = 'BROWN';

#see rows where the salary is greater than 40000 as well as less than 80000,
select * from Learning.employee where salary > 40000 and salary < 80000;

#show employees who have a salary of less than 40000 or greater than 80000,
select * from Learning.employee where salary < 40000 or salary > 80000;

# If you want to check if a column value is equal to one of many different values
select * from Learning.employee where salary in (40000, 50000,60000,70000);
# between
select * from Learning.employee where salary between  40000 and 80000;

# Last Name starts with 'J'
select * from Learning.employee where last_name like 'J%';

Drop table if exists Learning.sales;
Create table Learning.sales
(SALESPERSON_ID int ,FIRST_NAME varchar(50),SALARY int ,COMMISSION int);

select *from Learning.sales;

insert into Learning.sales (SALESPERSON_ID,FIRST_NAME,SALARY,COMMISSION)
values
(1,'John',90000,1000),
(2,'Sally',95000,500),
(3,'Mark',101000,800),
(4,'Tina',87000,900),
(5,'Steve',100000,500),
(6,'Michelle',120000,600),
(7,'Alex',85000,(null)),
(8,'Jo',115000,1200);
