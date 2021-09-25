-- Show table imdb
SELECT * from imdb

-- Show table rt
SELECT * from rt

CREATE VIEW movie_ratings AS
SELECT i.title,i.avg_vote, r.RatingTomatometer
FROM ((imdb i
Inner JOIN rt r
	   ON i.title = r.title))
	   
SELECT * from movie_ratings
