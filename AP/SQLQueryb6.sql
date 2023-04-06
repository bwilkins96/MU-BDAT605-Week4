-- BDAT 605: Database Principles 

/*
Write an UPDATE statement that modifies the InvoiceCopy table. 
Change TermsID to 2 for each invoice that's from a vendor with a DefaultTermsID of 2. 
Use a subquery.
*/

USE AP;
GO

UPDATE InvoiceCopy
SET TermsID = 2
WHERE VendorID IN 
	(SELECT VendorID
	 FROM VendorCopy
	 WHERE DefaultTermsID = 2);