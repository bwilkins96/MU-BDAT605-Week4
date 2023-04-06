-- BDAT 605: Database Principles 

/*
Solve exercise 6 using a join rather than a subquery.
*/

USE AP;
GO

UPDATE InvoiceCopy
SET TermsID = 2
FROM InvoiceCopy JOIN VendorCopy
	ON InvoiceCopy.VendorID = VendorCopy.VendorID
WHERE DefaultTermsID = 2;