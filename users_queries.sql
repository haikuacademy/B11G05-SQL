--Insert user placeholders

INSERT INTO 
users (
	first_name, 
	last_name,
	email,
	password,
	profile_pic)

VALUES


('Vincent', 'Frazier', 'vincent.frazier@example.com', 'africa' 'https://randomuser.me/api/portraits/men/65.jpg'), 
('Samantha', 'Pearson', 'samantha.pearson@example.com', 'sinclair', 'https://randomuser.me/api/portraits/women/32.jpg'), 
('Edwin', 'Stewart', 'edwin.stewart@example.com', 'elephant', 'https://randomuser.me/api/portraits/men/89.jpg'), 
('Monica', 'Gonzalez', 'monica.gonzalez@example.com', 'donna', 'https://randomuser.me/api/portraits/women/31.jpg')  
 
--LOGIN USER

SELECT users.email, users.password
FROM users 
WHERE users.email = 'vincent.frazier@example.com' AND users.password = 'africa'

--READ USER
--Show user date based on the user_id (3)

SELECT * FROM users WHERE users.user_id = 3

-- UPDATE PROFILE
-- Placeholders update all of user 1's information to Samantha Pearson

UPDATE users 
SET 
profile_pic = 'https://randomuser.me/api/portraits/women/32.jpg',  
first_name='Samantha', 
last_name='Pearson', 
email='samantha.pearson@example.com'
WHERE users.user_id = 1;