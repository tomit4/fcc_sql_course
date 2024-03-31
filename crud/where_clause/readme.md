## Where Clause

In order to keep learning about CRUD operations in SQL, we need to learn how to
make the instructions we send to the database more specific. SQL accepts a
`WHERE` statement within a query that allows us to be very specific with our
instructions.

If we were unable to specify the specific record we wanted to `READ`, `UPDATE`,
or `DELETE` making queries to a database would be very frustrating, and very
inefficient.

### Using A Where Clause

Say we had <em>over 9000</em> records in our `users` table. We often want to
look at specific user data within that table without retrieving <em>all</em> the
other records in the table. We can use a `SELECT` statement followed by a `WHERE` clause to specify which records to retrieve. The `SELECT` statement stays the same, we just <em>add</em> the `WHERE` clause to the end of the `SELECT`. Here's an example:

```sql
SELECT name FROM users WHERE power_level >= 9000;
```

### Assignment

We need to know the `username` of all users in our `users` table that have admin
privileges! Retrieve them.

```sql
SELECT username FROM users WHERE is_admin = true;
```
