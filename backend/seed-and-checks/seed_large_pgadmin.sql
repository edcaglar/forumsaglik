-- ===============================================
-- seed_large.sql (generated)
-- Run: psql -d <db_name> -f seed_large.sql
-- Safe to re-run (idempotent upserts where possible)
-- ===============================================
BEGIN;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- USERS
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user1@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User1', 'Demo', 'user1', 'Demo kullanıcı 1', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user2@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User2', 'Demo', 'user2', 'Demo kullanıcı 2', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user3@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User3', 'Demo', 'user3', 'Demo kullanıcı 3', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user4@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User4', 'Demo', 'user4', 'Demo kullanıcı 4', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user5@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User5', 'Demo', 'user5', 'Demo kullanıcı 5', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user6@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User6', 'Demo', 'user6', 'Demo kullanıcı 6', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user7@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User7', 'Demo', 'user7', 'Demo kullanıcı 7', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user8@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User8', 'Demo', 'user8', 'Demo kullanıcı 8', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user9@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User9', 'Demo', 'user9', 'Demo kullanıcı 9', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user10@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User10', 'Demo', 'user10', 'Demo kullanıcı 10', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user11@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User11', 'Demo', 'user11', 'Demo kullanıcı 11', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user12@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User12', 'Demo', 'user12', 'Demo kullanıcı 12', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user13@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User13', 'Demo', 'user13', 'Demo kullanıcı 13', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user14@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User14', 'Demo', 'user14', 'Demo kullanıcı 14', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user15@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User15', 'Demo', 'user15', 'Demo kullanıcı 15', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user16@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User16', 'Demo', 'user16', 'Demo kullanıcı 16', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user17@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User17', 'Demo', 'user17', 'Demo kullanıcı 17', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user18@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User18', 'Demo', 'user18', 'Demo kullanıcı 18', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user19@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User19', 'Demo', 'user19', 'Demo kullanıcı 19', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user20@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User20', 'Demo', 'user20', 'Demo kullanıcı 20', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user21@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User21', 'Demo', 'user21', 'Demo kullanıcı 21', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user22@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User22', 'Demo', 'user22', 'Demo kullanıcı 22', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user23@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User23', 'Demo', 'user23', 'Demo kullanıcı 23', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user24@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User24', 'Demo', 'user24', 'Demo kullanıcı 24', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user25@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User25', 'Demo', 'user25', 'Demo kullanıcı 25', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user26@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User26', 'Demo', 'user26', 'Demo kullanıcı 26', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user27@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User27', 'Demo', 'user27', 'Demo kullanıcı 27', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user28@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User28', 'Demo', 'user28', 'Demo kullanıcı 28', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user29@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User29', 'Demo', 'user29', 'Demo kullanıcı 29', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user30@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User30', 'Demo', 'user30', 'Demo kullanıcı 30', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user31@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User31', 'Demo', 'user31', 'Demo kullanıcı 31', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user32@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User32', 'Demo', 'user32', 'Demo kullanıcı 32', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user33@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User33', 'Demo', 'user33', 'Demo kullanıcı 33', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user34@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User34', 'Demo', 'user34', 'Demo kullanıcı 34', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user35@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User35', 'Demo', 'user35', 'Demo kullanıcı 35', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user36@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User36', 'Demo', 'user36', 'Demo kullanıcı 36', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user37@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User37', 'Demo', 'user37', 'Demo kullanıcı 37', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user38@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User38', 'Demo', 'user38', 'Demo kullanıcı 38', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user39@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User39', 'Demo', 'user39', 'Demo kullanıcı 39', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user40@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User40', 'Demo', 'user40', 'Demo kullanıcı 40', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user41@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User41', 'Demo', 'user41', 'Demo kullanıcı 41', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user42@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User42', 'Demo', 'user42', 'Demo kullanıcı 42', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user43@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User43', 'Demo', 'user43', 'Demo kullanıcı 43', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user44@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User44', 'Demo', 'user44', 'Demo kullanıcı 44', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user45@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User45', 'Demo', 'user45', 'Demo kullanıcı 45', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user46@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User46', 'Demo', 'user46', 'Demo kullanıcı 46', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user47@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User47', 'Demo', 'user47', 'Demo kullanıcı 47', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user48@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User48', 'Demo', 'user48', 'Demo kullanıcı 48', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user49@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User49', 'Demo', 'user49', 'Demo kullanıcı 49', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user50@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User50', 'Demo', 'user50', 'Demo kullanıcı 50', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user51@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User51', 'Demo', 'user51', 'Demo kullanıcı 51', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user52@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User52', 'Demo', 'user52', 'Demo kullanıcı 52', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user53@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User53', 'Demo', 'user53', 'Demo kullanıcı 53', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user54@example.com', TRUE, crypt('pass523', gen_salt('bf')), 'User54', 'Demo', 'user54', 'Demo kullanıcı 54', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user55@example.com', TRUE, crypt('pass623', gen_salt('bf')), 'User55', 'Demo', 'user55', 'Demo kullanıcı 55', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user56@example.com', TRUE, crypt('pass723', gen_salt('bf')), 'User56', 'Demo', 'user56', 'Demo kullanıcı 56', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user57@example.com', TRUE, crypt('pass123', gen_salt('bf')), 'User57', 'Demo', 'user57', 'Demo kullanıcı 57', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user58@example.com', TRUE, crypt('pass223', gen_salt('bf')), 'User58', 'Demo', 'user58', 'Demo kullanıcı 58', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user59@example.com', TRUE, crypt('pass323', gen_salt('bf')), 'User59', 'Demo', 'user59', 'Demo kullanıcı 59', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('user60@example.com', TRUE, crypt('pass423', gen_salt('bf')), 'User60', 'Demo', 'user60', 'Demo kullanıcı 60', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email,
    email_verified = EXCLUDED.email_verified,
    password = EXCLUDED.password,
    name = EXCLUDED.name,
    surname = EXCLUDED.surname,
    bio = EXCLUDED.bio,
    updated_at = now();
INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('admin@example.com', TRUE, crypt('admin123', gen_salt('bf')), 'Admin', 'User', 'admin', 'Site admin', 'admin')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email, email_verified = EXCLUDED.email_verified, password = EXCLUDED.password,
    name = EXCLUDED.name, surname = EXCLUDED.surname, bio = EXCLUDED.bio, role = 'admin', updated_at = now();

INSERT INTO users (email, email_verified, password, name, surname, username, bio, role)
VALUES ('deniz@example.com', TRUE, crypt('deniz123', gen_salt('bf')), 'Deniz', 'Yılmaz', 'deniz', 'Merhaba! Sağlık forumu', 'user')
ON CONFLICT (username) DO UPDATE
SET email = EXCLUDED.email, email_verified = EXCLUDED.email_verified, password = EXCLUDED.password,
    name = EXCLUDED.name, surname = EXCLUDED.surname, bio = EXCLUDED.bio, updated_at = now();

-- CATEGORIES
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Genel Sağlık', 'Genel sağlık konuları', '#22c55e', 'stethoscope', 'genel-saglk', 'CAT00000000000000000001000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Spor & Performans', 'Antrenman, beslenme, sakatlık', '#3b82f6', 'dumbbell', 'spor-performans', 'CAT00000000000000000002000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Saç & Deri', 'Saç dökülmesi, cilt', '#a855f7', 'spray', 'sac-deri', 'CAT00000000000000000003000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Beslenme', 'Diyet, mikro/makro besinler', '#f59e0b', 'utensils', 'beslenme', 'CAT00000000000000000004000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Uyku & Yaşam', 'Uyku hijyeni, günlük alışkanlıklar', '#10b981', 'moon', 'uyku-yasam', 'CAT00000000000000000005000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO categories (title, description, color, icon, slug, public_id)
VALUES ('Sakatlık Rehabilitasyon', 'Fizyoterapi ve toparlanma', '#ef4444', 'bandage', 'sakatlk-rehabilitasyon', 'CAT00000000000000000006000')
ON CONFLICT (slug) DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();

