Create table If Not Exists learning.cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1))
Truncate table cinema
insert into learning.cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
insert into learning.cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
insert into learning.cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
insert into learning.cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
insert into learning.cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');

select * from  learning.cinema;

select * from learning.Cinema
where id%2 != 0 and description not in ('boring')
order by rating desc;