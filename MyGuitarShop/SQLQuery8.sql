-- BDAT 605: Database Principles

/*
Write a SELECT statement that returns these columns from the Products table:
The DateAdded column
A column that uses the CAST function to return the DateAdded column with its date only (year, month, and day)
A column that uses the CAST function to return the DateAdded column with its full time only (hour, minutes, seconds, and milliseconds)
A column that uses the CAST function to return the DateAdded column with just the month and day
*/

USE MyGuitarShop;
GO

SELECT CAST(DateAdded AS date) AS DateOnly,
	   CAST(DateAdded AS time) AS TimeOnly,
	   CAST(DateAdded AS varchar(6)) AS MonthAndDay
FROM Products;