-- Insert a row in the 'reviews' table

INSERT INTO reviews (
	house_id,
	reviewer_id,
	review_date,
	rating,
	review_text
)
VALUES
	(1,
	1,
	'2024-02-01 10:00:00',
	5,
	'Great place to stay'
);

-- Read many rows from the 'reviews' table

SELECT
	reviews.review_date,
	reviews.rating,
	reviews.review_text,
	users.profile_pic,
	users.first_name,
	users.last_name
FROM
	reviews
INNER JOIN
	users
	ON reviews.reviewer_id = users.user_id
WHERE
	reviews.house_id = 1;

-- Count the number of reviews for 1 house

SELECT 
	COUNT(review_id)
FROM
	reviews
WHERE
	house_id = 1;

-- Calculate the average rating for 1 house based on its reviews

SELECT
	AVG(reviews.rating)
FROM
	reviews
WHERE
	house_id = 1;