-- Query to insert 1 row in the 'house_pics' table

INSERT INTO house_pics (
	house_id, 
	url)
VALUES (
	1,
	'https://www.amazon.com/images/01.jpg'
);

-- Query to read all rows from the 'house_pics' that belongs to 1 'house'

SELECT *
FROM 
	house_pics
WHERE
	house_pics.house_id = 1

-- Query to read 1 row from the 'house_pics' that belongs to 1 'house'

SELECT *
FROM
	house_pics
WHERE
	house_pics.house_id = 1
LIMIT 1;

-- Query to update 1 row in the 'house_pics' table

UPDATE house_pics
	SET url = 'https://www.amazon.com/images/02.jpg'
WHERE house_pic_id = 1;

-- Query to delete 1 row in the 'house_pics' table

DELETE FROM house_pics
WHERE house_pics_id = 1;