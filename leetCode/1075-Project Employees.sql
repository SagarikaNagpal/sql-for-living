Create table If Not Exists learning.Project (project_id int, employee_id int);
DROP table learning.Employee;
Create table If Not Exists learning.Employee (employee_id int, name varchar(10), experience_years int)
Truncate table Project
insert into Learning.Project (project_id, employee_id) values ('1', '1');
insert into Learning.Project (project_id, employee_id) values ('1', '2');
insert into Learning.Project (project_id, employee_id) values ('1', '3');
insert into Learning.Project (project_id, employee_id) values ('2', '1');
insert into Learning.Project (project_id, employee_id) values ('2', '4');
Truncate table Employee;
insert into Learning.Employee (employee_id, name, experience_years) values ('1', 'Khaled', '3');
insert into Learning.Employee (employee_id, name, experience_years) values ('2', 'Ali', '2');
insert into Learning.Employee (employee_id, name, experience_years) values ('3', 'John', '1');
insert into Learning.Employee (employee_id, name, experience_years) values ('4', 'Doe', '2');


Select * from Learning.Employee;

Employee table:
+-------------+--------+------------------+
| employee_id | name   | experience_years |
+-------------+--------+------------------+
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
+-------------+--------+------------------+

Select * from learning.Project;
Project table:
+-------------+-------------+
| project_id  | employee_id |
+-------------+-------------+
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |
+-------------+-------------+

The average experience years for the first project is (3 + 2 + 1) / 3 = 2.00 and
    for the second project is (3 + 2) / 2 = 2.50

| project_id | employee_id |
| ---------- | ----------- |
| 1          | 1           |
| 2          | 3           |
| 2          | 4           |

Employee =
| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
1 / 12 testcases passed

Expected
| project_id | average_years |
| ---------- | ------------- |
| 1          | 3             |
| 2          | 1.5           |

SELECT p.project_id,
ROUND(AVG(e.experience_years),2) AS average_years
FROM learning.Project p
LEFT JOIN learning.Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;