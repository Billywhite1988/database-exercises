USE codeup_test_db;

SELECT * FROM albums;

SELECT name, release_date FROM albums
WHERE release_date < 1980;

 SELECT name, artist FROM albums
 WHERE artist = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;

UPDATE albums
SET  release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
where artist = 'Michael Jackson';