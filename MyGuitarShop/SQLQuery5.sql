-- BDAT 605: Database Principles

/*
Write an UPDATE statement that modifies the row you just added to the Categories table. 
This statement should change the CategoryName column to “Woodwinds”, 
and it should use the CategoryID column to identify the row.
*/

USE MyGuitarShop;
GO

UPDATE Categories
SET CategoryName = 'Woodwinds'
WHERE CategoryID = 5;