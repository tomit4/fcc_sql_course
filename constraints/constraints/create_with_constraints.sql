--  Create the `USERS` table with the following fields and constraints:

--  - `id` - `INTEGER`, `PRIMARY KEY`
--  - `name` - `TEXT`, `NOT NULL`
--  - `age` - `INTEGER`, `NOT NULL`
--  - `country_code` - `TEXT`, `NOT NULL`
--  - `username` - `TEXT`, `UNIQUE`
--  - `password` - `TEXT`, `NOT NULL`
--  - `is_admin` - `BOOLEAN`

CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);
