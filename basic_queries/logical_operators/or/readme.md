## Or

As you've probably guessed, if the logical `AND` operator is supported, the `OR`
operator is probably supported as well.

```sql
SELECT product_name, quantity, shipment_status
FROM products
WHERE shipment_stats = 'out of stock'
OR quantity BETWEEN 10 AND 100;
```

This query retrieves records where <em>either</em> the `shipment_status`
condition <em>OR</em> the `quantity` condition are met.

### Order Of Operations

You can group logical operations with parentheses to specify the [order of
operations](https://en.wikipedia.org/wiki/Order_of_operations).

```sql
(this AND that) OR the_order
```

### Assignment

The laws have changed again! Now we need to see how many affected users meet
this criteria:

> Users who are from the United States or Canada, and are under 18

Write a query that retrieves the <em>count</em> of every user that matches the
conditions above.

**Answer:**

```sql
SELECT count(*) FROM users
WHERE (country_code = 'US' OR country_code = 'CA')
AND age < 18;
```