-- SUBCATEGORIES
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Programlar', 'Programlar hakkında tartışmalar', '#999999', 'folder', 'programlar', 'SUB00000000000000000001000', c.id
FROM categories c WHERE c.slug = 'spor-performans'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Sakatlık', 'Sakatlık hakkında tartışmalar', '#999999', 'folder', 'sakatlk', 'SUB00000000000000000002000', c.id
FROM categories c WHERE c.slug = 'spor-performans'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Kondisyon', 'Kondisyon hakkında tartışmalar', '#999999', 'folder', 'kondisyon', 'SUB00000000000000000003000', c.id
FROM categories c WHERE c.slug = 'spor-performans'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Androgenetik Alopesi', 'Androgenetik Alopesi hakkında tartışmalar', '#999999', 'folder', 'androgenetik-alopesi', 'SUB00000000000000000004000', c.id
FROM categories c WHERE c.slug = 'sac-deri'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Seboreik Dermatit', 'Seboreik Dermatit hakkında tartışmalar', '#999999', 'folder', 'seboreik-dermatit', 'SUB00000000000000000005000', c.id
FROM categories c WHERE c.slug = 'sac-deri'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Akne', 'Akne hakkında tartışmalar', '#999999', 'folder', 'akne', 'SUB00000000000000000006000', c.id
FROM categories c WHERE c.slug = 'sac-deri'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Protein', 'Protein hakkında tartışmalar', '#999999', 'folder', 'protein', 'SUB00000000000000000007000', c.id
FROM categories c WHERE c.slug = 'beslenme'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Karbonhidrat', 'Karbonhidrat hakkında tartışmalar', '#999999', 'folder', 'karbonhidrat', 'SUB00000000000000000008000', c.id
FROM categories c WHERE c.slug = 'beslenme'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Yağ', 'Yağ hakkında tartışmalar', '#999999', 'folder', 'yag', 'SUB00000000000000000009000', c.id
FROM categories c WHERE c.slug = 'beslenme'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Uyku Hijyeni', 'Uyku Hijyeni hakkında tartışmalar', '#999999', 'folder', 'uyku-hijyeni', 'SUB00000000000000000010000', c.id
FROM categories c WHERE c.slug = 'uyku-yasam'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Stres', 'Stres hakkında tartışmalar', '#999999', 'folder', 'stres', 'SUB00000000000000000011000', c.id
FROM categories c WHERE c.slug = 'uyku-yasam'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();
INSERT INTO subcategories (title, description, color, icon, slug, public_id, category_id)
SELECT 'Rutinler', 'Rutinler hakkında tartışmalar', '#999999', 'folder', 'rutinler', 'SUB00000000000000000012000', c.id
FROM categories c WHERE c.slug = 'uyku-yasam'
ON CONFLICT ON CONSTRAINT uq_subcategories_category_slug DO UPDATE
SET title = EXCLUDED.title,
    description = EXCLUDED.description,
    color = EXCLUDED.color,
    icon = EXCLUDED.icon,
    updated_at = now();

-- CATEGORY/SUBCATEGORY STATS skeletons
INSERT INTO category_stats (category_id, discussion_count, member_count, last_activity, is_popular) SELECT c.id, 0, 0, NULL, FALSE FROM categories c ON CONFLICT (category_id) DO NOTHING;
INSERT INTO subcategory_stats (subcategory_id, discussion_count, member_count, last_activity, is_popular) SELECT s.id, 0, 0, NULL, FALSE FROM subcategories s ON CONFLICT (subcategory_id) DO NOTHING;

