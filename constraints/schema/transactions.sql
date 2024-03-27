-- Create the `transactions` table with the following fields and constraints:
--  - `id` - `INTEGER` `PRIMARY KEY`
--  - `sender_id` - `INTEGER`
--  - `recipient_id` - `INTEGER`
--  - `memo` - `TEXT` - `NOT NULL`
--  - `amount` - `INTEGER` - `NOT NULL`
--  - `balance` - `INTEGER` - `NOT NULL`

CREATE TABLE transactions(
    id INTEGER PRIMARY KEY,
    sender_id INTEGER,
    recipient_id INTEGER,
    memo TEXT NOT NULL,
    amount INTEGER NOT NULL,
    balance INTEGER NOT NULL
);
