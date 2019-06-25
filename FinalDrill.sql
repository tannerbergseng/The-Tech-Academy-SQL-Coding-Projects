CREATE DATABASE db_FINALPROJECT

CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName CHAR(30),
	Library_Address char(30)

);

CREATE TABLE Book_Copies (
	BookID CHAR (30) NOT NULL,
	BranchID CHAR (30),
	Number_of_copies CHAR(30)
);

CREATE TABLE Publisher (
	Publisher_Name CHAR (30) NOT NULL,
	Publisher_address CHAR(30) NOT NULL,
	Publisher_Phone CHAR (30) NOT NULL
);

CREATE TABLE Book_Loans (
	BookID VARCHAR (5) NOT NULL,
	BranchID VARCHAR(30) NOT NULL,
	CardNumber VARCHAR (30) NOT NULL,
	DateOut VARCHAR (30),
	DateDue VARCHAR (30) NOT NULL
);


CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (400,1),
	Title VARCHAR (50)  NOT NULL,
	Publisher_Name VARCHAR (30) NOT NULL
);

CREATE TABLE Borrower (
	CardNumber INT PRIMARY KEY NOT NULL IDENTITY (800,1),
	Borrower_Name VARCHAR (30) NOT NULL,
	Borrower_Address VARCHAR (30) NOT NULL,
	Borrower_Phone VARCHAR (30) NOT NULL
);

CREATE TABLE Book_Authors (
	BookID VARCHAR (30) NOT NULL,
	Author_Name VARCHAR (30) NOT NULL
);

--INSERTING VALUES------------------------------
INSERT INTO Library_Branch
	(BranchName,Library_Address)
	VALUES
	('Sharpstown','310 Downing St.'),
	('Central','12 State Rd.'),
	('Eastern','400 Yonder Valley Ave.'),
	('Southern','56 Elm St.')

	SELECT * FROM Library_Branch

INSERT INTO Borrower
	(Borrower_Name, Borrower_Phone, Borrower_Address)
	VALUES
	('Daniel',6409439, '42 Life Blvd.'),
	('Mary', 7440483, '216 Solitude Ct.'),
	('Derek',8394832,'435 Panini St.'),
	('Brock',9473363,'16 Suplex Ct.'),
	('Steven',7938337, '199 Velociraptor Ave.'),
	('Jane', 3932872, '83 Goodall Rd.'),
	('Angus',7859368, '13 Mcdonald Lp.'),
	('Judi',8990384,'53 Dench St.'),
	('Lewis',9326333,'100 Ville Rd.')

	SELECT * FROM Borrower
	
