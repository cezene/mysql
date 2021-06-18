DROP SCHEMA IF EXISTS PiecesProviders;
CREATE SCHEMA PiecesProviders;
USE PiecesProviders;

CREATE TABLE Pieces (
  Code INTEGER PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

CREATE TABLE Providers (
  Code VARCHAR(40) PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

CREATE TABLE Provides (
  Piece INTEGER,
  FOREIGN KEY (Piece) REFERENCES Pieces (Code),
  Provider VARCHAR(40),
  FOREIGN KEY (Provider) REFERENCES Providers (Code),
  Price INTEGER NOT NULL,
  PRIMARY KEY (Piece , Provider)
);

INSERT INTO Providers(Code, Name)
  VALUES ('HAL', 'Clarke Enterprises'),
    ('RBT', 'Susan Calvin Corp.'),
    ('TNBC', 'Skellington Supplies');

INSERT INTO Pieces(Code, Name)
  VALUES (1, 'Sprocket'),
    (2, 'Screw'),
    (3, 'Nut'),
    (4, 'Bolt');

INSERT INTO Provides(Piece, Provider, Price)
  VALUES (1, 'HAL', 10),
    (1, 'RBT', 15),
    (2, 'HAL', 20),
    (2, 'RBT', 25),
    (2, 'TNBC', 14),
    (3, 'RBT', 50),
    (3, 'TNBC', 45),
    (4, 'HAL', 5),
    (4, 'RBT', 7);

/* Write a query to sort the names of companies alphabetically
descending and that returns only the code and name of the first company. */
USE PiecesProviders;
SELECT COde, Name FROM Providers
ORDER BY Name DESC
LIMIT 1;
/* Write a query to display all the information for the five pieces with the highest prices. */
SELECT Piece, Prices FROM Provides
ORDER BY Price DESC
LIMIT 5;
 /*Write a query to display the companies name and part price, 
 starting the list from the 3rd item, and displaying the price of the four most expensive parts. */
SELECT DISTINCT Provider, Price FROM Provides
ORDER BY Price DESC
LIMIT 4
OFFSET 3;
/* Write a query to display the string "The most expensive piece is: Piece ,
 provided by the company Provider and costs Price reais.", this query must only return a single string,
  where Price refers to the highest price. */
SELECT CONCAT ('The most expensive piece is: ', Piece, ' provided by the company, ', Provider,' and costs ', Price, ' reais')
AS Result FROM Provides
ORDER BY Price DESC
LIMIT 1;