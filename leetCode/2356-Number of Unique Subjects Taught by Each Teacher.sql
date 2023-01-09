Create table If Not Exists Learning.Teacher (teacher_id int, subject_id int, dept_id int)
Truncate table Learning.Teacher;
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('1', '2', '3');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('1', '2', '4');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('1', '3', '3');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('2', '1', '1');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('2', '2', '1');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('2', '3', '1');
insert into Learning.Teacher (teacher_id, subject_id, dept_id) values ('2', '4', '1');

select * from Learning.Teacher;

select teacher_id,count(distinct subject_id)
from Learning.Teacher
group by teacher_id;
