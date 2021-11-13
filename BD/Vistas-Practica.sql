USE db_example;

ALTER VIEW v_view_practice AS
SELECT c.`name` AS career_name, s.`name` AS subject_name, s.`description` AS subject_description
	FROM careers AS c
    INNER JOIN careers_subjects AS cs ON c.id = cs.career_id
    INNER JOIN subjects AS s ON s.id = cs.subject_id;