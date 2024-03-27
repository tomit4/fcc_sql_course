## Primary Keys

A <em>key</em> defines and protects relationships between tables. A [primary key](https://en.wikipedia.org/wiki/Primary_key?useskin=vector) is a special column that uniquely identifies records within a table. Each table can have one, and only one, primary key.

### Your Primary Key Will Almost Always Be The "ID" Column

It's <em>very</em> common to have a column named `id` on each table in a
database, and that `id` is the primary key for that table. No two rows in that
table can share an `id`.

A `PRIMARY KEY` constraint can be explicitly specified on a column to ensure
uniqueness, rejecting any inserts where you attempt to create a duplciate ID.

### Assignment

Run the code. Notice that there's a bug - there is a violation of a `PRIMARY KEY` constraint on the id column. <em>Fix the data that's being inserted<em>.

When working with integer ids, it's best to increment the `id` by `1` for each
successive insert. Follow this convention when fixing the bug.

```sql
INSERT INTO users (
    id,
    name,
    age,
    username,
    password,
    is_admin
) VALUES (
    0,
    "Rudolf",
    33,
    "rudolf1234",
    "thisisnotsecure",
    false
);

INSERT INTO users (
    id,
    name,
    age,
    username,
    password,
    is_admin
) VALUES (
    0,
    "Jerry",
    25,
    "jerrysmith",
    "mypasswordis1234",
    true
);

SELECT * FROM users;
```

ERROR received:

```
constraint failed: UNIQUE constraint failed users.id
```

**Answer:**

NOTE: I have once again provided a small .sql script `primary_keys.sql`, which
can run these `INSERT` statements to demonstrate. I have adjusted the script to
also include the `country_code` field as it has the `NOT NULL` constraint.

Running this with both `id` fields having the value of `0` will cause this
error:

```
sqlite> .read primary_keys.sql
Runtime error near line 19: UNIQUE constraint failed: users.id (19)
```

Thusly we need to change the scond `INSERT` statement's id value to `1` to get
this to pass. If we then run our usual `SELECT * FROM users`; we should see our
table populated with our new data:

```
sqlite> select * from users;
id  name    age  country_code  username    password          is_admin
--  ------  ---  ------------  ----------  ----------------  --------
0   Rudolf  33   USA           rudolf1234  thisisnotsecure   0
1   Jerry   25   USA           jerrysmith  mypasswordis1234  1
```
