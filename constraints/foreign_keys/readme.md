## Foreign Keys

Foreign keys are what makes relational databases relational! Foreign keys define
the relationships <em>between</em> tables. Simply put, a `FOREIGN KEY` is a
field in one table that references another table's `PRIMARY KEY`.

### Creating A Foreignh Key In SQLite

Creating a `FOREIGN KEY` in SQLite happens at table creation! After we define
the table fields and constraints we add an additional `CONSTRAINT` where we
define the `FOREIGN KEY` and its `REFERENCES`.

Here's an example:

```sql
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    CONSTRAINT fk_departments
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
);
```

In this example, an `employee` has a `department_id`. The `department_id` must
be the same as the `id` field of a record from the `departments` table.

### Assignment

Our `users` table stores the country our users are from in a `country_code`
field. We need some additional data about countries like their name, but we
don't want to bloat our `users` table with all that country data.

The "locations" team at CashPal has created a "countries" table, and we can link
a user to their country by setting a foreign key in the `users` table.

Take a look at the code. There's an issue with the `INSERT` statements again!
Fix up the data so no foreign key constraints are violated. You'll need to
reference the `setup` code below (see create.sql).

**Answer:**

Because our foreign key "country_code" is a Foreign Key, that references our
"countries" table at "code" only the codes "US" or "IN" can be references,
otherwise an error occurs.

In the case of our test case, it passes an `INSERT`
statement where the second one includes a `country_code` field "IND"
instead of "IN", which we established in our create.sql as only referencing "US"
and "IN". Due to the Foreign Key Constraint we created when we created the
`users` table, the country_code field can only reference values that exist
within the `countries` table at the `code` column/field.

First let's create a new cashpal.db file and open it in sqlite cli. Then from
there, we'll run our create.sql script to establish our table with our initial
data:

```sh
touch cashpal.db && sqlite cashpal.db
```

```
sqlite> .read create.sql
```

Let's first take a look using `SELECT * FROM countries;` to see our populated data:

```
sqlite> select * from countries;
code  name
----  ------------------------
US    United States of America
IN    India
```

After that let's now run our foreign_keys.sql script, which includes INSERT
statements to our `users` table. Again, this should error as the Foreign Key
constraint requires that the users(country_code) text field have a value that
is within the countries(code) field.

```
sqlite> .read foreign_keys.sql
```

Which results in the error:

```
sqlite> .read foreign_keys.sql
Runtime error near line 13: FOREIGN KEY constraint failed (19)
```

Now, let's adjust our second `INSERT` statement in the `foreign_keys.sql` file
so that the `country_code` field is changed from the non-existent "IND" text to
the proper "IN" field (which <em>does</em> exist within the `countries` table).
Once that's done re-run the above command and check the `users` table, which
should now be populated with our users.

```
sqlite> .read foreign_keys.sql
sqlite> select * from users;
id  name   age  country_code  username  password  is_admin
--  -----  ---  ------------  --------  --------  --------
0   Jerry       US
1   Amit        IN
```
