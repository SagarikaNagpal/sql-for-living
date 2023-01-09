Create table If Not Exists Learning.Employees(emp_id int, event_day date, in_time int, out_time int);
Truncate table Learning.Employees;
insert into Learning.Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '4', '32');
insert into Learning.Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '55', '200');
insert into Learning.Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-12-3', '1', '42');
insert into Learning.Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-11-28', '3', '33');
insert into Learning.Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-12-9', '47', '74');
Drop Table Learning.Employees;

select * from Learning.Employees;

SELECT event_day AS day,
       emp_id,
       sum(out_time-in_time) AS total_time
FROM Learning.Employees
GROUP BY
    day,
    emp_id
;

