CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) NOT NULL,
    house_id INT REFERENCES houses(house_id) NOT NULL,
    rating FLOAT NOT NULL,
    comment TEXT NOT NULL,
    date DATE NOT NULL
);


--Reviews placeholders

INSERT INTO reviews ( user_id, house_id, rating, comment, date )
VALUES 
(2, 34, 3.5, 'Good experience', '2024-01-25'),
(3, 3, 5.0, 'Excellent service', '2024-01-26'),
(4, 3, 2.0, 'Needs improvement', '2024-01-28'),
(1, 3, 3.5, 'Average', '2024-01-30')