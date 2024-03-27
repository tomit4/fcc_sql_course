## Comparing SQL Databases

Let's dive deeper and talk about some of the popular SQL databases and what
makes them different from one another. Some of the most popular SQL Databases
right now are:

- [PosgreSQL](https://www.postgresql.org/)
- [MySQL](https://www.mysql.com/)
- [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- [SQLite](https://www.sqlite.org/index.html)
- [And many others](https://db-engines.com/en/ranking/relational+dbms)

<em>Source: [db-engines.com](https://db-engines.com/en/)</em>

While all of these Databases use SQL, each database defines specific rules,
practices, and strategies that separate them from their competitors.

### SQLite VS postgresql

Personally, SQLite and PostgreSQL are my favorites from the list above.
Postgres is a very powerful, open-source, production-ready SQL database.
SQLite is a lightweight, embeddable, open-source database. I usually
choose one of these technologies if I'm doing SQL work.

SQLite is a serverless database management system (DBMS) that has the ability to
run within applications, whereas PostgreSQL uses a Client-Server model and
requires a server to be installed and listening on a network, similar to an HTTP
server.

See a full [comparison here](https://db-engines.com/en/system/PostgreSQL%3BSQLite).

### We Use SQLite In This Course

In this course, we will be working with SQLite, a lightweight and simple
database. For most backend web servers, PostgreSQL is a more production-ready
option, but SQLite is great for learning and for small systems.

### Assignment

Let's take a look at how SQLite does <em>not</em> enforce type-checking. Notice
that within the `CREATE TABLE` statement, `name` is defined as a `TEXT`field.

1. Run the code and take a look at the results (don't submit yet!)

2. On line `3`, change the text string `'Montgomery Burns' to the integer `1`
   and run the code

Notice how even though we defined `name` as a `TEXT` field, SQLite allowed us to
use an integer! Like Python and JavaScript, SQLite has a loose type system...
You can store any type of data in any field, regardless of how you defined it.
<em>Remember: just because you can do something, doesn't mean you should!</em>

To pass the assignment, submit the code in the altered state, where the record
with `id` `2` has a `name` of `1`.

```sql
CREATE TABLE users (
id INTEGER,
name TEXT,
age INTEGER);

INSERT INTO users (
id,
name,
age)
VALUES (
1,
'John Doe',
21);

INSERT INTO users (
id,
name,
age)
VALUES (
2,
1,
88);

SELECT * FROM users;
```

Which returns:

```
id  name      age
--  --------  ---
1   John Doe  21
2   1         88
Run Time: real 0.000 user 0.000017 sys 0.000102
```
