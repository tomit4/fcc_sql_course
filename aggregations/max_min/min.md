## Min

The `min` function works the same as the `max` function but finds the
<em>lowest</em> value instead of the <em>highest</em> value.

```sql
SELECT product_name, min(price) FROM products;
```

This query returns the `product_name` and the `price` fields of the record with
the lowest `price`.

### Assignment

Use a `min` aggregation to find the `age` of our youngest <em>CashPal</em> user
in the United States in the `users` table.

**Answer:**

```sql
SELECT min(age) from users WHERE country_code = 'US';
```
