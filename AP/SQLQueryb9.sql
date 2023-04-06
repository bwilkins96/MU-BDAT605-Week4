-- BDAT 605: Database Principles 

/*
Write a DELETE statement for the VendorCopy table. Delete the vendors that are located in states from which no vendor has ever sent an invoice. 

Hint: Use a subquery coded with "SELECT DISTINCT VendorState" introduced with the NOT IN operator.
*/

USE AP;
GO

DELETE FROM VendorCopy 
WHERE VendorState NOT IN 
	(SELECT DISTINCT VendorState
	 FROM VendorCopy
	 JOIN InvoiceCopy ON VendorCopy.VendorID = InvoiceCopy.VendorID);


