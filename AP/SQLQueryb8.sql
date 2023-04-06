-- BDAT 605: Database Principles 

/*
Write a DELETE statement that deletes all vendors in the state of Minnesota from the VendorCopy table.
*/

USE AP;
GO

DELETE FROM VendorCopy
WHERE VendorState = 'MN';