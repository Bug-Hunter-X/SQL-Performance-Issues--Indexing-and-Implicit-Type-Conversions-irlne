# SQL Performance and Type Conversion Bugs

This repository demonstrates two common yet subtle SQL errors:

1. **Inefficient `ORDER BY` with `LIMIT` and `OFFSET`:**  Using these clauses without proper indexing on the `ORDER BY` column can lead to significant performance degradation for large tables. 
2. **Implicit type conversions in `WHERE` clauses:**  Implicit conversions between data types can result in unexpected query outcomes.  Explicit type casting is crucial for avoiding such issues.

The `bug.sql` file contains examples of these errors, while `bugSolution.sql` provides solutions and best practices.