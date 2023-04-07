-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns the CategoryName column from the Categories table.
Return one row for each category that has never been assigned to any product in the Products table. 
To do that, use a subquery introduced with the NOT EXISTS operator.
*/

USE MyGuitarShop;
GO

SELECT CategoryName
FROM Categories
WHERE NOT EXISTS
	(SELECT *
	 FROM Products
	 WHERE Categories.CategoryID = Products.CategoryID);