-- DISCUSSIONS & REPLIES
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    44,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000001000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user38'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000001000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #868',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    472,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-868',
    'DIS00000000000000000002000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000002000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #234',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    186,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-234',
    'DIS00000000000000000003000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user11'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000003000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000003000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000003000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000003000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000003000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #966',
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    126,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-966',
    'DIS00000000000000000004000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000004000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    390,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000005000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user11'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000005000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #231',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    112,
    NULL,
    'kalori-acg-nasl-hesaplanr-231',
    'DIS00000000000000000006000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user1'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000006000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    67,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000007000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user47'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000007000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #219',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    232,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-219',
    'DIS00000000000000000008000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user19'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000008000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #912',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    267,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-912',
    'DIS00000000000000000009000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user21'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000009000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000009000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000009000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000009000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #956',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    360,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-956',
    'DIS00000000000000000010000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user20'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000010000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #78',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    65,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-78',
    'DIS00000000000000000011000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000011000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000011000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000011000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000011000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #947',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    446,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-947',
    'DIS00000000000000000012000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000012000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #747',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    22,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-747',
    'DIS00000000000000000013000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'programlar' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000013000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #216',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    406,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-216',
    'DIS00000000000000000014000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user58'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000014000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    398,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000015000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user34'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000015000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    14,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000016000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000016000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000016000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000016000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000016000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000016000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #901',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    26,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-901',
    'DIS00000000000000000017000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000017000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000017000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000017000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000017000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000017000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    159,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000018000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user37'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000018000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    408,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000019000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000019000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000019000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000019000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000019000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000019000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #596',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    180,
    NULL,
    'kreatin-yukleme-sart-m-596',
    'DIS00000000000000000020000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user45'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000020000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    225,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000021000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user22'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000021000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000021000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    43,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000022000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user16'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000022000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #931',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    50,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-931',
    'DIS00000000000000000023000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000023000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    294,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000024000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user38'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    299,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000025000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user28'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000025000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    TRUE,
    0,
    208,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000026000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user6'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000026000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000026000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000026000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #196',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    136,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-196',
    'DIS00000000000000000027000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user53'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    233,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000028000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user60'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000028000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000028000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000028000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000028000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000028000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    400,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000029000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000029000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000029000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000029000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000029000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000029000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    74,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000030000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user16'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000030000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    TRUE,
    FALSE,
    0,
    398,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000031000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    386,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000032000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user47'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000032000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #906',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    154,
    NULL,
    'kalori-acg-nasl-hesaplanr-906',
    'DIS00000000000000000033000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'sakatlk' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user16'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000033000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #242',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    62,
    NULL,
    'kalori-acg-nasl-hesaplanr-242',
    'DIS00000000000000000034000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000034000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #367',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    379,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-367',
    'DIS00000000000000000035000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user27'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000035000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #649',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    406,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-649',
    'DIS00000000000000000036000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user45'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000036000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    340,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000037000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000037000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000037000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000037000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000037000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000037000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #107',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    284,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-107',
    'DIS00000000000000000038000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user24'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000038000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    179,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000039000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user1'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000039000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000039000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #430',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    305,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-430',
    'DIS00000000000000000040000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user6'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #633',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    310,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-633',
    'DIS00000000000000000041000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user29'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000041000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    21,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000042000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user28'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    207,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000043000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user2'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000043000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000043000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000043000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000043000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000043000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    101,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000044000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000044000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #64',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    224,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-64',
    'DIS00000000000000000045000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user29'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000045000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #687',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    485,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-687',
    'DIS00000000000000000046000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user50'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000046000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    214,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000047000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'deniz'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000047000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000047000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    223,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000048000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'spor-performans'
JOIN subcategories s ON s.slug = 'kondisyon' AND s.category_id = c.id
WHERE u.username = 'user6'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000048000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000048000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000048000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    425,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000049000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user9'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000049000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #17',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    297,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-17',
    'DIS00000000000000000050000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000050000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #843',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    151,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-843',
    'DIS00000000000000000051000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user20'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000051000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #158',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    203,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-158',
    'DIS00000000000000000052000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user21'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000052000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #568',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    203,
    NULL,
    'kalori-acg-nasl-hesaplanr-568',
    'DIS00000000000000000053000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000053000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    295,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000054000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user16'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000054000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #969',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    369,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-969',
    'DIS00000000000000000055000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user21'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000055000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000055000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000055000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #52',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    TRUE,
    FALSE,
    0,
    68,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-52',
    'DIS00000000000000000056000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user57'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000056000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000056000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000056000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000056000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #814',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    20,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-814',
    'DIS00000000000000000057000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    163,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000058000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user11'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000058000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    TRUE,
    0,
    160,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000059000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user27'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000059000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000059000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #333',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    181,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-333',
    'DIS00000000000000000060000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user44'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000060000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #564',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    147,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-564',
    'DIS00000000000000000061000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user21'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000061000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000061000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000061000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000061000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #582',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    268,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-582',
    'DIS00000000000000000062000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user32'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000062000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000062000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    89,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000063000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000063000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #719',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    228,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-719',
    'DIS00000000000000000064000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user34'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000064000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    68,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000065000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'androgenetik-alopesi' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000065000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000065000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000065000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000065000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000065000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    228,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000066000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user39'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000066000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #551',
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    29,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-551',
    'DIS00000000000000000067000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user36'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user16'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000067000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    386,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000068000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000068000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000068000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000068000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    211,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000069000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000069000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    326,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000070000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user43'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000070000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #387',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    169,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-387',
    'DIS00000000000000000071000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user37'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000071000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    16,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000072000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000072000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000072000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000072000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000072000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000072000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    338,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000073000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000073000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #390',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    TRUE,
    0,
    157,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-390',
    'DIS00000000000000000074000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user29'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000074000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000074000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000074000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000074000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000074000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    137,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000075000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user20'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000075000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000075000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000075000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000075000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #312',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    441,
    NULL,
    'kalori-acg-nasl-hesaplanr-312',
    'DIS00000000000000000076000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user22'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000076000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #299',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    129,
    NULL,
    'kreatin-yukleme-sart-m-299',
    'DIS00000000000000000077000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'seboreik-dermatit' AND s.category_id = c.id
