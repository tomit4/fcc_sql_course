## Relational VS Non-Relational Databases

The big difference between relational and non-relational databases is that
non-relational databases <em>nest</em> their data. Instead of keeping records on
separate tables, they store records <em>within other records</em>.

To over-simplify it, you can think of non-relational databases as giant JSON
blobs. If a user can have multiple courses, you might just add all the courses
to the user record.

```json
{
  "users": [
    {
      "id": 0,
      "name": "Elon",
      "courses": [
        {
          "name": "Biology",
          "id": 0
        },
        {
          "name": "Biology",
          "id": 0
        }
      ]
    }
  ]
}
```

### Non-Relational Database

<img src="./non_relational_db_example.png" />
