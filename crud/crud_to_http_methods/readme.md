## CRUD

CRUD is an acronym that stands for `CREATE`, `READ`, `UPDATE`, and `DELETE`.
These four operations are the bread and butter of nearly every database you will
create.

### HTTP AND CRUD

The CRUD operations correlate nicely with the HTTP methods we learned in the
[Learn HTTP](https://www.boot.dev/learn/learn-http) course.

- `HTTP POST` - `CREATE`
- `HTTP GET` - `READ`
- `HTTP PUT` - `UPDATE`
- `HTTP DELETE` - `DELETE`

### Assignment

We've created a table for you called `crud`, it's a toy table we're using for
interview practice at CashPal.

Determines which SQL command can be used for a `READ` operatioin and use it to
<em>read</em> all the fields in all the records in the `crud` table!

**Answer**

Very simple:

```sql
SELECT * FROM crud;
```
