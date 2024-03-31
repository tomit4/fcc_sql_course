## Join Practice

Joins take some time to get used to, but the key to understanding them and using
them effectively is <em>practice</em>!

### Multiple Joins

To incorporate data from more than <em>two</em> tables, you can utilize multiple
jolins to execute more complex queries!

```sql
SELECT *
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id
INNER JOIN regions
ON departments.region_id = regions.id;
```

### Assignment

Our front-end team is finalizing the <em>profile</em> page for <em>CashPal</em>.
We need to write a query that returns all the `user` data they need for an
individual user's profile. The query needs to return the following fields:

1. The user's `id`
2. The user's `name`
3. The user's `age`
4. The user's `username`
5. The user's country name, renamed to `country_name`
6. The sum of the user's transaction amounts, renamed to `balance`

Return only a single user record - specifically the one with `id=6`

**Answer:**

```sql
SELECT
    users.id,
    users.name,
    users.age,
    users.username,
    countries.name as country_name,
    sum(transactions.amount) as balance
    FROM users
    LEFT JOIN countries
    ON users.country_code = countries.countries_code,
    LEFT JOIN transactions
    ON transactions.user_id = users.id
    WHERE users.id = 6
    GROUP BY users.id;
```