INSERT INTO Books
	(Title, Publisher_Name)
	VALUES
	('Misery','Scribner'),
	('The Shining', 'Scribner'),
	( 'One flew over the cuckoos nest','Signet Books'),
	('Hitchhikers guide to the galaxy', 'Pan Books'),
	('The adventure zone','Macmillan'),
	('1984','Harvill Secker'),
	('A song of ice and fire','Bantam Books'),
	('Of mice and men','Pascal Covici'),
	('Lord of the flies','Faber and Faber'),
	('Star Wars: Thrawn','Del Rey Books'),
	('The lost Tribe', 'Signet Books'),
	('The grapes of wrath', 'Pascal Covici'),
	('The war of the worlds', 'Heinemann'),
	('Life of pi', 'Random house of canada'),
	('Catch-22', 'Simon & Schuster'),
	('The Illiad', 'Hackett Publishing co.'),
	('Gullivers travels', 'Benjamin Motte'),
	('Gone girl', 'Crown publishing group'),
	('The color purple', 'Harcourt'),
	('Animal farm', 'Harvill Secker')



	
	SELECT * FROM Books


	INSERT INTO Book_Authors
	(BookID, Author_Name)
	VALUES 
	(400,'Stephen King'),
	(401, 'Stephen King'),
	(402,'Ken Kessey'),
	(403,'Douglas Adams'),
	(404,'Griffin McElroy'),
	(405,'George Orwell'),
	(406,'George R.R. Martin'),
	(407,'John Steinbeck'),
	(408,'William Golding'),
	(409,'Timothy Zahn'),
	(410, 'Mark Lee'),
	(411, 'John Steinbeck'),
	(412, 'H.G. Wells'),
	(413, 'Yann Martel'),
	(414, 'Josehph Heller'),
	(415, 'Homer'),
	(416, 'Johnathan Swift'),
	(417, 'Gillian Flynn'),
	(418, 'Alice Walker'),
	(419, 'Geroge Orwell')
	
	SELECT * FROM Book_Authors
	SELECT * FROM Books
	
	INSERT INTO Publisher
	(Publisher_Name, Publisher_address, Publisher_Phone)
	VALUES
	('Scribner','New York','432-2432'),
	('Signet Books','Boston','330-8594'),
	('Pan Books','New York','843-4321'),
	('Macmillan','Los Angeles','334-1411'),
	('Harvill Secker','Los Angeles','942-2453'),
	('Bantam Books','New York','780-1345'),
	('Pascal Covici','Boston','948-8932'),
	('Del Rey Books','MaryLand','832-3823'),
	('Faber and Faber','Atlanta','853-2834'),
	('Heinemann', 'New York', '848-9463'),
	('Random house of canada' ,'Canada', '773-8839'),
	('Simon & Schuster','Boston','748-8362'),
	('Hackett Publishing co.', 'Indianapolis', '840-2016'),
	('Benjamin Motte', 'London', '839-9273'),
	('Crown publishing group', 'London', '730-8394'),
	('Harcourt', 'Atlanta', '930-2830')

	SELECT * FROM Publisher

	INSERT INTO Book_Copies
	(BookID, BranchID, Number_of_copies)
	VALUES
	(400,2,3),
	(400,1,2),
	(400,3,4),
	(400,4,2),
	(401,2,3),
	(401,1,2),
	(401,3,4),
	(401,4,2),
	(402,2,3),
	(402,1,2),
	(402,3,4),
	(402,4,2),
	(403,2,3),
	(403,1,2),
	(403,3,4),
	(403,4,2),
	(404,2,3),
	(404,1,2),
	(404,3,4),
	(404,4,2),
	(405,2,3),
	(405,1,2),
	(405,3,4),
	(405,4,2),
	(406,2,3),
	(406,1,2),
	(406,3,4),
	(406,4,2),
	(407,2,3),
	(407,1,2),
	(407,3,4),
	(407,4,2),
	(408,2,3),
	(408,1,2),
	(408,3,4),
	(408,4,2),
	(409,2,3),
	(409,1,2),
	(409,3,4),
	(409,4,2),
	(410,2,3),
	(410,1,2),
	(410,3,4),
	(410,4,2),
	(411,2,3),
	(411,1,2),
	(411,3,4),
	(411,4,2),
	(412,2,3),
	(412,1,2),
	(412,3,4),
	(412,4,2),
	(413,2,3),
	(413,1,2),
	(413,3,4),
	(413,4,2),
	(414,2,3),
	(414,1,2),
	(414,3,4),
	(414,4,2),
	(415,2,3),
	(415,1,2),
	(415,3,4),
	(415,4,2),
	(416,2,3),
	(416,1,2),
	(416,3,4),
	(416,4,2),
	(417,2,3),
	(417,1,2),
	(417,3,4),
	(417,4,2),
	(418,2,3),
	(418,1,2),
	(418,3,4),
	(418,4,2),
	(419,2,3),
	(419,1,2),
	(419,3,4),
	(419,4,2),
	(420,2,3),
	(420,1,2),
	(420,3,4),
	(420,4,2)
	
	
	SELECT * FROM Book_Copies
	SELECT * FROM Books
	SELECT * FROM Library_Branch


	INSERT INTO Book_Loans
	(BookID, BranchID, CardNumber, DateOut, DateDue)
	VALUES
	(400, 2, 801, '5-12', '6-12'),
	(401, 2, 803, '6-13', '7-13'),
	(402, 3, 802, '1-20', '2-20'),
	(403, 1, 808, '8-10', '9-10'),
	(412, 3, 807, '3-20', '4-20'),
	(408, 2, 805, '1-31', '3-02'),
	(415, 1, 806, '6-22', '7-22'),
	(412, 1, 806, '7-23', '8-23'),
	(419, 4, 804, '5-26', '6-26'),
	(404, 4, 807, '12-17', '1-17'),
	(406, 1, 802, '11-07', '12-07'),
	(400, 1, 802, '5-12', '6-12'),
	(401, 3, 802, '6-13', '7-13'),
	(402, 3, 802, '1-20', '2-20'),
	(403, 1, 808, '8-10', '9-10'),
	(412, 3, 807, '3-20', '4-20'),
	(408, 2, 805, '1-31', '3-02'),
	(415, 1, 806, '6-22', '7-22'),
	(412, 1, 806, '7-23', '8-23'),
	(419, 4, 804, '5-26', '6-26'),
	(404, 4, 807, '12-17', '1-17'),
	(406, 1, 802, '11-07', '12-07'),
	(412, 4, 801, '9-08', '10-08'),
	(413, 2, 802, '10-05', '11-05'),
	(403, 3, 803 ,'5-30', '6-30'),
	(400, 2, 801, '5-12', '6-12'),
	(401, 2, 803, '6-13', '7-13'),
	(402, 3, 802, '1-20', '2-20'),
	(403, 1, 808, '8-10', '9-10'),
	(412, 3, 807, '3-20', '4-20'),
	(408, 2, 805, '1-31', '3-02'),
	(415, 1, 806, '6-22', '7-22'),
	(412, 1, 806, '7-23', '8-23'),
	(419, 4, 804, '5-26', '6-26'),
	(404, 4, 807, '12-17', '1-17'),
	(406, 1, 802, '11-07', '12-07'),
	(400, 1, 802, '5-12', '6-12'),
	(401, 3, 802, '6-13', '7-13'),
	(402, 3, 802, '1-20', '2-20'),
	(403, 1, 808, '8-10', '9-10'),
	(412, 3, 807, '3-20', '4-20'),
	(408, 2, 805, '1-31', '3-02'),
	(415, 1, 806, '6-22', '7-22'),
	(412, 1, 806, '7-23', '8-23'),
	(419, 4, 804, '5-26', '6-26'),
	(404, 4, 807, '12-17', '1-17'),
	(406, 1, 802, '11-07', '12-07'),
	(412, 4, 801, '9-08', '10-08'),
	(413, 2, 802, '10-05', '11-05'),
	(403, 3, 803 ,'5-30', '6-30')