WHERE u.username = 'user43'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000077000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000077000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    85,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000078000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000078000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #308',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    346,
    NULL,
    'kalori-acg-nasl-hesaplanr-308',
    'DIS00000000000000000079000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user52'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000079000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000079000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #474',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    14,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-474',
    'DIS00000000000000000080000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000080000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #711',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    216,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-711',
    'DIS00000000000000000081000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000081000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #231',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    137,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-231',
    'DIS00000000000000000082000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user50'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000082000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #274',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    443,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-274',
    'DIS00000000000000000083000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000083000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000083000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #648',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    47,
    NULL,
    'kalori-acg-nasl-hesaplanr-648',
    'DIS00000000000000000084000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user26'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000084000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #706',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    42,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-706',
    'DIS00000000000000000085000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user24'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000085000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    321,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000086000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000086000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000086000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    283,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000087000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user39'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000087000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #62',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    275,
    NULL,
    'kreatin-yukleme-sart-m-62',
    'DIS00000000000000000088000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000088000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000088000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #650',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    29,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-650',
    'DIS00000000000000000089000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user16'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000089000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    TRUE,
    0,
    254,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000090000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000090000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000090000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000090000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000090000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000090000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #162',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    441,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-162',
    'DIS00000000000000000091000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user1'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000091000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000091000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user16'
WHERE d.public_id = 'DIS00000000000000000091000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #515',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    488,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-515',
    'DIS00000000000000000092000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user26'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000092000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    378,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000093000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000093000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000093000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000093000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    72,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000094000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000094000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000094000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000094000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000094000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #268',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    103,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-268',
    'DIS00000000000000000095000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user9'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user16'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000095000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    414,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000096000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user9'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000096000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #947',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    465,
    NULL,
    'kalori-acg-nasl-hesaplanr-947',
    'DIS00000000000000000097000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'sac-deri'
JOIN subcategories s ON s.slug = 'akne' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000097000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000097000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000097000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000097000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #822',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    176,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-822',
    'DIS00000000000000000098000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user59'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000098000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #93',
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    TRUE,
    FALSE,
    0,
    169,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-93',
    'DIS00000000000000000099000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user59'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000099000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    113,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000100000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user41'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000100000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    37,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000101000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user22'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000101000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000101000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #670',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    498,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-670',
    'DIS00000000000000000102000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user13'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000102000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    328,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000103000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user35'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000103000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    17,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000104000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user33'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000104000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    450,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000105000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user23'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000105000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    467,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000106000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user53'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000106000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #946',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    90,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-946',
    'DIS00000000000000000107000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'deniz'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000107000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    238,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000108000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user20'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000108000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    92,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000109000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user19'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000109000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    190,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000110000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000110000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #782',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    494,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-782',
    'DIS00000000000000000111000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000111000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    485,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000112000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'protein' AND s.category_id = c.id
WHERE u.username = 'user59'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000112000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    352,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000113000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user60'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000113000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    436,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000114000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user9'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000114000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    173,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000115000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user34'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000115000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #510',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    0,
    NULL,
    'kalori-acg-nasl-hesaplanr-510',
    'DIS00000000000000000116000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user53'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000116000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    242,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000117000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000117000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    299,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000118000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000118000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    213,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000119000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user44'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000119000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    229,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000120000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000120000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #301',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    332,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-301',
    'DIS00000000000000000121000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user1'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000121000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    466,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000122000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user34'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000122000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    474,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000123000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user29'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000123000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    129,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000124000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user13'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000124000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi? #688',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    487,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi-688',
    'DIS00000000000000000125000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user22'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000125000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000125000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000125000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000125000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000125000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #805',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    449,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-805',
    'DIS00000000000000000126000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000126000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #791',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    TRUE,
    0,
    122,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-791',
    'DIS00000000000000000127000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user55'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000127000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #904',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    108,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-904',
    'DIS00000000000000000128000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'karbonhidrat' AND s.category_id = c.id
