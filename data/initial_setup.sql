INSERT INTO roles (name)
VALUES ('Admin'),
    ('User') ON CONFLICT DO NOTHING;
INSERT INTO users (name, email, password_hash, role_id)
SELECT 'Eleazar Fig',
    'eleazar.fig@example.com',
    '$2b$12$8bm6U1pRl72KpIpqi9kg7elMY.tgsWXs32pTtRpQa49jZ0dtFrn3q',
    role_id
FROM roles
WHERE name LIKE 'Admin';