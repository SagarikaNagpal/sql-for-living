Create table If Not Exists Learning.Departments (id int, name varchar(30))
Create table If Not Exists Learning.Students (id int, name varchar(30), department_id int)
Truncate table Departments
insert into Learning.Departments (id, name) values ('1', 'Electrical Engineering');
insert into Learning.Departments (id, name) values ('7', 'Computer Engineering');
insert into Learning.Departments (id, name) values ('13', 'Bussiness Administration');
Truncate table Students;
insert into Learning.Students (id, name, department_id) values ('23', 'Alice', '1');
insert into Learning.Students (id, name, department_id) values ('1', 'Bob', '7');
insert into Learning.Students (id, name, department_id) values ('5', 'Jennifer', '13');
insert into Learning.Students (id, name, department_id) values ('2', 'John', '14');
insert into Learning.Students (id, name, department_id) values ('4', 'Jasmine', '77');
insert into Learning.Students (id, name, department_id) values ('3', 'Steve', '74');
insert into Learning.Students (id, name, department_id) values ('6', 'Luis', '1');
insert into Learning.Students (id, name, department_id) values ('8', 'Jonathan', '7');
insert into Learning.Students (id, name, department_id) values ('7', 'Daiana', '33');
insert into Learning.Students (id, name, department_id) values ('11', 'Madelynn', '1');

select * from Learning.Students;
select * from Learning.Departments;

select a.id,a.department_id in(select * from Learning.Departments)a;


SELECT id, name FROM Learning.Students
   WHERE department_id Not IN (SELECT id FROM Learning.Departments);
