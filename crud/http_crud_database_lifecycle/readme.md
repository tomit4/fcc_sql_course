## HTTP CRUD Database Lifecycle

It's important to understand how data <em>flows</em> through a typical web
application.

<img src="./slide_01.png" />

1. The front-end processes some data from user input - maybe a form is
   submitted.
2. The front-end sends that data to the server through an HTTP request - maybe a
   `POST`.
3. The server makes a SQL query to it's database to create an associated record
   - Probably using an `INSERT` statement.
4. Once the server has processed that the database query was successful, it
   responds to the front-end with a status code! Hopefully a 200-level code
   (success)!