WHERE u.username = 'user10'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000128000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000128000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    262,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000129000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user2'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000129000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    276,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000130000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user53'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    393,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000131000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000131000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000131000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000131000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000131000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000131000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #159',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    141,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-159',
    'DIS00000000000000000132000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user44'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000132000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    TRUE,
    0,
    46,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000133000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user53'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000133000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000133000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    89,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000134000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user41'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000134000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    206,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000135000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user37'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #519',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    59,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-519',
    'DIS00000000000000000136000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user52'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user35'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000136000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #224',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    446,
    NULL,
    'kalori-acg-nasl-hesaplanr-224',
    'DIS00000000000000000137000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user17'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000137000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000137000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000137000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #323',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    295,
    NULL,
    'kalori-acg-nasl-hesaplanr-323',
    'DIS00000000000000000138000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user9'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    61,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000139000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user45'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000139000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    457,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000140000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user55'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000140000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    434,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000141000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user59'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000141000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    382,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000142000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user38'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000142000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #130',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    468,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-130',
    'DIS00000000000000000143000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user21'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000143000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #9',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    407,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-9',
    'DIS00000000000000000144000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user1'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000144000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #993',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    224,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-993',
    'DIS00000000000000000145000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user47'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #16',
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    405,
    NULL,
    'kreatin-yukleme-sart-m-16',
    'DIS00000000000000000146000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user3'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000146000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000146000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000146000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000146000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000146000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #35',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    159,
    NULL,
    'kalori-acg-nasl-hesaplanr-35',
    'DIS00000000000000000147000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'beslenme'
JOIN subcategories s ON s.slug = 'yag' AND s.category_id = c.id
WHERE u.username = 'user60'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000147000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000147000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000147000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000147000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000147000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    351,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000148000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000148000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000148000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000148000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000148000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000148000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #449',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    374,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-449',
    'DIS00000000000000000149000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user30'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000149000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000149000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000149000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000149000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    209,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000150000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000150000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000150000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000150000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000150000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000150000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    426,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000151000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user6'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000151000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    405,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000152000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user9'
WHERE d.public_id = 'DIS00000000000000000152000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #323',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    292,
    NULL,
    'kreatin-yukleme-sart-m-323',
    'DIS00000000000000000153000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user10'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000153000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri #597',
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    469,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri-597',
    'DIS00000000000000000154000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user14'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user21'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000154000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    69,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000155000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000155000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #746',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    75,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-746',
    'DIS00000000000000000156000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user56'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000156000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000156000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000156000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000156000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    356,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000157000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000157000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000157000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000157000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000157000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    474,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000158000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #543',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    180,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-543',
    'DIS00000000000000000159000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'uyku-hijyeni' AND s.category_id = c.id
WHERE u.username = 'user23'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000159000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #546',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    15,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-546',
    'DIS00000000000000000160000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user49'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000160000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000160000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000160000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000160000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000160000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    251,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000161000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000161000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000161000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #688',
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    443,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-688',
    'DIS00000000000000000162000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user40'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000162000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #628',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    46,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-628',
    'DIS00000000000000000163000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user47'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000163000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    228,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000164000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user19'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user29'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000164000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    184,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000165000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user60'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    149,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000166000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000166000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000166000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #586',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    FALSE,
    0,
    132,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-586',
    'DIS00000000000000000167000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user34'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user13'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000167000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir? #742',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    344,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir-742',
    'DIS00000000000000000168000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000168000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz #802',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    FALSE,
    0,
    190,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz-802',
    'DIS00000000000000000169000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user29'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000169000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000169000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000169000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user52'
WHERE d.public_id = 'DIS00000000000000000169000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    67,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000170000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user14'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000170000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #483',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    91,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-483',
    'DIS00000000000000000171000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user46'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user17'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000171000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    166,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000172000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user36'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000172000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #837',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    149,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-837',
    'DIS00000000000000000173000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'stres' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user4'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user26'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000173000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    36,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000174000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    457,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl',
    'DIS00000000000000000175000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user51'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user39'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000175000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır? #928',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    472,
    NULL,
    'kalori-acg-nasl-hesaplanr-928',
    'DIS00000000000000000176000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user39'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user20'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user19'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000176000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #752',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    154,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-752',
    'DIS00000000000000000177000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user31'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user31'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user42'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user47'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user44'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000177000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli? #107',
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    29,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli-107',
    'DIS00000000000000000178000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user55'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user43'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user25'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'deniz'
