-- BDAT 605: Database Principles

/*
Write a DELETE statement that deletes the row you added to the Categories table in exercise 1. 
This statement should use the CategoryID column to identify the row.
*/

USE MyGuitarShop;
GO

DELETE FROM Categories
WHERE CategoryID = 5;