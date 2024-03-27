-- Add `boolean` `was_successful` column to the `transactions` table.
ALTER TABLE transactions
    ADD COLUMN was_successful BOOLEAN;
-- Add the `TEXT` `transaction_type` column to the `transactions` table.
ALTER TABLE transactions
    ADD COLUMN transaction_type TEXT;
