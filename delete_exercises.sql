USE codeup_test_db;

SELECT name
  AS 'Albums released after 1991', release_date
 FROM albums
 WHERE release_date > 1991;
DELETE FROM albums
 WHERE release_date > 1991;

SELECT name AS 'Disco Albums', genre
 FROM albums
 WHERE genre LIKE '%disco%';
DELETE FROM albums
 WHERE genre LIKE '%disco%';


SELECT name AS 'Albums by Eagles', artist
 FROM albums
 WHERE artist = 'eagles';
DELETE FROM albums
 WHERE artist = 'eagles';
