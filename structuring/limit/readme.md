## Limit

Sometimes we don't want to retrieve <em>every</em> record from a table. For
example, it's common for a production database table to have millions of rows,
and `SELECT`ing all fo them might crash your system! <em>The `LIMIT` keyword has
entered the chat</em>.

The `LIMIT` keyword can be used at the end of a `SELECT` statement to reduce the
number of records returned.

```sql
SELECT * FROM products WHERE product_name LIKE '%berry%' LIMIT 50;
```

The query above retrieves all the records from the `products` table where the
name contains the word <em>berry</em>. If we ran this query on the Facebook
database, it would almost certainly return a <em>lot</em> of records.

The `LIMIT` statement only allows the database to return <em>up to</em> 50
records matching the query. This means that if there aren't that many records
matching the query, the `LIMIT` statement will not have an effect.

### Assignment

A lot of users have been using <em>CashPal</em> to pay other users for lunch.
Let's take a look at a <em>sample</em> of that data.

Write a query that returns all rows and fields from the `transactions` table:

- Any records where the `note` field has the word <em>lunch</em> in it.
- The query should return at most `5` records.

**Answer:**

```sql
SELECT * FROM transactions WHERE note LIKE '%lunch%' LIMIT 5;
```
