## Creating A Table

The `CREATE TABLE` statement is used to create a new table in a database.

### "CREATE TABLE" Statement

To create a table, use the `CREATE TABLE` statement followed by the name of the
table and the fields you want in the table.

```sql
CREATE TABLE employees (id INTEGER, name TEXT, age INTEGER, is_manager BOOLEAN, salary INTEGER);
```

Each field name is followed by its <em>datatype</em>. We'll get to data types in
a minute.

It's also acceptable and common to break up the `CREATE TABLE` statement with
some whitespace like this:

```sql
CREATE TABLE employees (
    id INTEGER,
    name TEXT,
    age INTEGER,
    is_manager BOOLEAN,
    salary INTEGER
);
```

### Assignment

Let's begin building a table for `CashPal` database! Create the `people` table
with the following fields:

1. id - `Integer`
2. handle - `Text`
3. name - `Text`
4. age -`Integer`
5. balance - `Integer`
6. is_admin - `boolean`

#### > [!TIP]

> The `pragma table_info(TABLENAME);` command returns information about a table
> and its fields. You don't need to edit this line, I just thought you might be
> curious.

**Answer:**

```sql
CREATE TABLE people (
    id INTEGER,
    handle TEXT,
    name TEXT,
    age INTEGER,
    balance INTEGER,
    is_admin BOOLEAN
);
```

```
sqlite> pragma table_info(people);
```

Returns:

```
cid  name      type     notnull  dflt_value  pk
---  --------  -------  -------  ----------  --
0    id        INTEGER  0                    0
1    handle    TEXT     0                    0
2    name      TEXT     0                    0
3    age       INTEGER  0                    0
4    balance   INTEGER  0                    0
5    is_admin  BOOLEAN  0                    0
```
