INSERT INTO roles (name)
VALUES ('Admin'),
    ('User') ON CONFLICT DO NOTHING;
INSERT INTO users (name, email, password_hash, role_id)
SELECT 'Eleazar Fig',
    'eleazar.fig@example.com',
    '$2b$12$9T1bSa3UN2vsKmYpxitZmOB1Cg4htPKkfXcK6Nm.8d3TuO1oFBlsq',
    role_id
FROM roles
WHERE name LIKE 'Admin';