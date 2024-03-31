## Denormalizing For Speed

We left you with a cliffhanger in the "normalization" chapter. As it turns out,
data integrity and deduplication come at a cost, and that cost is
<em>usually</em> speed.

Joining tables together, using subqueries, performing aggregations, and running
post-hoc calculations <em>take time</em>. At very large scales these advaced
techniques can actually become a <em>huge</em> performance toll on an
application - sometimes grinding the database server to a halt.

Storing duplicate information can drastically speed up an application that needs
to look it up in <em>different ways</em>. For example, if you store a user's
country information right on their user reocrd, no expensive join is required to
load their profile page!

That said, <em>denormalize at your own risk</em>! Denormalizing a database
incurs a large risk of inaccurate and buggy data.

In my opinion, it should be used as a kind of "last resort" in the name of
speed.
