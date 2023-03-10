Create table If Not Exists Learning.Activity
(player_id int, device_id int, event_date date, games_played int)
Drop table Learning.Activity;
insert into learning.Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5');
insert into learning.Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6');
insert into learning.Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1');
insert into learning.Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0');
insert into learning.Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5');

select* from learning.Activity;

Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+
Output:
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |

select distinct player_id , min(event_date) first_login
 from learning.Activity
group by player_id;