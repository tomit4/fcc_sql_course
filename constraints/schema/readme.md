## Schema

We've used the word <em>schema</em> a few times now, let's talk about what that
word means. A database's [schema](https://en.wikipedia.org/wiki/Database_schema?useskin=vector) describes how data is organized within it.

Data types, table names, field names, constraints, and the relationships between
all of those entities are part of a database's <em>schema</em>.

### There Is No Perfect Way To Architect A Database Schema

When designing a database schema, there typically isn't a "correct" solution. We
do our best to choose a sane set of tables, fields, constraints, etc that will
accomplish our project's goals. Like many things in programming, different
schema designs come with different tradeoffs.

### How Do We Decide On A Sane Schema Architecture?

Let's use <em>CashPal</em> as an example. One very important decision that needs
to be made is to decide which table will store a user's balance! As you can
imagine, ensuring our data is accurate when dealing with money is
<em>super</em> important. We want to be able to:

- Keep track of a user's current balance
- See the historical balance at any point in the past
- See a log of which transactions changed the balance over time

There are many ways to approach this problem. For our first attempt, let's try
the <em>simplest schema that fulfills our project's needs</em>.

### Assignment

The architecture team at CashPal has decided on a single `transactions`
table. The `transactions` table stores individual transactions, and we can keep
track of the "current balance" on each transaction record. If we want the
current balance, we can just look at the most recent transaction!

Create the `transactions` table with the following fields and constraints:

- `id` - `INTEGER` `PRIMARY KEY`
- `sender_id` - `INTEGER`
- `recipient_id` - `INTEGER`
- `memo` - `TEXT` - `NOT NULL`
- `amount` - `INTEGER` - `NOT NULL`
- `balance` - `INTEGER` - `NOT NULL`

**Answer:**

While I might not quite completely grasp the ideas of schemas even from this
well written short article, I believe it means that we have to carefully think
about how we organize our data at the Database level, as the relationships we
create via different tables, as well as the constraints we put on our various
pieces of data, can have a significant affect not only on our application's
design and performance, but can significantly affect the way we as developers
think about our application and the way that the users of our applications will
interact with them.

For the actual assignment, it appears Lane simply wants us to create the above
table `transactions` within our `cashpal.db`, so let's do just that. Simply run
the usual `.read` command on our `transactions.sql` within the sqlite cli:

```sh
sqlite cashpal.db
```

```
sqlite> .read transactions.sql
sqlite> pragma table_info(transactions);
cid  name          type     notnull  dflt_value  pk
---  ------------  -------  -------  ----------  --
0    id            INTEGER  0                    1
1    sender_id     INTEGER  0                    0
2    recipient_id  INTEGER  0                    0
3    memo          TEXT     1                    0
4    amount        INTEGER  1                    0
5    balance       INTEGER  1                    0
```

NOTE: Lane goes into detail as to why `amount` and `balance` are kept as
`INTEGER`s and not `REAL` (i.e. floating point integers). He points out that
usually, in real world applications, currency data is stored as "pennies", or
the lowest common denominator of currency. This is to ensure that there are no
rounding errors. So instead of storing, say "$5.63" in US currency, this would
simply be stored as an INTEGER of `563`.
