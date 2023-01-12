# Select statement: 
Selection of required row, the data which is returned as output is known as result set.
# Insert Command
Insert into TABLENAME (Col Name) values (values(sep by required delimeter))
# Update Command
Update Table name
set col name(which value you want to set)
where col name = old value

# Delete command
Delete from table where condition;

# Null First/Null Last
Similarly to SQLite, MySQL treats NULL values as lower than any non-NULL value; thus, by default, it puts these values first when sorting in ascending order and last when sorting in descending order. However, MySQL does not support the NULLS FIRST / NULLS LAST options, which makes it more challenging to change the default behavior.

# cumulative distribution:
'https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-cume_dist-function/'

it calculates the relative position of a value in a group of values.
    

    select 
    name,weight,cast(cume_dist() over(order by weight)*100 as int)
    from cats 

# SUM, COUNT, and AVG:
When using window functions, you can apply the same aggregates that you would under normal circumstances—SUM, COUNT, and AVG. The easiest way to understand these is to re-run the previous example with some additional functions. Make

    SELECT start_terminal, duration_seconds,
       SUM(duration_seconds) OVER
         (PARTITION BY start_terminal) AS running_total,
       COUNT(duration_seconds) OVER
         (PARTITION BY start_terminal) AS running_count,
       AVG(duration_seconds) OVER
         (PARTITION BY start_terminal) AS running_avg
    `FROM tutorial.dc_bikeshare_q1_2012
    WHERE start_time < '2012-01-08'