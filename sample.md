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
