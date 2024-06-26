## Constraints

A `constraint` is a rule we create on a database that <em>enforces</em> some
specific behavior. For example, setting a `NOT NULL` constraint on a column
ensures that the column will not accept `NULL` values.

If we try to insert a `NULL` value into a column with the `NOT NULL` constraint,
the insert will fail with an error message. Constraints are extremely useul
when we need to <em>ensure</em> that certain kinds of data exist within our
database.

### Defining A NOT NULL Constraint

The `NOT NULL` constraint can be added directly to the `CREATE TABLE` statement.

```sql
CREATE TABLE employees(
    id INTEGER PRIMARY KEY,
    name TEXT UNIQUE,
    title TEXT NOT NULL
);
```

### SQLite Limitation

In other dialects of SQL you can `ADD CONSTRAINT` within an `ALTER TABLE`
statement. SQLite does <em>not</em> suppor this feature so when we create our
tables we need to make sure we specify all the constraints we want! Here's a
[list of SQL Features](https://www.sqlite.org/omitted.html) SQLite does not implement in case you're curious.

### Assignment

Thankfully all the tables we have created for <em>CashPal</em> up to this point
have been for testing purposes! Now that we have a better understanding of
constraints, let's rebuild our database with the proper constraints and tables!

Create the `USERS` table with the following fields and constraints:

- `id` - `INTEGER`, `PRIMARY KEY`
- `name` - `TEXT`, `NOT NULL`
- `age` - `INTEGER`, `NOT NULL`
- `country_code` - `TEXT`, `NOT NULL`
- `username` - `TEXT`, `UNIQUE`
- `password` - `TEXT`, `NOT NULL`
- `is_admin` - `BOOLEAN`

**Answer:**

To ensure that the creation of this database is created correctly, I have
written a sql script called `create_with_constraints.sql`. To run it, first
create a new database called `cashpal.db` and then use the sqlite cli to run it.
From within the cli, run `.read create_with_constraints.sql` and it will create
the table. you can query it with the standard `pragma table_info('users);` to
ensure it was created.

```sh
touch cashpal.db && sqlite cashpal.db
```

```
sqlite> .read create_with_constraints.sql
sqlite> pragma table_info(users);
```

Which outputs:

```
cid  name          type     notnull  dflt_value  pk
---  ------------  -------  -------  ----------  --
0    id            INTEGER  0                    1
1    name          TEXT     1                    0
2    age           INTEGER  1                    0
3    country_code  TEXT     1                    0
4    username      TEXT     0                    0
5    password      TEXT     1                    0
6    is_admin      BOOLEAN  0                    0
```
