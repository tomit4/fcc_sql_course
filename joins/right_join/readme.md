## Right Join

A `RIGHT JOIN` is, as you may expect, the opposite of a `LEFT JOIN`. It returns
all records from `table_b` regardless of matches, and all matching records
between the two tables.

<img src="./slide_01.png" />

### SQLite Restriction

SQLite does <em>not</em> support right joins, but many dialects of SQL do! If
you think about it, a `RIGHT JOIN` is just a `LEFT JOIN` with the order of the
tables switched, so it's not a big deal that SQLite doesn't support the syntax.