/*****QUERIES*****/

SELECT * FROM Book_Copies
SELECT * FROM Books
SELECT * FROM Library_Branch

--1--
	ALTER PROC dbo.uspGetCopies1 @BranchName nvarchar(50) = NULL, @Title nvarchar(50) = NULL
	AS
	SELECT *
	FROM Book_Copies t1
	INNER JOIN Library_Branch t2  ON t2.BranchID = t1.BranchID
	INNER JOIN Books t3 ON t3.BookID = t1.BookID
	WHERE 
	t2.BranchName = ISNULL (@BranchName , BranchName) AND
	t3.Title = ISNULL (@Title ,Title)  

	EXEC dbo.uspGetCopies1 @BranchName = 'Sharpstown', @Title = 'The lost tribe'


--2--
	CREATE PROC dbo.uspGetCopies2  @Title nvarchar(50) = NULL
	AS
	SELECT *
	FROM Book_Copies t1
	INNER JOIN Books t3 ON t3.BookID = t1.BookID
	WHERE 
	t3.Title = ISNULL (@Title ,Title) 
	
	EXEC dbo.uspGetCopies1 @Title = 'The lost tribe'


	
--3--
	ALTER PROC dbo.uspGetBorrowersBooks 
	AS
	SELECT Borrower_Name, t1.Borrower_Address, t1.Borrower_Phone
	FROM Borrower t1
	FULL OUTER JOIN Book_Loans t2 On t2.CardNumber = t1.CardNumber
	WHERE
	t2.CardNumber  IS NULL
	

	
	EXEC dbo.uspGetBorrowersBooks
	

--4--
	ALTER PROC dbo.uspGetDueToday
	AS
	SELECT *
	FROM Book_Loans t1
	INNER JOIN Borrower t2 ON t2.CardNumber = t1.CardNumber
	INNER JOIN Library_Branch t3 ON t3.BranchID = t1.BranchID
	WHERE
	DateDue = '6-12' And BranchName = 'Sharpstown'

	EXEC dbo.uspGetDueToday

--5-- 
	CREATE PROC dbo.uspGetBookLoans
	AS
	SELECT COUNT (*) AS DateOut, t1.BranchName
	FROM Library_Branch t1
	JOIN Book_Loans t2 ON t2.BranchID = t1.BranchID
	GROUP BY t1.BranchName
	
	EXEC dbo.uspGetBookLoans

--6--
	CREATE PROC dbo.uspGetGreedyBorrowers
	AS
	SELECT Borrower_Name, Borrower_Address, Borrower_Phone
	FROM Book_Loans t2
	INNER JOIN Borrower t1 On T2.CardNumber = t1.CardNumber
	GROUP BY Borrower_Name, Borrower_Address, Borrower_Phone
	HAVING
	COUNT (t2.DateDue) > 5

	EXEC dbo.uspGetGreedyBorrowers

--7--
	CREATE PROC dbo.uspGetStephenKing
	AS
	SELECT *
	FROM Book_Copies t1
	 INNER JOIN Books t3 ON t3.BookID = t1.BookID
	 INNER JOIN Book_Authors t2 ON t2.BookID = t3.BookID
	 INNER JOIN Library_Branch t4 ON t4.BranchID = t1.BranchID
	WHERE t4.BranchName = 'Central' AND t2.Author_Name = 'Stephen King'


	EXEC dbo.uspGetStephenKing
	