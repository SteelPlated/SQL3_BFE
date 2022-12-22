CREATE DATABASE 1;
USE 1;
CREATE TABLE staff
(id INT NOT NULL PRIMARY KEY,
 name VARCHAR(20),
 surname VARCHAR(20),
 specialty VARCHAR(20),
 seniority INT NOT NULL,
 salary INT NOT NULL,
 age INT NOT NULL 
);
INSERT staff
VALUES
(1, 'Jonh', 'Smith', 'начальник', 40, 100000, 60),
(2, 'Sophia', 'Smith', 'начальник', 8, 70000, 59),
(3, 'Chi', 'Li', 'инженер', 2, 70000, 25),
(4, 'Jacky', 'Chan', 'инженер', 12, 50000, 35),
(5, 'Mr', 'Anderson', 'рабочий', 40, 30000, 59),
(6, 'Baby', 'Jonhson', 'рабочий', 20, 25000, 40),
(7, 'Skinny', 'Fat', 'рабочий', 10, 20000, 35),
(8, 'Mrs', 'Anderson', 'рабочий', 8, 19000, 28),
(9, 'Ley', 'Chan', 'рабочий', 5, 15000, 25),
(10, 'Chu', 'Li', 'рабочий', 2, 11000, 22),
(11, 'Shi', 'Li', 'рабочий', 3, 12000, 24),
(12, 'Tom', 'Smith', 'уборщик', 10, 10000, 18);
SELECT * FROM staff;

SELECT * FROM staff
ORDER BY salary;

SELECT * FROM staff
ORDER BY salary DESC;

SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;

SELECT specialty, SUM(salary)
FROM staff
GROUP BY specialty;

SELECT COUNT(*) AS workers_count
FROM staff
WHERE specialty = 'рабочий' AND age >= 24 AND age < 42;

SELECT COUNT(*) AS workers_count
FROM staff
WHERE age >= 24 AND age < 42
GROUP BY specialty
HAVING specialty = 'рабочий';

SELECT COUNT(DISTINCT specialty) AS specialty_count
FROM staff;

SELECT specialty   
FROM staff
GROUP BY specialty
HAVING AVG(age) < 44