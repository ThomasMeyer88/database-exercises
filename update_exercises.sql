USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums SET sales = sales * 10 WHERE sales > '0';
SELECT * FROM albums;
SELECT 'These are all the albums!' AS 'Info!';
SELECT * FROM albums WHERE release_date < '1980';
UPDATE albums SET release_date = "1800" WHERE release_date < '1980';
SELECT * FROM albums WHERE release_date < '1980';
SELECT 'These are all the albums from before 1980!' AS 'Info!';
SELECT * FROM albums WHERE artist = "Michael Jackson";
UPDATE albums SET artist = "Peter Jackson" WHERE artist = "Michael Jackson";
SELECT * FROM albums WHERE artist = "Peter Jackson";
SELECT 'These are by the King of Pop' AS 'Info!';