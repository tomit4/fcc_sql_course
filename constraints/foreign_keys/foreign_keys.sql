INSERT INTO users (
    id,
    name,
    country_code
) VALUES (
    0,
    'Jerry',
    'US'
);
-- because our foreign key 'country_code' is a Foreign Key,
-- that references our 'countries' table at 'code'
-- only the codes 'US' or 'IN' can be references, otherwise an error occurs
INSERT INTO users (
    id,
    name,
    country_code
) VALUES (
    1,
    'Amit',
    'IN'
)
