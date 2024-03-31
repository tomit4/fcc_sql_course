## Multi-Column Indexes

Multi-column indexes are useful for the exact reason you might think - they
speed up lookups that depend on <em>multiple</em> columns.

### Create Index

```sql
CREATE INDEX first_name_last_name_age_idx
ON users (first_name, last_name, age);
```

A multi-column index is sorted by the first column first, the second column
next, and so forth. A lookup on <em>only</em> the first column in a multi-column
index gets almost all of the performance improvements that it would get from
its own single-column index. However, lookups on only the second or third column
will have very degraded performance.

### Rule Of Thumb

Unless you have specific reasons to do something special, only add multi-column
indexes if you're doing frequent lookups on a specific combination of columns.

### Assignment

We frequently need to lookup all the transactions between 2 specific users!
There's a page on the website that allows a user to lookup all the payments
they've made to a friend by that friend's name.

Add an index on the `user_id` and `recipient_id` columns called
`user_id_recipient_id_idx` to speed up our app!

Make sure the `user_id` is the first column in the index so that we can also use
this index to speed up our queries that only care about the `user_id`.

```sql
CREATE TABLE transactions (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    recipient_id INTEGER,
    sender_id INTEGER,
    amount INTEGER
);

CREATE INDEX user_id_recipient_id_idx
ON transactions (user_id, recipient_id);
```
