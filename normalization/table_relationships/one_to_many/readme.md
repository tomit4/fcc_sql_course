## Table Relationships

Relational databases are powerful because of the relationships between the
tables. These relationships help us to keep our databases clean and efficient.
A relationship between tables assumes that one of these tables has a `foreign
key` that references the `primary key` of another table.

### Types Of Relationships

There are 3 primary types of relationships in a relational database:

1. One-to-one
2. One-to-many
3. Many-to-many

<img src="./slide_01.png" />

### One-To-One

A `one-to-one` relationship most often manifests as a field or set of fields on
a row in a table. For example, a `user` will have exactly one `password`.

### One To Many

When talking about the relationships between <em>tables</em>, a one-to-many
relationship is probably the most commonly used relationship.

A one-to-many relationship occurs when a single record in one table is related
to potentially many records in another table.

Note that the one -> many relation only goes <em>one way</em>, a record in the
second table can <em>not</em> be related to multiple records in the first table!

#### Examples Of One-To-Many Relationships

- A `cumsters` table and a `orders` table. Each customer has `0`, `1`, or many
  orders that they've placed.
- A `users` table and a `transactions` table. Each `user` has `0`, `1`, or many
  transactions that they have taken part in.

### Assignment

It turns out that when we originally designed the CashPal database schema, we
assumed that users would only have a <em>singlye</em> country they lived in.
With digital nomads becoming a thing, it turns out many users have dual
citizenship.

Instead of a single `users` table where each user has a single `country_code`,
do the following:

- Remove the `country_code` field from the `users` table
- Create a new table called `countries` with 4 fields:

  - `id`: an integer
  - `country_code`: a string
  - `name`: a string
  - `user_id`: an integer foreign key to the `users` table's `id` field

```sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);
```

**Answer:**

```sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);


CREATE TABLE countries (
    id INTEGER PRIMARY KEY,
    country_code TEXT,
    name TEXT,
    FOREIGN KEY (user_id)
    REFERENCES users(id)
);
```
