-- Users created THIS MONTH
INSERT INTO "user" (id, "name", avatar, email, "location", date_of_birth, "gender", "role") VALUES
(uuid_generate_v4(), 'Alice Now', NULL, 'alice.now@example.com', 'City A', '1995-01-01', 'FEMALE', 'USER'),
(uuid_generate_v4(), 'Bob Now', NULL, 'bob.now@example.com', 'City B', '1993-04-05', 'MALE', 'USER'),
(uuid_generate_v4(), 'Cara Now', NULL, 'cara.now@example.com', 'City C', '1990-06-07', 'FEMALE', 'USER'),
(uuid_generate_v4(), 'David Now', NULL, 'david.now@example.com', 'City D', '1992-11-12', 'MALE', 'USER');

-- Users created LAST MONTH
INSERT INTO "user" (id, "name", avatar, email, "location", date_of_birth, "gender", "role") VALUES
(uuid_generate_v4(), 'Eva Last', NULL, 'eva.last@example.com', 'City E', '1991-02-03', 'FEMALE', 'USER'),
(uuid_generate_v4(), 'Frank Last', NULL, 'frank.last@example.com', 'City F', '1989-08-15', 'MALE', 'USER'),
(uuid_generate_v4(), 'Grace Last', NULL, 'grace.last@example.com', 'City G', '1987-03-19', 'FEMALE', 'USER');

-- Users created LONG AGO
INSERT INTO "user" (id, "name", avatar, email, "location", date_of_birth, "gender", "role") VALUES
(uuid_generate_v4(), 'Henry Old', NULL, 'henry.old@example.com', 'City H', '1980-01-01', 'MALE', 'USER'),
(uuid_generate_v4(), 'Ivy Old', NULL, 'ivy.old@example.com', 'City I', '1985-07-07', 'FEMALE', 'USER'),
(uuid_generate_v4(), 'Jake Old', NULL, 'jake.old@example.com', 'City J', '1983-12-25', 'MALE', 'USER');
