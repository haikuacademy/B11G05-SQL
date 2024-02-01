INSERT INTO bookings (booking_id, house_id, guest_id, date_start, date_end, total_nights, price_daily, price_total, message)
VALUES (9, 3, 4, '2024-12-01', '2024-12-02', 1, 24, 24, 'Hello happy to stay here');

SELECT 
    house_photos.photo_link,
    houses.house_location,
    houses.house_rooms,
    house_bathrooms,
    houses.price,
    houses.rating,
    bookings.guest_id,
    bookings.date_start, 
    bookings.date_end, 
    bookings.total_nights, 
    bookings.price_total
FROM bookings
LEFT JOIN houses
ON bookings.house_id = houses.house_id 
LEFT JOIN house_photos
ON bookings.house_id = house_photos.photo_id
WHERE bookings.guest_id = 4;