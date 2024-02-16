-- ADD row into houses table

INSERT INTO houses (
	location,
	bedrooms,
	bathrooms,
	price_per_night,
	description,
	host_id)
VALUES (
	'Koh Phangan, Thailand',
	3,
	1,
	20,
	'lorem ipsum lorem ipsum',
	1
);

-- Read all rows from the 'houses' table

SELECT 
	house_id, location, bathrooms, bedrooms, price_per_night
FROM 
	houses

-- Read many rows from the 'houses' table (filter)

SELECT 
	house_id, location, bathrooms, bedrooms, price_per_night
FROM 
	houses
WHERE
	bedrooms = 2 AND price_per_night < 100

-- Read single row from 'houses' table + join host + join house_pics

SELECT houses.*, users.first_name, users.last_name, users.profile_pic, house_pics.url 
FROM
	houses
LEFT JOIN users ON houses.host_id = users.user_id
LEFT JOIN house_pics ON houses.house_id = house_pics.house_id
WHERE
	houses.house_id = 1;

-- Update 1 row in the 'houses' table

UPDATE houses
SET 
	location = 'Bali',
	bedrooms = 4,
	bathrooms = 1,
	price_per_night = 78,
	description = 'NICE'
WHERE house_id = 1;

-- Delete 1 row in the 'houses' table

DELETE FROM houses
WHERE house_id = 1;






    