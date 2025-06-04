-- Users ADMIN
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
('dccff7c6-733a-4b19-affa-2e231998cccd', 'Jasmine Tran', 'https://res-console.cloudinary.com/dyw50hhip/thumbnails/v1/image/upload/v1740292946/SmFzbWluZS0zX3BzcGg2Yw==/preview', '0934853507', 'jasminebkdn@gmail.com', 'Vietnam', '2002-07-05', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'ADMIN', now() - interval '2 day');

-- Users created THIS MONTH
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
('dccff7c6-733a-4b19-affa-2e231998ccc0', 'Alice Now', NULL, '1000000000', 'alice.now@example.com', 'City A', '1995-01-01', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '2 day'),
('dccff7c6-733a-4b19-affa-2e231998ccc1', 'Bob Now', NULL, '1000000001', 'bob.now@example.com', 'City B', '1993-04-05', 'MALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '5 day'),
('dccff7c6-733a-4b19-affa-2e231998ccc2', 'Cara Now', NULL, '1000000002', 'cara.now@example.com', 'City C', '1990-06-07', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '10 day'),
('dccff7c6-733a-4b19-affa-2e231998ccc3', 'David Now', NULL, '1000000003', 'david.now@example.com', 'City D', '1992-11-12', 'MALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '12 day');

-- Users created LAST MONTH
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
('dccff7c6-733a-4b19-affa-2e231998ccc4', 'Eva Last', NULL, '1000000004', 'eva.last@example.com', 'City E', '1991-02-03', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '2 month - 3 day'),
('dccff7c6-733a-4b19-affa-2e231998ccc5', 'Frank Last', NULL, '1000000005', 'frank.last@example.com', 'City F', '1989-08-15', 'MALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '2 month - 7 day'),
('dccff7c6-733a-4b19-affa-2e231998ccc6', 'Grace Last', NULL, '1000000006', 'grace.last@example.com', 'City G', '1987-03-19', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '2 month - 12 day');

-- Users created LONG AGO
INSERT INTO "user" (id, name, avatar, phone, email, location, date_of_birth, gender, password, role, created_at) VALUES
('dccff7c6-733a-4b19-affa-2e231998ccc7', 'Henry Old', NULL, '1000000007', 'henry.old@example.com', 'City H', '1980-01-01', 'MALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '6 months'),
('dccff7c6-733a-4b19-affa-2e231998ccc8', 'Ivy Old', NULL, '1000000008', 'ivy.old@example.com', 'City I', '1985-07-07', 'FEMALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '9 months'),
('dccff7c6-733a-4b19-affa-2e231998ccc9', 'Jake Old', NULL, '1000000009', 'jake.old@example.com', 'City J', '1983-12-25', 'MALE', '$2b$10$dBWjyAPt9LkEE5rsCgbhau4wL8SEIiliwPNR36VUsBrKTYjQkB.6W', 'USER', now() - interval '1 year');
