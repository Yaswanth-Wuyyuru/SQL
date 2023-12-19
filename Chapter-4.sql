-- Create Tables Using Float

GO

USE MODULE1

-- Create Table Using Float
-- Single Row Inserts
-- Multiple Row Inserts

CREATE TABLE tbl2
(
ID INTEGER,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Height FLOAT
)

INSERT INTO tbl2 VALUES (1, 'Yaswanth', 'Wuyyuru', 5.11)
INSERT INTO tbl2 VALUES (2, 'Subhashini', 'Veerla', 5.6)
INSERT INTO tbl2 VALUES (3, 'Tanuja', 'Wuyyuru', 5.5)

-- SELECT With WHERE Condition 

SELECT * FROM tbl2 WHERE LastName = 'WUYYURU'

-- UPDATE

UPDATE tbl2
SET LastName = 'Wuyyuru' WHERE LastName = 'Wuyyuru'

SELECT * FROM tbl2

-- AND & OR Operator

SELECT * FROM tbl2 WHERE FirstName = 'Yaswanth' AND LastName = 'Wuyyuru'

SELECT * FROM tbl2 WHERE FirstName = 'Yaswanth' OR FirstName = 'Subhashini'


-- IN and NOT IN Operator

SELECT * FROM tbl2 WHERE FirstName IN ('Yaswanth', 'Subhashini')

SELECT * FROM tbl2 WHERE LastName NOT IN ('Veerla')

-- BETWEEN & NOT BETWEEN

SELECT * FROM tbl2

SELECT * FROM tbl2 WHERE Height BETWEEN 5.5 AND 5.9

SELECT * FROM tbl2 WHERE Height NOT BETWEEN 5.5 AND 6.0

-- LIKE and NOT LIKE Operator

SELECT * FROM tbl2

SELECT * FROM tbl2 WHERE LastName LIKE 'W%'

SELECT * FROM tbl2 WHERE LastName LIKE 'W_%u'

SELECT * FROM tbl2 WHERE LastName LIKE 'V_%'

SELECT * FROM tbl2 WHERE LastName NOT LIKE 'W_%'

-- ORDER BY

-- Single Column

SELECT * FROM tbl2 
ORDER BY LastName ASC

-- Multiple Columns

SELECT * FROM tbl2
ORDER BY FirstName ASC, LastName DESC, ID ASC

-- Column Positioning

SELECT * FROm tbl2
ORDER BY 2 DESC, 3 ASC

-- TOP

SELECT TOP 2 * FROM tbl2

-- OFFSET

SELECT * FROM tbl2
ORDER BY FirstName ASC
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY

-- UPDATE 

UPDATE tbl2
SET LastName = 'Wuyyuru' WHERE LastName = 'Wuyyuru'

-- DELETE & Truncate Stetements

DELETE FROM tbl2
WHERE ID = 2

TRUNCATE tABLE tbl2

-- ALTER ADD COLMN Statements

ALTER TABLE tbl2 
ADD SALARY INTEGER

-- DROP Statements

DROP TABLE tbl2

DROP DATABASE Modulee

ALTER TABLE tbl2
DROP COLUMN SALARY