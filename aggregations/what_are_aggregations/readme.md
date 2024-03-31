## What Are Aggregations?

An "aggregation" is a <em>single</em> value that's derived by combining
<em>several</em> other values. We performed an aggregation earlier when we used
the `count` statement to count the number of records in a table..

### Why Aggregations?

Data stored in a database should generally be stored [raw](https://en.wikipedia.org/wiki/Raw_data). When we need to calculate some additional data from the raw data, we can use <em>aggregation</em>.

Take the following `count` aggregation as an example:

```sql
SELECT COUNT(*) FROM products WHERE quantity = 0;
```

This query returns the number of products that have a `quantity` of `0`. We
<em>could</em> store a count of the products in a separate database table, and
increment/decrement it whenever we make changes to the `products` table - but
that would be <em>redundant</em>.

It's <em>much simpler</em> to store the products in a single place (we call this
a [single source of
truth](https://en.wikipedia.org/wiki/Single_source_of_truth) and run an
aggregation when we need to derive additional information from the raw data.

### Assignment

The front-end team is building a dashboard page in <em>CashPal</em>. We need to
be able to provide them the number of successful transactions for a given user.

Return the number of `transactions` where the `user_id` is `6`, and
`was_successful` is `true`.

**Answer:**

```sql
SELECT COUNT(*) FROM transactions WHERE user_id = 6 AND was_successful = true;
```
