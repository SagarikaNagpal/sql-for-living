drop table Learning.Employee;

Create table If Not Exists Learning.Employee (Employee_id int, team_id int);
Truncate table Learning.Employee;
insert into Learning.Employee (Employee_id, team_id) values ('1', '8');
insert into Learning.Employee (Employee_id, team_id) values ('2', '8');
insert into Learning.Employee (Employee_id, team_id) values ('3', '8');
insert into Learning.Employee (Employee_id, team_id) values ('4', '7');
insert into Learning.Employee (Employee_id, team_id) values ('5', '9');
insert into Learning.Employee (Employee_id, team_id) values ('6', '9');

select * from Learning.Employee ;

select e.*,
       dense_rank() over (partition by team_id)
from Learning.Employee e;

SELECT *,employee_id,
    COUNT(team_id) OVER(PARTITION BY team_id) AS team_size
FROM Learning.Employee;

SELECT *,
    COUNT(team_id) OVER(PARTITION BY team_id) AS team_size
FROM Learning.Employee;

select employee_id, count(team_id) over (partition by team_id) team_size
FROM Learning.Employee;