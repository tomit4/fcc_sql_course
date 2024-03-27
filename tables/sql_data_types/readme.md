## SQL Data Types

SQL as a language can support many different data types. However, the datatypes
that <em>your database management system ([DBMS](https://en.wikipedia.org/w/index.php?title=Database&useskin=vector#Database_management_system))</em> supports will vary depending on the specific database you're using.

### SQLite Data Types

Let's go over the [data types supported by SQLite](https://sqlite.org/datatype3.html): and how they are stored.

1. `NULL` - Null value.
2. `INTEGER` - A signed integer stored in 0,1,2,3,4,6, or 8 bytes.
3. `REAL` - Floating point value stored as an 64-bit [IEEE floating point number](https://en.wikipedia.org/wiki/IEEE_754).
4. `TEXT` - Text string stored using database encoding such as [UTF-8](https://en.wikipedia.org/wiki/UTF-8)
5. `BLOB` - Short for [Binary large object](https://en.wikipedia.org/w/index.php?title=Object_storage) and typically used for images, audio, or other multimedia.

### Boolean Values

It's important to note - SQLite does not have a separate `BOOLEAN` storage
class. Instead, boolean values are stored as integers:

- `0` = `false`
- `1` = `true`

<em>It's not actually all that weird, boolean values are just binary bits after
all!</em>

SQLite will still let you write your queries using `boolean` expressions and
`true`/`false` keywords, but it will convert the booleans to integers
under-the-hood.
