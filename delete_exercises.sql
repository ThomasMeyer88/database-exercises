USE codeup_test_db;

-- DELETE FROM table_name WHERE column_name = 'value';

DELETE FROM albums WHERE release_date > '1991';
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT 'Albums are removed!' AS 'Info!';

SELECT * FROM albums;