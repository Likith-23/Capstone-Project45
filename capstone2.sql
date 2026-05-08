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

/* 1. Find all restaurants where the name starts with 'M' */
SELECT * FROM restaurant WHERE name LIKE 'M%';

/* 2. List restaurants that are NOT in Midtown */
SELECT * FROM restaurant WHERE neighbourhood != 'Midtown';

/* 3. Filter for reviews between 3.0 and 4.0 */
SELECT * FROM restaurant WHERE review BETWEEN 3.0 AND 4.0;

/* 4. Count the total number of restaurants in the table */
SELECT COUNT(*) FROM restaurant;

/* 5. Calculate the average review score for all restaurants */
SELECT AVG(review) FROM restaurant;

/* 6. Find the most expensive price point available */
SELECT MAX(price) FROM restaurant;

/* 7. Group restaurants by cuisine to see how many of each exist */
SELECT cuisine, COUNT(*) FROM restaurant GROUP BY cuisine;

/* 8. Update the health grade for 'Minca' which was previously empty */
UPDATE restaurant SET health = 'A' WHERE name = 'Minca';

/* 9. Delete any restaurant with a review lower than 3.1 */
DELETE FROM restaurant WHERE review < 3.1;

/* 10. Find restaurants that are either in Queens OR have an 'A' health grade */
SELECT * FROM restaurant WHERE neighbourhood = 'Queens' OR health = 'A';