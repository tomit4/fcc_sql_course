## Null Values

In SQL, a cell with a `NULL` value indicates that the valuen is
<em>missing</em>. A `NULL` value is <em>very</em> different from a <em>zero
value</em>.

### Constraints

When creating a table we can define whether or not a field <em>can</em> or
<em>cannot</em> be `NULL`, and that's a kind of `constraint`.

We will cover constraints in more detail soon, for now, let's focus on `NULL`
values.

### Assignment

We didn't foce any constraints on our tables when we created them and it has
allowed for `NULL` entries to make their way into our table! Let's take a look
at our `transactions` table to see what those `NULL` values look like.

Write a query to `SELECT` all of the fields on all records of the `transactions`
table.

### Tip

Use the `*` (wildcard) syntax to select <em>all</em> fields.

### Observe

Notice that both the `transaction_type` and `was_successful` fields have `NULL`
values in all 3 records in the table (nulls are represented by blank cells in
our system). That's because we ran our migration in the previous
exercise `after` the 3 records were created!

**Answer:**

Sadly at this point, Lane forgot to have us actually insert these as part of the
program (truthfully he had this done before hand), you'll have to `INSERT` the
following data:
| id | recipient_id | sender_id | note | amount | wash_successful | transaction_type |
| --- | ------------ | --------- | -------------------------- | ------ | --------------- | ---------------- |
| 1 | 14 | 26 | Testing transaction! | 10.5 | | |
| 2 | | 4 | | | | |
| | 5 | | Oil change, full synthetic | 140.22 | | |

Running the standard `select * from transactions` command will yield:

```
sqlite> SELECT * FROM transactions;
```

```
id  recipient_id  sender_id  note                        amount  was_successful  transaction_type
--  ------------  ---------  --------------------------  ------  --------------  ----------------
1   14            26         Testing transaction!        10.5
2                 4
    5                        Oil change, full synthetic  140.22
```
