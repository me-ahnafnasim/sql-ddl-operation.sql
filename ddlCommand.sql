--In this section we are going to learn about DDL commands's application

--Note:
--ALTER = CHANGE something EXISTING

--By using the DLL command create the table column headline 
USE MyDatabase 

CREATE TABLE Clients(
ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Country CHAR(100),
Email VARCHAR(100) UNIQUE
)

--Add a new column in the database
ALTER TABLE Clients ADD Phone VARCHAR(15);

--Remove an existing column 
ALTER TABLE Clients DROP COLUMN Phone;

--Modify the the Data type's memory
ALTER TABLE Clients ALTER COLUMN Name VARCHAR(200);

--So uk_email is just a human-readable name you're giving to that unique constraint! if you dont write this manaually, the code will be generated automatically
ALTER TABLE Clients ADD CONSTRAINT uk_email UNIQUE (Email);

--
ALTER TABLE Clients RENAME COLUMN Email TO EmailAddress;




---------------------------------------------Show the database & see the details---------------------------------------------------------
-- Or query system tables
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH as size
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Clients';

-- List all databases
SELECT name FROM sys.databases;

-- List all tables in current database
SELECT name FROM sys.tables;

-- Show table structure
EXEC sp_help 'Clients';

-- View all constraints on Clients table
SELECT constraint_name, constraint_type 
FROM information_schema.table_constraints 
WHERE table_name = 'Clients';


---------------------------------------------Show the database & see the details---------------------------------------------------------







--See the table
SELECT *
FROM Clients


--Remove a record from the database by using DDL





--Insert the row by using the DML
INSERT INTO Clients (ID, Name, Country, Email) VALUES
(1, 'John Smith', 'USA', 'john.smith@email.com'),
(2, 'Maria Garcia', 'Spain', 'john.smith@email.com'),
(3, 'David Chen', 'China', 'david.chen@email.com'),
(4, 'Sarah Johnson', 'UK', 'sarah.johnson@email.com'),
(5, 'Pierre Dubois', 'France', 'pierre.dubois@email.com'),
(6, 'Anna Müller', 'Germany', 'anna.muller@email.com'),
(7, 'Carlos Silva', 'Brazil', 'carlos.silva@email.com'),
(8, 'Yuki Tanaka', 'Japan', 'yuki.tanaka@email.com'),
(9, 'Emma Wilson', 'Canada', 'emma.wilson@email.com'),
(10, 'Alessandro Rossi', 'Italy', 'alessandro.rossi@email.com');


