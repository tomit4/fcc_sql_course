## Manual Entry

Manually `INSERT`ing every single record in a database would be an
<em>extremely</em> time-consuming task! Working with raw SQL as we are now is
<em>not</em> super common when designing backend systems.

When working with SQL within software systems, like a backend web application,
you'll typically have access to a programming language such as Go or
Python. For example, a backend server written in Go can use string
concatenation to dynamically create SQL statements, and that's usually how
it's done!

```go
sqlQuery := fmt.Sprintf(`
INSERT INTO users(name, age, country_code)
VALUES (%s, %v, %s);
`, user.Name, user.Age, user.CountryCode)
```

### SQL Injection

The example above is an oversimplification of what <em>really</em> happens when
you access a database using Go code. In essence, it's correct. String
interpolation is how production systems access databases. That said, it must be
done <em>carefully</em> to not be a [security vulnerability](https://en.wikipedia.org/w/index.php?title=SQL_injection). We'll talk more about that later!
