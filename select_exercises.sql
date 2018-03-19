USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Exercise-1';
SELECT name FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' AS 'Exercise-2';
SELECT release_date FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Exercise-3';
SELECT genre FROM albums
WHERE name = 'Nevermind';


SELECT * FROM albums
WHERE release_date BETWEEN 1990 AND 1999;


SELECT 'Which albums had less than 20 million certified sales' AS 'Exercise-4';
SELECT * FROM albums
WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'Exercise-5';
SELECT * FROM albums
WHERE genre LIKE '%rock%';