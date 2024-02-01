@ -0,0 +1,48 @@
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    profile_photo VARCHAR(255),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(25) NOT NULL
);

CREATE TABLE houses(
    house_id SERIAL PRIMARY KEY,
    house_photo VARCHAR(255) REFERENCES house_photos(house_photo) NOT NULL,
    house_location VARCHAR(50) NOT NULL,
    house_rooms INT NOT NULL,
    house_bathrooms INT NOT NULL,
    description TEXT NOT NULL,
    user_id VARCHAR(50) REFERENCES users(user_id) NOT NULL,
    price INT NOT NULL,
    reviews_count INT NOT NULL,
    ratings FLOAT REFERENCES houses(rating) NOT NULL
);

CREATE TABLE house_photos (
    photo_id SERIAL PRIMARY KEY,
    featured BOOLEAN NOT NULL,
    photo_link VARCHAR(255) NOT NULL,
    house_id INT REFERENCES houses(house_id) NOT NULL
);

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    house_id INT REFERENCES houses(house_id) NOT NULL,
    guest_id INT REFERENCES users(user_id) NOT NULL,
    date_start DATE NOT NULL,
    date_end DATE NOT NULL,
    total_nights INT
    price_daily INT
    price_total INT NOT NULL,
    message TEXT NOT NULL
);
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) NOT NULL,
    house_id INT REFERENCES houses(house_id) NOT NULL,
    rating FLOAT NOT NULL,
    comment TEXT NOT NULL,
    date DATE NOT NULL
);