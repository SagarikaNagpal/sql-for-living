Create table If Not Exists Learning.Activities (sell_date date, product varchar(20));

insert into Learning.Activities (sell_date, product) values ('2020-05-30', 'Headphone');
insert into Learning.Activities (sell_date, product) values ('2020-06-01', 'Pencil');
insert into Learning.Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Learning.Activities (sell_date, product) values ('2020-05-30', 'Basketball');
insert into Learning.Activities (sell_date, product) values ('2020-06-01', 'Bible');
insert into Learning.Activities (sell_date, product) values ('2020-06-02', 'Mask');
insert into Learning.Activities (sell_date, product) values ('2020-05-30', 'T-Shirt');


select distinct sell_date, count(distinct product) num_sold ,
                group_concat(distinct product order by product)
from Learning.Activities
group by sell_date;