## Distinct

Sometimes we want to retrieve records from a table without getting back any
duplicates.

For example, we may want to know all the different companies our employees have
worked at previously, but we don't want to see the same company multiple times
in the report.

### Select Distinct

SQL offers us the `DISTINCT` keyword that removes duplicate records from the
resulting query.

```sql
SELECT DISTINCT previous_company FROM employees;
```

This only returns one row for each unique `previous_company` value.

### Assignment

<em>CashPal</em> executives want to know how many countries we have customers
in. We store `country_code` data as a column in the `users` table.

Run a `DISTINCT` query to get all the unique `country_code`s from the `users`
table.

**Answer:**

```sql
SELECT DISTINCT country_code FROM users;
```

```
sqlite> select distinct country_code from users;
country_code
------------
US
IN
CA
```
