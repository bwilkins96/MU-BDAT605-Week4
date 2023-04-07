-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns the same result set as this SELECT statement, but don’t use a join. 
Instead, use a subquery in a WHERE clause that uses the IN keyword.

SELECT DISTINCT CategoryName
FROM Categories c JOIN Products p
ON c.CategoryID = p.CategoryID
ORDER BY CategoryName
*/
USE MyGuitarShop;
GO

SELECT DISTINCT CategoryName
FROM Categories 
WHERE CategoryID IN 
	(SELECT CategoryID
	 FROM Products)
ORDER BY CategoryName;