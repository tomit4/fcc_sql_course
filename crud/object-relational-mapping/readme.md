## Object-Relational Mapping (ORMs)

An [Object-Relational Mapping](https://en.wikipedia.org/w/index.php?title=Object%E2%80%93relational_mapping) or an <em>ORM</em> for short, is a tool that
allows you to perform CRUD operations on a database using a traditional
programming language. These typically come in the form of a library or framework
that you would use in your backend code.

The primary benefit an ORM provides is that it maps your database records to
in-memory objects. For example, in GO we might hae a struct that we use in our
code:

```go
type User struct {
    ID int
    Name string
    IsAdmin bool
}
```

This struct definition conveniently represents a database table called `users`,
and an <em>instance</em> of the struct represents a row in the table.

### Example: Using An Orm

Using an ORM we might be able to write simple code like this:

```go
user := User{
    ID: 10,
    Name: "Lane",
    IsAdmin: false,
}

// generates a SQL statement and runs it,
// creating a new record in the users table
db.Create(user)
```

### Example: Using Straight SQL

Using straight SQL we might have to do something a bit more manual:

```go
user := User{
    ID: 10,
    Name: "Lane",
    IsAdmin: false,
}

db.Exec("INSERT INTO users (id, name, is_admin) VALUES (?, ?, ?)", user.ID, user.Name,
user.IsAdmin)")
```

### Should You Use An ORM?

That depends! An ORM typically <em>trades simplicity for control</em>.

Using straight SQL you can take full advantage of the power of the SQL language.
Using an ORM, you're limited by whatever functionality the ORM has. If you run
into issues with a specific query, it can be harder to debug with an ORM because
you have to dig through the framework's code and documentation to figure out how
the underlying queries are being generated.

I recommend doing projects <em>both ways</em> so that you can learn about the
tradeoffs. At the end of the day, when you're working on a team of developers it
will be a team decision.
