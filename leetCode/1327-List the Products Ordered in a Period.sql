Create table If Not Exists Learning.Products (product_id int, product_name varchar(40), product_category varchar(40))
Create table If Not Exists Learning.Orders (product_id int, order_date date, unit int)
Truncate table Products
insert into Learning.Products (product_id, product_name, product_category) values ('1', 'Leetcode Solutions', 'Book');
insert into Learning.Products (product_id, product_name, product_category) values ('2', 'Jewels of Stringology', 'Book');
insert into Learning.Products (product_id, product_name, product_category) values ('3', 'HP', 'Laptop');
insert into Learning.Products (product_id, product_name, product_category) values ('4', 'Lenovo', 'Laptop');
insert into Learning.Products (product_id, product_name, product_category) values ('5', 'Leetcode Kit', 'T-shirt');

insert into Learning.Orders (product_id, order_date, unit) values ('1', '2020-02-05', '60');
insert into Learning.Orders (product_id, order_date, unit) values ('1', '2020-02-10', '70');
insert into Learning.Orders (product_id, order_date, unit) values ('2', '2020-01-18', '30');
insert into Learning.Orders (product_id, order_date, unit) values ('2', '2020-02-11', '80');
insert into Learning.Orders (product_id, order_date, unit) values ('3', '2020-02-17', '2');
insert into Learning.Orders (product_id, order_date, unit) values ('3', '2020-02-24', '3');
insert into Learning.Orders (product_id, order_date, unit) values ('4', '2020-03-01', '20');
insert into Learning.Orders (product_id, order_date, unit) values ('4', '2020-03-04', '30');
insert into Learning.Orders (product_id, order_date, unit) values ('4', '2020-03-04', '60');
insert into Learning.Orders (product_id, order_date, unit) values ('5', '2020-02-25', '50');
insert into Learning.Orders (product_id, order_date, unit) values ('5', '2020-02-27', '50');
insert into Learning.Orders (product_id, order_date, unit) values ('5', '2020-03-01', '50');
;
select * from Learning.Orders;
select * from Learning.Products;

select a.product_name , sum(b.unit) unit from Learning.Products a left join Learning.Orders b
on a.product_id = b.product_id
where order_date >= '2020-02-01' and order_date <=  '2020-02-27 '
group by 1
having sum(unit)>=100 ;