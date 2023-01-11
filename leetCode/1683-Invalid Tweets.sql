Create table If Not Exists Learning.Tweets(tweet_id int, content varchar(50));
Truncate table Learning.Tweets;
insert into Learning.Tweets (tweet_id, content) values ('1', 'Vote for Biden');
insert into Learning.Tweets (tweet_id, content) values ('2', 'Let us make America great again!');


select * from Learning.Tweets;

select tweet_id from Learning.Tweets
where length(content) >=15;
