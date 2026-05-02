CREATE TABLE restaurant(
name text,
neighbourhood text,
cuisine text,
review real,
price text,
health text
);

INSERT INTO restaurant(name, neighbourhood, cuisine, review, price, health)
VALUES
('Peter', 'Brooklynn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Maria', 'Chinatown', 'Chinese', 3.0, '$$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Golden Unifarm', 'Uptown', 'Italian', 3.8, '$$', 'A'),
('Difara Pizza', 'Brooklynn', 'Pizza', 3.8, '$$', 'A');

SELECT * FROM restaurant;

SELECT DISTINCT(neighbourhood) FROM restaurant;

SELECT DISTINCT(cuisine) FROM restaurant;

SELECT * FROM restaurant WHERE cuisine = 'Chinese';

SELECT * FROM restaurant WHERE review >= 4.0;

SELECT * FROM restaurant WHERE cuisine = 'Italian' 
AND price IN ('$$', '$$$');

SELECT * FROM restaurant WHERE price = '$$$';

SELECT * FROM restaurant WHERE name LIKE '%Candy';

SELECT * FROM restaurant 
WHERE neighbourhood IN ('Midtown', 'Downtown', 'Chinatown');

SELECT * FROM restaurant WHERE health='';

SELECT * FROM restaurant ORDER BY review DESC LIMIT 4;