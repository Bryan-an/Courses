DROP DATABASE IF EXISTS db_example;

CREATE DATABASE db_example;

USE db_example;

CREATE TABLE subjects(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT NOT NULL
);

CREATE TABLE careers(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT NOT NULL,
    price DOUBLE(8,2) NOT NULL
);

CREATE TABLE careers_subjects(
	career_id INT UNSIGNED,
    subject_id INT UNSIGNED,
    PRIMARY KEY (career_id, subject_id),
    CONSTRAINT Constr_careers_subjects_career_fk
		FOREIGN KEY career_fk (career_id) REFERENCES careers (id)
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT Constr_careers_subjects_subject_fk
		FOREIGN KEY subject_fk (subject_id) REFERENCES subjects (id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE students(
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(25) NOT NULL,
    age TINYINT UNSIGNED NOT NULL,
    email VARCHAR(30),
    career_id INT UNSIGNED,
    CONSTRAINT Constr_students_career_fk
		FOREIGN KEY career_fk (career_id) REFERENCES careers (id)
        ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO subjects (`name`, `description`)
	VALUES ('Mathematics', 'Mathematics (from Greek: μάθημα, máthēma, "knowledge, study, learning") includes the study of such topics as quantity (number theory), structure (algebra), space (geometry), and change (analysis). It has no generally accepted definition.'),
    ('Physics', 'The branch of science concerned with the nature and properties of matter and energy. The subject matter of physics, distinguished from that of chemistry and biology, includes mechanics, heat, light and other radiation, sound, electricity, magnetism, and the structure of atoms.'),
    ('Calculus', 'Calculus, originally called infinitesimal calculus or "the calculus of infinitesimals", is the mathematical study of continuous change, in the same way that geometry is the study of shape and algebra is the study of generalizations of arithmetic operations.'),
    ('Biology', 'The study of living organisms, divided into many specialized fields that cover their morphology, physiology, anatomy, behavior, origin, and distribution.'),
    ('English', 'English is a West Germanic language of the Indo-European language family, originally spoken by the inhabitants of early medieval England.'),
    ('Quemistry', 'The branch of science that deals with the identification of the substances of which matter is composed; the investigation of their properties and the ways in which they interact, combine, and change; and the use of these processes to form new substances.'),
    ('Drawing', 'Drawing is a form of visual art in which an artist uses instruments to mark paper or other two-dimensional surface.'),
    ('Programming', 'Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task.'),
    ('Communication', 'Communication (from Latin communicare, meaning "to share" or "to be in relation with") is "an apparent answer to the painful divisions between self and other, private and public, and inner thought and outer word."'),
    ('History', 'History is narratives. From chaos comes order. We seek to understand the past by determining and ordering ‘facts’; and from these narratives we hope to explain the decisions and processes which shape our existence.');
    
INSERT INTO careers (`name`, `description`, price) 
	VALUES ('Biomedical engineer', 'Biomedical engineers are specialists who help to develop advanced healthcare technology.', 32000),
    ('Automotive engineer', 'Automotive engineers work as part of a team responsible for vehicle design, development, manufacture and testing.', 24000),
    ('Building services engineer', 'Building services engineers advise about, design, install and maintain cost-effective and energy efficient systems for building services such as water, lighting, heating, air conditioning, lifts, and telecoms.', 29000),
    ('Chemical (process) engineer', 'Chemical engineers are responsible for the chemical, biochemical and physical processes and machinery used to transform raw materials into valuable products.', 19000),
    ('Civil engineer', 'Civil engineers design, plan and oversee construction projects such as railways and roads.', 18000),
    ('Commissioning engineer', 'Commissioning engineers work at a client\'s site, where they are responsible for commissioning and overseeing the installation of systems, plants and equipment.', 11000),
    ('Communications engineer', 'Communications engineers are responsible for the research, design, development and production of communications equipment and systems.', 29400),
    ('Control and instrumentation engineer', 'Control and instrumentation engineers research, design, develop and install the devices and systems used in manufacturing facilities and plants.', 14000),
    ('Design engineer', 'A career as a design engineer is all about transforming ideas into real products. It offers the chance to combine creativity with engineering expertise.', 20500),
    ('Aeronautical engineer', 'Aeronautical engineers design, develop, manufacture, maintain and modify military and civil aircraft, aeronautical components and associated systems.', 20800);
    
INSERT INTO careers_subjects 
	VALUES (1, 1), (1, 3), (1, 5), (1, 7), (1, 9),
	(2, 2), (2, 4), (2, 6), (2, 8), (2, 10),
    (3, 1), (3, 3), (3, 5), (3, 7), (3, 9),
    (4, 2), (4, 4), (4, 6), (4, 8), (4, 10),
    (5, 1), (5, 3), (5, 5), (5, 7), (5, 9),
	(6, 2), (6, 4), (6, 6), (6, 8), (6, 10),
    (7, 1), (7, 3), (7, 5), (7, 7), (7, 9),
    (8, 2), (8, 4), (8, 6), (8, 8), (8, 10),
    (9, 1), (9, 3), (9, 5), (9, 7), (9, 9),
    (10, 2), (10, 4), (10, 6), (10, 8), (10, 10);
    
INSERT INTO students (`name`, last_name, age, email, career_id)
	VALUES ('Bryan', 'Sarango', 34, 'bryan@gmail.com', 1),
    ('Karla', 'Rodriguez', 23, 'karla@gmail.com', 2),
    ('Sonia', 'Fernandez', 18, 'sonia@gmail.com', 3),
    ('Carlos', 'Dominguez', 20, 'carlos@gmail.com', 4),
    ('Sandra', 'Martinez', 23, 'sandra@gmail.com', 5),
    ('Pedro', 'Gonzales', 22, 'pedro@gmail.com', 6),
    ('María', 'Perez', 21, 'maria@gmail.com', 7),
    ('Roberto', 'Suarez', 24, 'roberto@gmail.com', 8),
    ('Fabian', 'Salazar', 28, 'fabian@gmail.com', 9),
    ('Lucia', 'Castro', 30, 'lucia@gmail.com', 10);