## Like

Sometimes we don't have the luxury of knowing <em>exactly</em> what it is we
need to query. Have you ever wanted to look up a song or a video but you only
remeber <em>part</em> of the name? SQL provides us an option for when we're in
situatioins `LIKE` this.

The `LIKE` keyword allows for the use of the `%` and `_` wildcard operators.
Let's focus on `%` first.

### % Operator

The `%` operator will match zero or more characters. We can use this operator
within our query string to find more than just exact matches depending on where
we place it.

### Product Starts With "Banana":

```sql
SELECT * FROM products
WHERE product_name LIKE 'banana%';
```

### Product Ends With "Banana":

```sql
SELECT * FROM products
WHERE product_name LIKE "%banana";
```

### Product Contains "Banana":

```sql
SELECT * FROM products
WHERE product_name LIKE "%banana%";
```

### Assignment

Our HR team is dealing with a ticket form one of our users but they are having
trouble pulling up their record in the database. They are pretty sure the user's
name starts with `Al`.

Write a query that returns all the fields for records where the user's `name`
starts with `Al`.

**Answer:**

```sql
SELECT * FROM users WHERE name LIKE "Al%";
```
