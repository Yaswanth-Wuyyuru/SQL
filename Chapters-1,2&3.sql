-- CREATE DATABASE

CREATE DATABASE MODULE1

GO

USE MODULE1

-- CREATE TABLE

CREATE TABLE tbl1
(
ID INTEGER,
FirstName VARCHAR(50),
LastName VARCHAR(50),
City VARCHAR(50),
Country VARCHAR(50)
)

--INSERT VALUES INTO TABLE

INSERT INTO tbl1 VALUES(1, 'Yaswanth', 'Wuyyuru','Cleveland', 'USA')
INSERT INTO tbl1 VALUES(2, 'Subhashini', 'Veerla', 'Hyderabad', 'USA')
INSERT INTO tbl1 VALUES(3, 'Tanuja', 'Wuyyuru', 'Hyderabad', 'USA')
INSERT INTO tbl1 VALUES(4, 'Eswaranadh', 'Kukkala', 'Cleveland', 'USA')
INSERT INTO tbl1 VALUES(5, 'Kalyan Babu', 'Tangella', 'Montegomery', 'Alabama')

-- REPORT TABLE VALUES

SELECT * FROM tbl1

-- REPORT ONLY SPECIFIC COLUMN RECORDS

SELECT FirstName FROM tbl1

-- REPORT RECORDS BASED ON THE CONDITION

SELECT ID FROM tbl1 WHERE LastName = 'Wuyyuru'


-- DDL Commands

-- ALTER

ALTER TABLE tbl1
ALTER COLUMN ID INTEGER NOT NULL

ALTER TABLE tbl1
ADD CONSTRAINT PK1 PRIMARY KEY (ID)

-- DROP
ALTER TABLE tbl1
DROP Column City

SELECT * FROM tbl1

-- TRUNCATE 
TRUNCATE TABLE tbl1


--DML

-- UPDATE

UPDATE tbl1
SET LastName = 'Wuyyuru'
WHERE LastName = 'Veerla'

-- DELETE

DELETE FROM tbl1
WHERE ID = 2

-- Identify All Databases

SELECT * FROM sys.databases

-- Identify All Tables
SELECT * FROM sys.tables

-- Identify Sessions

SELECT * FROM sys.dm_exec_sessions

-- Identify All Session ID's

SELECT session_id FROM sys.dm_exec_sessions