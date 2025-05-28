-- Users created THIS MONTH
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
(uuid_generate_v4(), 'Alice Now', NULL, '1000000000', 'alice.now@example.com', 'City A', '1995-01-01', 'FEMALE', 'pw123', 'USER', now() - interval '2 day'),
(uuid_generate_v4(), 'Bob Now', NULL, '1000000001', 'bob.now@example.com', 'City B', '1993-04-05', 'MALE', 'pw123', 'USER', now() - interval '5 day'),
(uuid_generate_v4(), 'Cara Now', NULL, '1000000002', 'cara.now@example.com', 'City C', '1990-06-07', 'FEMALE', 'pw123', 'USER', now() - interval '10 day'),
(uuid_generate_v4(), 'David Now', NULL, '1000000003', 'david.now@example.com', 'City D', '1992-11-12', 'MALE', 'pw123', 'USER', now() - interval '12 day');

-- Users created LAST MONTH
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
(uuid_generate_v4(), 'Eva Last', NULL, '1000000004', 'eva.last@example.com', 'City E', '1991-02-03', 'FEMALE', 'pw123', 'USER', now() - interval '2 month - 3 day'),
(uuid_generate_v4(), 'Frank Last', NULL, '1000000005', 'frank.last@example.com', 'City F', '1989-08-15', 'MALE', 'pw123', 'USER', now() - interval '2 month - 7 day'),
(uuid_generate_v4(), 'Grace Last', NULL, '1000000006', 'grace.last@example.com', 'City G', '1987-03-19', 'FEMALE', 'pw123', 'USER', now() - interval '2 month - 12 day');

-- Users created LONG AGO
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
(uuid_generate_v4(), 'Henry Old', NULL, '1000000007', 'henry.old@example.com', 'City H', '1980-01-01', 'MALE', 'pw123', 'USER', now() - interval '6 months'),
(uuid_generate_v4(), 'Ivy Old', NULL, '1000000008', 'ivy.old@example.com', 'City I', '1985-07-07', 'FEMALE', 'pw123', 'USER', now() - interval '9 months'),
(uuid_generate_v4(), 'Jake Old', NULL, '1000000009', 'jake.old@example.com', 'City J', '1983-12-25', 'MALE', 'pw123', 'USER', now() - interval '1 year');
