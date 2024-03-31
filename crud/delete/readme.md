## Delete

When a user deletes their account on Twitter, or deletes a comment on a YouTube
video, that data needs to be removed from its respective database.

### Delete Statement

A `DELETE` statement removes a record from a table that match the `WHERE`
clause. As an example:

```sql
DELETE FROM employees WHERE id=251;
```

This `DELETE` statement removes all records from the `employees` table that have
an id of `251`!

### A Note Of Caution!

A simple `DELETE` statement without a `WHERE` clause will <em>delete the entire
table</em> you specify! So be particularly careful when invoking `DELETE`
statements on your database. The following would delete your <em>entire</em>
`employees` table:

```sql
DELETE FROM employees;
```

### Assignment

Samantha, one of our <em>CashPal</em> users, has opted to delete her account and
stop using our app... which makes us sad. Anyways, we need to remove her record
from the database!

```sql
DELETE FROM users WHERE id=2;
```
