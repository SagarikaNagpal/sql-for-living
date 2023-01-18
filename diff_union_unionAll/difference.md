# Difference between Union and Union all
The only difference between Union and Union All is that Union extracts the rows that are being specified in the query while Union All extracts all the rows including the duplicates (repeated values) from both the queries.

UNION Example:

    SELECT 'foo' AS bar UNION SELECT 'foo' AS bar
Output: 
    
|bar|
:---:
|foo|

UNION ALL example:

    SELECT 'foo' AS bar UNION ALL SELECT 'foo' AS bar

Result:
----
|bar|
:---:
|foo|
|foo|
