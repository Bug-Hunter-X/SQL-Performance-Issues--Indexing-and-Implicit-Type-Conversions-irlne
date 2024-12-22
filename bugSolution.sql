To address the `ORDER BY` performance problem, create an index on `columnA`:

```sql
CREATE INDEX idx_columnA ON large_table (columnA);
```

This allows the database to efficiently locate and sort the relevant rows without scanning the entire table. For `ROW_NUMBER()`, ensure that there is an appropriate index on the column you're partitioning by or that the query is structured efficiently to avoid unnecessary table scans.

To solve the implicit type conversion issue, use explicit type casting:

```sql
SELECT * FROM my_table WHERE CAST(columnB AS UNSIGNED) = 123; 
```

This ensures that the comparison is performed between two integers, thereby preventing any unexpected behavior.   Always explicitly cast data types in comparisons to avoid subtle bugs.  Another option to avoid implicit conversions would be to convert the numeric value to a string for comparison, e.g.:

```sql
SELECT * FROM my_table WHERE columnB = '123';
```

This ensures the comparison is done consistently between strings. Choose the appropriate method based on your specific data and the desired matching logic.