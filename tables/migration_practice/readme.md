## Migration Practice

When writing <em>reversible</em> migrations, we use the terms "up" and "down" migrations. An "up" migration is simply the set of changes you want to make, like altering/removing/adding/editing a table in some way. A "down" migration includes the changes that would <em>revert</em> any of the "up" migration's changes.

### Assignment

Add additional columns to the `transactions` table. We want to know whether or not the transaction was successfully completed between two users. We also want our database to track the <em>type</em> of transaction.

Our `transactions` table looks like this at the moment:

| cid | name         | type    | notnull | dflt_value | pk  |
| --- | ------------ | ------- | ------- | ---------- | --- |
| 0   | id           | INTEGER | 0       |            | 0   |
| 1   | recipient_id | INTEGER | 0       |            | 0   |
| 2   | sender_id    | INTEGER | 0       |            | 0   |
| 3   | note         | TEXT    | 0       |            | 0   |
| 4   | amount       | INTEGER | 0       |            | 0   |

Complete the following `up` migration:

- Add the `boolean` `was_successful` column to the `transactions` table.
- Add the `TEXT` `transaction_type` column to the `transactions` table.

**Answer:**

NOTE: For this I created a .sql script file called `migration.sql` which holds
our `ALTER` statements. To run this script, open up the sqlite cli and enter:

```
sqlite> .read migration.sql
```

Afterwards which running the `pragma table_info('transactions')` statement will
yield your new `transactions` table structure:

```
sqlite> pragma table_info('transactions');
```

```
cid  name              type     notnull  dflt_value  pk
---  ----------------  -------  -------  ----------  --
0    id                INTEGER  0                    0
1    recipient_id      INTEGER  0                    0
2    sender_id         INTEGER  0                    0
3    note              TEXT     0                    0
4    amount            INTEGER  0                    0
5    was_successful    BOOLEAN  0                    0
6    transaction_type  TEXT     0                    0
```
