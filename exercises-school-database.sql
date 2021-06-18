CREATE DATABASE `Escola`;
CREATE TABLE IF NOT EXISTS School.Students (
    `Name` VARCHAR(7) CHARACTER SET utf8,
    `Age` INT
);
INSERT INTO School.Students VALUES
    ('Rafael', 25),
    ('Amanda', 30),
    ('Roberto', 45),
    ('Carol', 19),
    ('Amanda', 25);

/*Build a query to find unique name and age pairs. */
SELECT DISTINCT `Name` `Age` FROM School.Students;
/* How many lines would you find in the previous query? 
Answer: 5 lines, because all the pairs of names and ages are unique
*/
/*Build a query to find only unique names. */
SELECT DISTINCT `Name` FROM School.Students;
/* How many lines would you find in the previous query?
Answer: 4 lines, because the name Amanda repeats one time*/
/*Build a query to find only unique ages. */
SELECT DISTINCT `Age` FROM School.Students;
/* How many lines would you find in the previous query?
Answer: 4 lines, because the age 25 repeats one time.*/