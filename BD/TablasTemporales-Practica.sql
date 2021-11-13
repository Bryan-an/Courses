USE db_example;

CREATE TEMPORARY TABLE temporary_table(
	student_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    student_sex CHAR(1) NOT NULL,
    career_name VARCHAR(100) NOT NULL,
    career_description VARCHAR(100) NOT NULL,
    career_cost DOUBLE NOT NULL,
    price VARCHAR(100)
);

INSERT INTO temporary_table (
	student_name,
    student_sex,
    career_name,
    career_description,
    career_cost) 
    SELECT 
	CONCAT(s.`name`, ' ', s.last_name),
    s.sex,
    c.`name`,
    c.`description`,
    c.cost 
    FROM students AS s
    INNER JOIN careers AS c ON c.id = s.id_career;
    
UPDATE temporary_table SET 
	student_sex = LOWER(student_sex),
    career_name = UPPER(career_name),
    career_description = RPAD(career_description, 50, '-'),
    price = CASE 
				WHEN career_cost < 7000 THEN 'CHEAP'
				WHEN career_cost < 9000 THEN 'MEDIUM'
				ELSE 'EXPENSIVE'
			END;
    
SELECT * FROM temporary_table;
    
DROP TABLE temporary_table;
