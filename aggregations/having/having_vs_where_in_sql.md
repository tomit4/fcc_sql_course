## Having VS Where In SQL

It's fairly common for develoeprs to get confused about the difference between
the `HAVING` and the `WHERE` clauses - they're pretty similar after all.

The difference is fairly simple in actuality.

- A `WHERE` condition is applied to <em>all</em> the data in a query
  <em>before</em> it's grouped by a `GROUP BY` clause.
- A `HAVING` condition is only applied to the <em>grouped rows</em> that are
  returned <em>after</em> a `GROUP BY` is applied.

This means that if you want to filter on the result of an aggregation, you need
to use `HAVING`. If you want to filter on a value that's present in the raw
data, you should use a simple `WHERE` clause.
