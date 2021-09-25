-- Drop table if exists
DROP TABLE imdbmovies;

-- Create table and view column datatypes
CREATE TABLE imdbmovies (
	imdb_title_id VARCHAR,
	title VARCHAR,
	original_title VARCHAR,
	year INTEGER,
	date_published VARCHAR,
	genre VARCHAR,
	duration INTEGER,
	country VARCHAR,
	language VARCHAR,
	director VARCHAR,
	writer VARCHAR,
	production_company VARCHAR,
	actors VARCHAR,
	avg_vote DEC,
	votes INTEGER,
	budget VARCHAR,
	usa_gross_income VARCHAR,
	worlwide_gross_income VARCHAR,
	metascore DEC,
	reviews_from_users DEC,
	reviews_from_critics DEC
);

-- Import IMDB Movies csv

SELECT *
FROM imdbmovies;

-- Drop table if exists
DROP TABLE rtratings;

-- Create table and view column datatypes
CREATE TABLE rtratings (
	Rank INTEGER,
	Title VARCHAR,
	RatingTomatometer INTEGER,
	No_of_Reviews INTEGER,
	Genres VARCHAR
);

-- Import Rotten Tomatoes Ratings csv

SELECT *
FROM rtratings;

-- Join tables
-- Perform an INNER JOIN on the two tables
SELECT i.title, i.genre, i.metascore, r.ratingtomatometer
FROM rtratings AS r
INNER JOIN imdbmovies AS i ON
i.title=r.title;

-- Query
SELECT title, metascore, ratingtomatometer
FROM rtratings
WHERE title = 'Iron Man';