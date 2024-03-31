## Count

We can use a `SELECT` statement to get a <em>count</em> of the records within a
table. This can be very useful when we need to know <em>how many</em> records
there are, but we don't particularly care what's in them.

Here's an example in SQLite:

```sql
SELECT count(*) FROM employees;
```

The `*` in this case refers to a column name. We don't care about the count of a
<em>specific column</em> - we want to know the number of <em>total records</em>
so we can use the wildcard (\*).

### Assignment

Here is the current state of our `users` table:

| id  | name     | age | country_code | username  | password       | is_admin |
| --- | -------- | --- | ------------ | --------- | -------------- | -------- |
| 0   | Jerry    | US  |
| 1   | Amit     | IN  |
| 2   | Samantha | 29  | BR           | Sammy93   | addingRecords! | 0        |
| 3   | David    | 34  | US           | DavidDev  | insertPractice | 0        |
| 4   | John     | 39  | CA           | Jjdev21   | welovebootdev  | 0        |
| 5   | Ram      | 42  | IN           | Ram11c    | thisissocool   | 0        |
| 6   | Hunter   | 30  | US           | Hdev92    | backtobasics   | 0        |
| 7   | Allan    | 27  | US           | Alires    | iLovecheese    | 0        |
| 8   | Lance    | 20  | US           | LanChr    | b00tdevisbest  | 0        |
| 9   | Tiffany  | 28  | US           | Tifferoon | autoincrement  | 1        |

Our business strategy team at CashPal wants to know how many users of the app we
have. We can't use the `id` number to calcualte the count because user accounts
can be deleted!

Use a `count` statement to retrieve the number of records in the `users` table.

**Answer:**

```
sqlite> select count(*) from users;
count(*)
--------
10
```
