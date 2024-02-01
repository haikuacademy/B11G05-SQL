-- CREATE

INSERT INTO house_photos (
    photo_id,
    featured,
    photo_link,
    house_id
)
VALUES (
    14,
    TRUE,
    https://randomuser.me/api/house/mojodojo/69.jpg,
    3
)
;
   
-- READ

SELECT photo_link, house_location, house_rooms, house_bathrooms, price, rating, reviews_count
FROM houses
LEFT JOIN house_photos
ON houses.house_id = house_photos.house_id
WHERE house_photos.featured = true
;

