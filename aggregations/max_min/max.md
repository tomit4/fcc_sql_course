## Max

As you may expect, the `max` function retrieves the <em>largest</em> value from
a set of values. For example:

```sql
SELECT max(price) FROM products;
```

This query looks through all of the prices in the `products` table and returns
the price with the largest price value. Remember it only returns the `price`,
not the rest of the record! You always need to specify each field you want a
query to return.

### Assignment

Use a `max` aggregation to find the largest amount of money <em>received</em> by
a Jill (`user_id` of `4`). Return her `user_id` and that amount.

Table name: `transactions`

Column names:

- `id`
- `user_id`
- `recipient_id`
- `sender_id`
- `note`
- `amount`
- `was_successful`

#### A Note On Schema

- The `sender_id` will be present for any transactions where the user in
  question (`user_id`) is <em>receiving</em> money (from the sender).
- The `recipient_id` will be present for any transactions where the user in
  question (`user_id`) is <em>sending</em> money (to the recipient).

**Answer:**

```sql
SELECT max(amount), user_id FROM transactions WHERE user_id = 4;
```
