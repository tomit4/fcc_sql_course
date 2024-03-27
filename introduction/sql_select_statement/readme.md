## SQL SELECT STATEMENT

Let's write our own SQL statement from scratch! a `SELECT` statement is the most
common operation in SQL - often called a "query". `SELECT` retrieves data from
one or more tables. Standard `SELECT` statements do <em>not</em> alter the state
of the database.

```sql
SELECT id FROM users;
```

### SELECT A SINGLE FIELD

A `SELECT` statement begins with the keyword `SELECT` followed by the fields you
want to retrieve.

```sql
SELECT id FROM users;
```

### SELECT MULTIPLE FIELDS

If you want to select more than one field you can specify multiple fields
separated by commas.

```sql
SELECT id, name FROM users;
```

After specifying fields, you ned to indicate which table you want to pull the
records <em>from</em> using the `FROM` statement followed by the name of the
table. We'll talk more about tables later, but for now, you can think about them
like structs or objects. For example, the `users` table might have 3 fields.

- id
- name
- balance

And finally, <em>all</em> statements end with a semi-colon `;`.

### Assignment

The state of our <em>CashPal</em> `users` table is as follows:

| id  | name          | age | balance | is_admin |
| --- | ------------- | --- | ------- | -------- |
| 1   | John Smith    | 28  | 450     | 1        |
| 2   | Darren Walker | 27  | 200     | 1        |
| 2   | Jane Morris   | 33  | 496.24  | 0        |

It's very common to write queries that only return specific portions of data
from a table. Our HR team has requested a report asking for all the `name`s and
`balance`s of all of our users.

Write a query that retrieves all of the `name`s and `balance`s from the `users`
table.

**Answer:**

```sql
SELECT name, balance FROM users;
```

Which, when output from our sqlite cli interface, looks like this:

```
name           balance
-------------  -------
John Smith     450
Darren Walker  200
Jane Morris    496.24
```
