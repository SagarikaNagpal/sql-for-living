Create table If Not Exists
learning.Products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'));
Truncate table learning.Products;
insert into learning.Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
insert into learning.Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y');
insert into learning.Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
insert into learning.Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
insert into learning.Products (product_id, low_fats, recyclable) values ('4', 'N', 'N');


select * from learning.Products;

select product_id from learning.Products
where low_fats = 'Y' and recyclable = 'Y';


