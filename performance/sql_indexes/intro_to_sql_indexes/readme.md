## SQL Indexes

An index is an in-memory structure that ensures that queries we run on a
database are <em>performant</em>, that is to say, they run <em>quickly</em>. If
you can remember back to the data structures course, most database indexes are
just [binary trees](https://en.wikipedia.org/w/index.php?title=Binary_tree)! The
binary tree is stored in [ram](https://en.wikipedia.org/wiki/Random-access_memory) instead of on [disk](https://en.wikipedia.org/w/index.php?title=Hard_disk_drive), and it makes it easy to lookup the location of an entire row.

`PRIMARY KEY` columns are indexed by default, ensuring you can look up a row by
its `id` very quickly. However, if you have other columns that you want to be
able to do quick lookups on, you'll need to <em>index</em> them.

### Create Index

```sql
CREATE INDEX index_name ON table_name (column_name);
```

It's fairly common to name an index after the column it's created on with a
suffix `_idx`.

### Assignment

As it turns out, the front-end frequently finds itself in a state where it knows
a user's `email` but not their `id`. Let's add an index to the `email` field
called `email_idx`.

**Answer:**

```sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    email TEXT,
    name TEXT,
    age INTEGER
);

CREATE INDEX email_idx ON users (email);
```
