## No Tables

When working on a back-end application, this doesn't come up often, but it's
important to remeber that <b>SQL is a full programming language</b>. We usually
use it to interact with data stored in tables, but it's quite flexible and
powerful.

For example, you can `SELECT` information that's simply calculated, with no
tables necessary.

```sql
SELECT 5 + 10 AS sum;
```

### Assignment

Finance has found that people who have lived longer than `40` years need to
start thinking about retirement. Write a query that returns all the `users` who
are more than `40` years old. Unfortunately, this table awkwardly stores age in
<em>days</em> in the `age_in_days`field.

Use a subquery to convert `years` -> `days` and filter on that.
Assume every year has `365` days.

**Answer:**

```sql
SELECT *
FROM users
WHERE age_in_days > (40 * 365);
```
