## Which Databases Use SQL?

SQL is just a query language. You typically use it to interact with a specific
database technology. For example:

- [SQLite](ttps://www.sqlite.org/index.html)
- [PostgreSQL](https://www.postgresql.org/)
- [MySQL](https://www.mysql.com/)
- [CockRoachDB](https://www.cockroachlabs.com/)
- [Oracle](https://www.oracle.com/database/)
- etc...

Although many different databases use the SQL <em>language</em>, most of them
will have their own <em>dialect</em>. It's <em>critical</em> to understand that
<em>not</em> all databases are created equal. Just because one SQL-compatible
database does things a certain way, that doesn't mean every SQL-compatible
database will follow those exact same patterns.

### We're Using SQLite

In this course, we'll be using [SQLite](https://www.sqlite.org/index.html)
specifically. SQLite is great for embedded projects, web browsers, and toy
projects. It's lightweight, but has limited functionality compared to the likes
of PostgreSQL or MySQL - two of the more common production SQL technologies.

We'll point out to you whenever some functionality we're working with is unique
to SQLite!

### Assignment

One way in which SQLite is a bit different is that it stores Boolean values as
integers - the integers `0` and `1`.

- `0` = `false`
- `1` = `true`

Select all of the `id`s, `name`s, and `is_admin` flags from the `users` table.

**Answer:**

```sql
SELECT id, name, is_admin FROM users;
```

which outputs:

```
id  name           is_admin
--  -------------  --------
1   John Smith     1
2   Darren Walker  1
3   Jane Morris    0
```