WHERE d.public_id = 'DIS00000000000000000178000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #951',
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    276,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-951',
    'DIS00000000000000000179000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user50'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user7'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user37'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000179000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    FALSE,
    0,
    276,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000180000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user15'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Uyku süresi mi kalitesi mi daha önemli?',
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    490,
    NULL,
    'uyku-suresi-mi-kalitesi-mi-daha-onemli',
    'DIS00000000000000000181000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000181000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Omuz sıkışması için egzersiz önerileri',
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    FALSE,
    0,
    199,
    NULL,
    'omuz-sksmas-icin-egzersiz-onerileri',
    'DIS00000000000000000182000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user58'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000182000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kalori açığı nasıl hesaplanır?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    250,
    NULL,
    'kalori-acg-nasl-hesaplanr',
    'DIS00000000000000000183000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user25'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user51'
WHERE d.public_id = 'DIS00000000000000000183000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı? #58',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    234,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m-58',
    'DIS00000000000000000184000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user15'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user59'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user53'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000184000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Finasterid yan etkileri deneyimleriniz',
    'Takip için bir günlük tutmak çok işime yaradı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    387,
    NULL,
    'finasterid-yan-etkileri-deneyimleriniz',
    'DIS00000000000000000185000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user27'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000185000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user60'
WHERE d.public_id = 'DIS00000000000000000185000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi?',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    TRUE,
    FALSE,
    0,
    361,
    NULL,
    'minoksidil-tek-basna-yeterli-mi',
    'DIS00000000000000000186000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user42'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user57'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user14'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user41'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user1'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user8'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user50'
WHERE d.public_id = 'DIS00000000000000000186000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı? #153',
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    FALSE,
    0,
    107,
    NULL,
    'kreatin-yukleme-sart-m-153',
    'DIS00000000000000000187000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user28'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000187000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    0,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000187000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000187000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000187000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Kreatin yükleme şart mı?',
    'Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    445,
    NULL,
    'kreatin-yukleme-sart-m',
    'DIS00000000000000000188000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user13'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user38'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user10'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user24'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user18'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user45'
WHERE d.public_id = 'DIS00000000000000000188000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Haftada kaç gün koşu yapmak mantıklı? #477',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    FALSE,
    0,
    326,
    NULL,
    'haftada-kac-gun-kosu-yapmak-mantkl-477',
    'DIS00000000000000000189000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'admin'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Takip için bir günlük tutmak çok işime yaradı. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user58'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user27'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user54'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user48'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    9,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user28'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    2,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'admin'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user3'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    6,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user34'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user32'
WHERE d.public_id = 'DIS00000000000000000189000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Başlangıç için PPL mi, Üst/Alt mı?',
    'Takip için bir günlük tutmak çok işime yaradı. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Kreatin kullanımında bol su tüketmek önemli gibi görünüyor. Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu.',
    FALSE,
    FALSE,
    0,
    245,
    NULL,
    'baslangc-icin-ppl-mi-ustalt-m',
    'DIS00000000000000000190000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user43'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Finasterid ile etkiyi 3. aydan sonra belirgin gördüm. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user11'
WHERE d.public_id = 'DIS00000000000000000190000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    7,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user30'
WHERE d.public_id = 'DIS00000000000000000190000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user12'
WHERE d.public_id = 'DIS00000000000000000190000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim.',
    FALSE,
    10,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user56'
WHERE d.public_id = 'DIS00000000000000000190000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Diz ağrısında squat nasıl modifiye edilir?',
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Takip için bir günlük tutmak çok işime yaradı. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    FALSE,
    0,
    171,
    NULL,
    'diz-agrsnda-squat-nasl-modifiye-edilir',
    'DIS00000000000000000191000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user48'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Push gününde sıralama: Bench mi OHP mi?',
    'Bu konuda farklı protokoller denedim ve toparlanma süresi değişti. Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    FALSE,
    0,
    187,
    NULL,
    'push-gununde-sralama-bench-mi-ohp-mi',
    'DIS00000000000000000192000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user12'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user36'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı.',
    FALSE,
    12,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Takip için bir günlük tutmak çok işime yaradı.',
    FALSE,
    3,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user22'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Kreatin kullanımında bol su tüketmek önemli gibi görünüyor.',
    FALSE,
    11,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user49'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Yükleme yapmadım, 3-4 hafta sonra etkisini hissettim. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Bu konuda farklı protokoller denedim ve toparlanma süresi değişti.',
    FALSE,
    4,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user23'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum. Finasterid ile etkiyi 3. aydan sonra belirgin gördüm.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user5'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user33'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Uyumadan önce ekranı azaltmak uykumu iyileştirdi. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    8,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user46'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Benim için 2 gün arayla koşu yapmak daha sürdürülebilir oldu. Takip için bir günlük tutmak çok işime yaradı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    5,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user40'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO replies (content, is_edited, like_count, discussion_id, author_id)
