Create table If Not Exists Learning.Transactions (transaction_id int, day datetime, amount int)
Truncate table Transactions
insert into Learning.Transactions (transaction_id, day, amount) values ('8', '2021-4-3 15:57:28', '57')
insert into Learning.Transactions (transaction_id, day, amount) values ('9', '2021-4-28 08:47:25', '21')
insert into Learning.Transactions (transaction_id, day, amount) values ('1', '2021-4-29 13:28:30', '58')
insert into Learning.Transactions (transaction_id, day, amount) values ('5', '2021-4-28 16:39:59', '40')
insert into Learning.Transactions (transaction_id, day, amount) values ('6', '2021-4-29 23:39:28', '58')


select * from Learning.Transactions;
| transaction_id |
+----------------+
| 1              |
| 5              |
| 6              |
| 8              |


