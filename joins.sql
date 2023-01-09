CREATE TABLE Learning.department (
department_id int PRIMARY KEY,
department_name VARCHAR(100)
);


CREATE TABLE Learning.employee (
employee_id int PRIMARY KEY,
full_name VARCHAR(100),
department_id int,
job_role VARCHAR(100),
manager_id int
);

select * from  Learning.department;

INSERT INTO Learning.department(department_id, department_name) VALUES (1, 'Executive');
INSERT INTO Learning.department(department_id, department_name) VALUES (2, 'HR');
INSERT INTO Learning.department(department_id, department_name) VALUES (3, 'Sales');
INSERT INTO Learning.department(department_id, department_name) VALUES (4, 'Development');
INSERT INTO Learning.department(department_id, department_name) VALUES (5, 'Support');
INSERT INTO Learning.department(department_id, department_name) VALUES (6, 'Research');

drop table if exists Learning.employee;

SELECT * FROM Learning.employee;
INSERT INTO Learning.employee(employee_id, full_name, department_id, job_role, manager_id)
VALUES (1, 'John Smith', 1, 'CEO', NULL),
(2, 'Sarah Goodes', 1, 'CFO', 1),
(3, 'Wayne Ablett', 1, 'CIO', 1)
,(4, 'Michelle Carey', 2, 'HR Manager', 1)
,(5, 'Chris Matthews', 3, 'Sales Manager ', 2),(6, 'Andrew Judd', 4, 'Development Manager', 3)
,(7, 'Danielle McLeod', 5, 'Support Manager', 3),(8, 'Matthew Swan', 2, 'HR Representative', 4),(9, 'Stephanie Richardson', 2, 'Salesperson', 5)
,(10, 'Tony Grant', 3, 'Salesperson', 5),(11, 'Jenna Lockett', 4, 'Front-End Developer', 6),(12, 'Michael Dunstall', 4, 'Back-End Developer', 6)
,(13, 'Jane Voss', 4, 'Back-End Developer', 6),
 (14, 'Anthony Hird', null, 'Support', 7),(15, 'Natalie Rocca', 5, 'Support', 7);


SELECT * FROM Learning.employee;

SELECT * FROM Learning.department;

select a.department_id, b.department_name
from Learning.employee a join Learning.department b
on a.department_id = b.department_id