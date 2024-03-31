## Database Normalization

Database normalizatio is a method for structuring your database schema in a way
that helps:

- Improve data integrity
- Reduce data redundancy

### What Is Data Integrity?

"Data integrity" refers to the accuracy and consistency of data. For example, if
a user's <em>age</em> is stored in a database, rather than their
<em>birthday</em>, that data becomes incorrect automatically with the passage of
time.

It would be better to <em>store</em> a birthday and <em>calculate</em> the age
as needed.

### What Is Data Redundancy?

"Data redundancy" occurs when the same piece of data is stored in multiple
places. For example: saving the same file multiple times to different hard
drives.

Data redundancy can be problematic, especially when data in one place is changed
such that the data is no longer consistent across all copies of that data.
