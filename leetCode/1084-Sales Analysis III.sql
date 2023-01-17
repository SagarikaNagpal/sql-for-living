Drop table  if exists Learning.Sales;
Create table If Not Exists Learning.Product (product_id int, product_name varchar(10), unit_price int)
Create table If Not Exists Learning.Sales (seller_id int, product_id int, buyer_id int, sale_date date, quantity int, price int)
Truncate table Product;
insert into Learning.Product (product_id, product_name, unit_price) values ('1', 'S8', '1000')
insert into Learning.Product (product_id, product_name, unit_price) values ('2', 'G4', '800')
insert into Learning.Product (product_id, product_name, unit_price) values ('3', 'iPhone', '1400')
Truncate table Sales;
insert into Learning.Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '1', '1', '2019-01-21', '2', '2000')
insert into Learning.Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '2', '2', '2019-02-17', '1', '800')
insert into Learning.Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('2', '2', '3', '2019-06-02', '1', '800')
insert into Learning.Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('3', '3', '4', '2019-05-13', '2', '2800')

select * from Learning.Sales;

select * from Learning.Product;

select a.product_id ,b.product_name
from Learning.Sales a left join Learning.Product b
on a.product_id = b.product_id
where sale_date between 2019-01-01 and 2019-03-31;

