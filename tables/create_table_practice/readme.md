## Create Table Practice

In most relational databases a single table isn't enough to hold all the data we
need! We <em>usually</em> create a table-per-entity. For example, a social media
application might have the following tables:

- `users`
- `posts`
- `comments`
- `likes`

### Assignment

We need a table that tracks the transactions between our `CashPal` users.

Create the `transactions` table with the following fields:

1. id- `Integer`
2. recipient_id - `Integer`
3. sender_id - `Integer`
4. note - `Text`
5. amount - `Integer`

**Answer:**

```sql
CREATE TABLE transactions(
    id INTEGER,
    recipient_id INTEGER,
    sender_id INTEGER,
    note TEXT,
    amount INTEGER
);
```

```
sqlite> pragma table_info(transactions);
```

Which Returns:

```
cid  name          type     notnull  dflt_value  pk
---  ------------  -------  -------  ----------  --
0    id            INTEGER  0                    0
1    recipient_id  INTEGER  0                    0
2    sender_id     INTEGER  0                    0
3    note          TEXT     0                    0
4    amount        INTEGER  0                    0
Run Time: real 0.001 user 0.000000 sys 0.000125
```
