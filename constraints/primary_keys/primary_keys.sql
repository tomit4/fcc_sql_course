INSERT INTO users (
    id,
    name,
    age,
    country_code,
    username,
    password,
    is_admin
) VALUES (
    0,
    'Rudolf',
    33,
    'USA',
    'rudolf1234',
    'thisisnotsecure',
    false
);
-- issue here, if first value (id) is same as above, should fail due to primary key constraint
INSERT INTO users (
    id,
    name,
    age,
    country_code,
    username,
    password,
    is_admin
) VALUES (
    1,
    'Jerry',
    25,
    'USA',
    'jerrysmith',
    'mypasswordis1234',
    true
);
