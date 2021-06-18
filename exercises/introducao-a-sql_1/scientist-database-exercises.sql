DROP SCHEMA IF EXISTS Scientists;
CREATE SCHEMA Scientists;
USE Scientists;

CREATE TABLE Scientists (
  SSN INT,
  Name CHAR(30) NOT NULL,
  PRIMARY KEY (SSN)
);

CREATE TABLE Projects (
  Code CHAR(4),
  Name CHAR(50) NOT NULL,
  Hours INT,
  PRIMARY KEY (Code)
);

CREATE TABLE AssignedTo (
  Scientist INT NOT NULL,
  Project CHAR(4) NOT NULL,
  PRIMARY KEY (Scientist, Project),
  FOREIGN KEY (Scientist) REFERENCES Scientists (SSN),
  FOREIGN KEY (Project) REFERENCES Projects (Code)
);

INSERT INTO Scientists(SSN,Name)
  VALUES(123234877, 'Michael Rogers'),
    (152934485, 'Anand Manikutty'),
    (222364883, 'Carol Smith'),
    (326587417, 'Joe Stevens'),
    (332154719, 'Mary-Anne Foster'),
    (332569843, 'George ODonnell'),
    (546523478, 'John Doe'),
    (631231482, 'David Smith'),
    (654873219, 'Zacary Efron'),
    (745685214, 'Eric Goldsmith'),
    (845657245, 'Elizabeth Doe'),
    (845657246, 'Kumar Swamy');

 INSERT INTO Projects (Code, Name, Hours)
  VALUES ('AeH1' ,'Winds: Studying Bernoullis Principle', 156),
    ('AeH2', 'Aerodynamics and Bridge Design', 189),
    ('AeH3', 'Aerodynamics and Gas Mileage', 256),
    ('AeH4', 'Aerodynamics and Ice Hockey', 789),
    ('AeH5', 'Aerodynamics of a Football', 98),
    ('AeH6', 'Aerodynamics of Air Hockey', 89),
    ('Ast1', 'A Matter of Time', 112),
    ('Ast2', 'A Puzzling Parallax', 299),
    ('Ast3', 'Build Your Own Telescope', 6546),
    ('Bte1', 'Juicy: Extracting Apple Juice with Pectinase', 321),
    ('Bte2', 'A Magnetic Primer Designer', 9684),
    ('Bte3', 'Bacterial Transformation Efficiency', 321),
    ('Che1', 'A Silver-Cleaning Battery', 545),
    ('Che2', 'A Soluble Separation Solution', 778);

 INSERT INTO AssignedTo (Scientist, Project)
  VALUES (123234877, 'AeH1'),
    (152934485, 'AeH3'),
    (222364883, 'Ast3'),
    (326587417, 'Ast3'),
    (332154719, 'Bte1'),
    (546523478, 'Che1'),
    (631231482, 'Ast3'),
    (654873219, 'Che1'),
    (745685214, 'AeH3'),
    (845657245, 'Ast1'),
    (845657246, 'Ast2'),
    (332569843, 'AeH4');

/* Write a query to display the string "This is SQL Exercise, Practice and Solution". */
SELECT "This is SQL Exercise, Practice and Solution";
/* Write a query to display three numbers in three columns.*/
SELECT 1 AS 'ONE', 2 AS 'TWO', 3 AS 'THREE';
/* Write a query to display the sum of the numbers 10 and 15.*/
SELECT 10 + 15;
/* Write a query to display the result of any arithmetic expression.*/
SELECT (75 * 7) + 22;
/* Write a query to display all information for all scientists.*/
SELECT * FROM Scientists;
/* Write a query to display the name as "Project Name" and the hours as "Working Time"
 for each project.*/
 SELECT Name AS 'Nome do Projeto', Hours AS 'Tempo de Trabalho' FROM Projects;
/* Write a query to display the scientists' names in alphabetical order.*/
SELECT Name FROM Scientists;
ORDER BY Name ASC;
/* Write a query to display the Projects name in descending alphabetical order.*/
SELECT Name FROM Projects
ORDER BY Name DESC;
/* Write a query that displays the string "Project Name took hours to complete." for each project.*/
SELECT CONCAT(Name, ' took ', Hours, ' hours to complete') AS Result FROM Projects;
/* Write a query to display the name and hours of the three projects with the most hours.*/
SELECT Name, Hours FROM Projects
ORDER BY HOURS DESC
LIMIT 3;
/* Write a query to display the code for all projects in the AssignedTo table without repeating it.*/
SELECT DISTINCT Project FROM AssignedTo;
/* Write a query to display the project name with the most hours.*/
SELECT Name, Hours FROM Projects
ORDER BY Hours DESC
LIMIT 1;
/* Write a query to display the name of the second project with the least amount of hours.*/
SELECT Name, Hours FROM Projects
ORDER BY Hours ASC
LIMIT 1 OFFSET 1;
/* Write a query to display all the information for the five projects with the least amount of hours.*/
SELECT Name, Hours FROM Projects
ORDER BY Hours ASC
LIMIT 5;
/* Write a query that displays the string "There are Number scientists in the Scientists table.",
 where Number refers to the number of scientists.*/
 SELECT CONCAT('There are ', COUNT(Name), ' scientists in the Scientists table.') AS Result FROM Scientists;