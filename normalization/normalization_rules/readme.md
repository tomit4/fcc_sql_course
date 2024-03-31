## 1st Normal Form

1. Every row must have a unique primary key
2. There can be no nested tables

**Example:**

Does NOT adhere to 1st Normal Form:
| name | age |
| ---------- | --- |
| Lane Wagner | 17 |
| Lane Wagner | 17 |

Adheres to 1st Normal Form:

| id  | name        | age |
| --- | ----------- | --- |
| 1   | Lane Wagner | 17  |
| 2   | Lane Wagner | 17  |

## 2nd Normal Form

1. Must adhere to 1st Normal Form
2. All columns that are not part of the primary key must only be dependent on the
   entire primary key

**Example:**

Adheres to 1st Normal Form, but not 2nd Normal Form (first_init is reliant on
first_name but not last_name)

| first_name | last_name | first_init |
| ---------- | --------- | ---------- |
| Lane       | Small     | L          |
| Lane       | Brewer    | L          |
| Allan      | Small     | A          |

If, however, we were to remove the first_init column and map the first_name in a
secondary table, we could adhere to this 2nd Normal Form constraint like so:

| first_name | last_name |
| ---------- | --------- |
| Lane       | Small     |
| Lane       | Brewer    |
| Allan      | Small     |

| first_name | first_init |
| ---------- | ---------- |
| Lane       | L          |
| Allan      | A          |

## 3rd Normal Form

1. Must adhere to the 1st and 2nd Normal Form
2. All the columns not in the primary key are dependent ONLY on the primary key

**Example:**

This table does technically adhere to 2nd Normal Form because our Primary Key is
the `id` and not the `first_name`, thusly `first_init` does not rely on the
`first_name` as its primary key. It, however, does NOT adhere to the 3rd Normal
Form constraint, as it relies on BOTH the primary key (`id`) as well as the
`first_name` field's data.

| id  | first_name | last_name | first_init |
| --- | ---------- | --------- | ---------- |
| 1   | Lane       | Small     | L          |
| 2   | Lane       | Brewer    | L          |
| 3   | Allan      | Small     | A          |

The way to fix it is pretty much identical to the fix demonstrated in the 2nd
Normal Form Example:

| id  | first_name | last_name |
| --- | ---------- | --------- |
| 1   | Lane       | Small     |
| 2   | Lane       | Brewer    |

| first_name | first_init |
| ---------- | ---------- |
| Lane       | L          |
| Allan      | A          |

## Boyce Codd Normal Form

1. Must adhere to the 1st, 2nd, and 3rd Normal Forms
2. A column that IS part of the primary key may NOT be dependent on a column
   that is NOT part of the primary key

**Example:**

Looking closely, we can see that this following table technically follows all
the previous 3 Normal Form Constraints. If we were to try to create a primary
key using only the data here, we have a few candidates, we could use the `name`
field (but this is unlikely to stay unique for long). We could use a combination
of the `release_year` and `sales` fields as the combination of the data within them
as of right now does create unique values, which can be used as a primary key.

HOWEVER, there is a problem here if we do that, even if our data set is limited
to just these 4 rows, which is that the `release_date` column's data is RELIANT
on the `release_year` column's data, causing a redundancy, which, as you can
ascertain from the previous three NF, is highly discouraged.

| release_year | release_date | sales | name            |
| ------------ | ------------ | ----- | --------------- |
| 2001         | 2001-01-02   | 100   | Kiss me tender  |
| 2001         | 2001-02-04   | 200   | Bloody Mary     |
| 2002         | 2002-04-14   | 100   | I wanna be them |
| 2002         | 2002-06-24   | 200   | He got me       |

We can fix this simply by not making `release_date` dependant on `release_year`,
removing the year specific data from the `release_date` rows. To be concise,
we'll also change the semantic naming of `release_date` to `release_month_day`:

| release_year | release_month_day | sales | name            |
| ------------ | ----------------- | ----- | --------------- |
| 2001         | 01-02             | 100   | Kiss me tender  |
| 2001         | 02-04             | 200   | Bloody Mary     |
| 2002         | 04-14             | 100   | I wanna be them |
| 2002         | 06-24             | 200   | He got me       |

### A Note on Relevancy

Lane points out that these Normal Forms Constraints are largely an academic
exercise to prove a concept. In practice, keeping these constraints in mind is
more a way to ensure a general best practice, which is to BE WARY OF DUPLICATING
DATA. This will make your databases queries more concise, more performant, and less
error prone.
