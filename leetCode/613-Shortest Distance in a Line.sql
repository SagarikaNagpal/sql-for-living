Create Table If Not Exists Learning.Point (x int not null)
Truncate table Point
insert into Learning.Point (x) values ('-1')
insert into Learning.Point (x) values ('0')
insert into Learning.Point (x) values ('2')

select * from Learning.Point;

select min(a.b) shortest from (select row_number() over (partition by x)b
from Learning.Point)a;
