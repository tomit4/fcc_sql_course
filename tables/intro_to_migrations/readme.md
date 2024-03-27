## Intro To Migrations

A database [migration](https://en.wikipedia.org/w/index.php?title=Schema_migration&useskin=vector) is a set of changes to a relational database. In fact, the `ALTER TABLE` statements we did in the last exercise were examples of migrations!

Migrations are helpful when transitioning from one state to another, fixing
mistakes, or adapting a database to changes.

<em>Good</em> migrations are small, incremental, and ideally <em>reversible</em>
changes to a database. As you can imagine, when working with large databases,
making changes can be scary! We have to be careful when writing
database migrations so that we don't break any systems that depend on
the old database schema.

(picture of the classic this is fine meme, with the tagline humorous statement
being "When You Alter The Productioni Database And The Site Goes Down")

### Example Of A Bad Migration

If the CashPal backend periodically runs a query like `SELECT * FROM people`,
and we execute a database migration that alters the table name from `people`
to `users` <em>without updating the code</em>, the application will break! It
will try to grab data that no longer has a reference or possible isn't even
there at all now!
