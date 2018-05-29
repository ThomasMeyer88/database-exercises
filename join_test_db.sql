USE join_test_db;

-- CREATE TABLE roles (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   PRIMARY KEY (id)
-- );
--
-- CREATE TABLE users (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   email VARCHAR(100) NOT NULL,
--   role_id INT UNSIGNED DEFAULT NULL,
--   PRIMARY KEY (id),
--   FOREIGN KEY (role_id) REFERENCES roles (id)
-- );
--
-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');
--
-- INSERT INTO users (name, email, role_id) VALUES
-- ('bob', 'bob@example.com', 1),
-- ('joe', 'joe@example.com', 2),
-- ('sally', 'sally@example.com', 3),
-- ('adam', 'adam@example.com', 3),
-- ('jane', 'jane@example.com', null),
-- ('mike', 'mike@example.com', null);

-- INSERT INTO users (name, email, role_id) VALUES
-- ('king', 'king@example.com', 2),
-- ('mage', 'mage@example.com', 2),
-- ('witch', 'witch@example.com', 2),
-- ('jester', 'jester@example.com', null);

SELECT *
FROM roles as A
JOIN users as B ON A.id = B.role_id;

SELECT *
FROM roles as A
RIGHT JOIN users as B ON A.id = B.role_id;

SELECT *
FROM roles as A
LEFT JOIN users as B ON A.id = B.role_id;