-- BDAT 605: Database Principles 

/*
Write an UPDATE statement that modifies the VendorCopy table. 
Change the default account number to 403 for each vendor that has a default account number of 400.
*/

USE AP;
GO

UPDATE VendorCopy
SET DefaultAccountNo = 403
WHERE DefaultAccountNo = 400;