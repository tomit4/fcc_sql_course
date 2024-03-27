## What Is SQL?

Structured Query Language, or [SQL](https://en.wikipedia.org/w/index.php?title=SQL), is the primary programming language used to manage and interact with [relational databases](https://en.wikipedia.org/w/index.php?title=Relational_database). SQL can perform various operatioins such as creating, updating, reading, and deleting records within a database.

### Cashpal

In this course, we will be building the database for a pretend PayPal clone
called <em>CashPal</em>! Storing information related to people's money,
transactions, and identity is very important! So we will need to make
sure we use proper conventions to build a safe, and reliable database
architecture that our users can rey on.

### Assignment

I have provided a simple SQL statement for you that retrieves some records from
a table. However there isn't a `people` table, the table in our database is
called `users`. Fix the bug by changing `people` to `users` within the `SELECT`
statement.

```sql
SELECT * FROM people;
```

Answer:

```sql
SELECT * FROM users;
```

NOTE: I created an sqlite database, users.db to ensure this table exists. You
can access this by invoking sqlite from the command line like so:

```sh
sqlite users.db
```

The create table command used was:

```sql
CREATE TABLE users(
id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
age INTEGER NOT NULL,
balance INTEGER NOT NULL,
is_admin INTENGER NOT NULL CHECK (is_admin IN (0, 1))
);
```

Then we populated using three different insert statements all more or less
looking like this:

```sql
INSERT INTO users (
name,
age,
balance,
is_admin)
VALUES (
'Darren Walker',
27,
200,
1);
```

Which when we invoke our new select statement looks like so:

```sql
SELECT * FROM users;
```

Which outputs:

```
id  name           age  balance  is_admin
--  -------------  ---  -------  --------
1   John Smith     28   450      1
2   Darren Walker  27   200      1
3   Jane Morris    33   496.24   0
```

And just for absolute clarity, if we then try to query the non-existent people table:

```sql
SELECT * FROM people;
```

We get this error message:

```
Parse error: no such table: people
```
