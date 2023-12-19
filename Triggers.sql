
-- CREATE DATABASE

CREATE DATABASE MODULE1

GO

USE MODULE1

-- CREATE TABLE

create table RESERVATION
(
Aircraft_Code varchar(10),
No_of_Seats int,
Class_Code varchar(10)
)

-- Report Values From The Table

SELECT * FROM RESERVATION

-- ITEM #1: HOW TO DEFINE A TRIGGER ON THE TABLE?
-- REQUIREMENT: WHENEVER WE PERFORM DML OPERATION ON A TABLE, WE NEED TO PRINT ONE CONFIRMATION MESSAGE.

-- DML OPERATIONS are SELELCT, INSERT, UPDATE, DELETE Commands

CREATE TRIGGER TRGR1
ON RESERVATION
FOR
INSERT, UPDATE, DELETE
AS
PRINT 'DML Operations are performed'

-- Checking the trigger by inserting data

INSERT INTO RESERVATION VALUES('ET103', 2, '1A')

-- Checking the trigger by updating the data

UPDATE RESERVATION
SET Class_Code = 1 
WHERE Class_Code = '1A'

-- Reporting the data and checking for the update operations processed or not ??

SELECT * FROM RESERVATION

-- Create Trigger for INSTEAD OF Condition

CREATE TRIGGER TRGR2
ON RESERVATION
INSTEAD OF INSERT, UPDATE, DELETE
AS 
PRINT 'DML Operation Request Raised But Not Executed'

-- Testing the trigger for the update operation

UPDATE RESERVATION
SET Class_Code = '2'
WHERE Class_Code = '1'

-- Reporting the data to check for the update operation being processed or not ??

SELECT * FROM RESERVATION

-- Testing the trigger with DELETE Operation

DELETE FROM RESERVATION
WHERE
Class_Code = '1'

-- Reporting the data

SELECT * FROM RESERVATION

-- DISABLE TRIGGER

DISABLE TRIGGER TRGR2 ON RESERVATION

-- ENABLE TRIGGER AGAIN

ENABLE TRIGGER TRGR2 ON RESERVATION

-- DROP TRIGGER

DROP TRIGGER TRGR2