SELECT
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Diyet tarafında lif tüketimini artırmak sindirimi rahatlattı.',
    FALSE,
    1,
    d.id,
    u.id
FROM discussions d
JOIN users u ON u.username = 'user6'
WHERE d.public_id = 'DIS00000000000000000192000';
INSERT INTO discussions (
    title, content, is_pinned, is_locked, reply_count, view_count,
    last_reply_at, slug, public_id, author_id, category_id, subcategory_id
)
SELECT
    'Minoksidil tek başına yeterli mi? #283',
    'Düşük hacimle başlayıp yavaş yavaş artırmak sakatlık riskini azalttı. Formu bozuyorsam ağırlığı düşürüyorum; ego yapmıyorum.',
    FALSE,
    FALSE,
    0,
    487,
    NULL,
    'minoksidil-tek-basna-yeterli-mi-283',
    'DIS00000000000000000193000',
    u.id,
    c.id,
    s.id
FROM users u
JOIN categories c ON c.slug = 'uyku-yasam'
JOIN subcategories s ON s.slug = 'rutinler' AND s.category_id = c.id
WHERE u.username = 'user41'
ON CONFLICT (public_id) DO UPDATE
SET title = EXCLUDED.title,
    content = EXCLUDED.content,
    is_pinned = EXCLUDED.is_pinned,
    is_locked = EXCLUDED.is_locked,
    updated_at = now();

-- REPLY LIKES
-- For each of the 50 most recent replies, randomly like by a few users
WITH recent_replies AS (
  SELECT r.id
  FROM replies r
  ORDER BY r.created_at DESC, r.id DESC
  LIMIT 200
),
sample_users AS (
  SELECT id, username FROM users
  WHERE username IN ('admin','deniz')
     OR username LIKE 'user%'
  ORDER BY id
  LIMIT 40
)
INSERT INTO reply_likes (value, reply_id, user_id)
SELECT 1, rr.id, su.id
FROM recent_replies rr
JOIN sample_users su ON (rr.id % 13) = (su.id % 13)
ON CONFLICT ON CONSTRAINT uq_user_reply_like DO UPDATE
SET value = EXCLUDED.value;

-- COUNTERS & LAST_ACTIVITY UPDATES
-- discussions.reply_count and last_reply_at
UPDATE discussions d SET
  reply_count = sub.cnt,
  last_reply_at = sub.max_created
FROM (
  SELECT discussion_id, COUNT(*) AS cnt, MAX(created_at) AS max_created
  FROM replies
  GROUP BY discussion_id
) sub
WHERE d.id = sub.discussion_id;

-- category_stats
WITH disc AS (
  SELECT
    c.id AS category_id,
    COUNT(DISTINCT d.id) AS discussion_count,
    COUNT(DISTINCT d.author_id) AS member_count,
    MAX(GREATEST(d.updated_at, COALESCE(d.last_reply_at, d.updated_at))) AS last_activity
  FROM categories c
  LEFT JOIN discussions d ON d.category_id = c.id
  GROUP BY c.id
)
UPDATE category_stats cs SET
  discussion_count = disc.discussion_count,
  member_count = disc.member_count,
  last_activity = disc.last_activity,
  is_popular = (disc.discussion_count >= 25)
FROM disc
WHERE cs.category_id = disc.category_id;

-- subcategory_stats
WITH disc AS (
  SELECT
    s.id AS subcategory_id,
    COUNT(DISTINCT d.id) AS discussion_count,
    COUNT(DISTINCT d.author_id) AS member_count,
    MAX(GREATEST(d.updated_at, COALESCE(d.last_reply_at, d.updated_at))) AS last_activity
  FROM subcategories s
  LEFT JOIN discussions d ON d.subcategory_id = s.id
  GROUP BY s.id
)
UPDATE subcategory_stats ss SET
  discussion_count = disc.discussion_count,
  member_count = disc.member_count,
  last_activity = disc.last_activity,
  is_popular = (disc.discussion_count >= 12)
FROM disc
WHERE ss.subcategory_id = disc.subcategory_id;
COMMIT;