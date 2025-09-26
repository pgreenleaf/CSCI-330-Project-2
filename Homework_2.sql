DROP TABLE IF EXISTS Pets;

CREATE TABLE Pets (
    pet_id INT PRIMARY KEY,
    pet_name VARCHAR(50),
    species VARCHAR(50),
    age INT   
);

INSERT INTO Pets (pet_id, pet_name, species, age)
VALUES
(1, 'Fluffy', 'Cat', 3),
(2, 'Max', 'Dog', 5),
(3, 'Sammy', 'Parrot', 2),
(4, 'Goldie', 'Fish', 1), 
(5, 'Mango', 'Dog', 7),
(6, 'Walter', 'Cat', 12),
(7, 'Zane', 'Dog', 6),
(8, 'Abner', 'Dog', 17),
(9, 'Sadie', 'Dog', 14),
(10, 'Rusty', 'Dog', 11);

--Print Table
SELECT * FROM Pets;

-- List all pet names and species
SELECT pet_name, species FROM Pets;

-- Find the oldest pet (Abner, age 17)
SELECT MAX(age) AS Oldest_Pet FROM Pets

-- Count number of dogs (6)
SELECT COUNT(pet_id) AS Number_Of_Dogs FROM Pets WHERE species = 'Dog';

-- Update name of Fuffy
UPDATE Pets
SET age = 4
WHERE pet_name = 'Fluffy';
SELECT * FROM Pets WHERE pet_name = 'Fluffy';

-- Delete pets older than 5 years
DELETE FROM Pets WHERE age > 5;
SELECT * FROM Pets;

-- Find average age of all cats
SELECT AVG(age) AS Average_Cat_Age FROM Pets WHERE species = 'Cat';

-- List all pets sorted by age in descending order
SELECT * FROM Pets 
ORDER BY age DESC;