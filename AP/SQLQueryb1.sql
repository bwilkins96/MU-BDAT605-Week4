-- BDAT 605: Database Principles 

/*
Write SELECT INTO statements to create two test tables named VendorCopy and InvoiceCopy that are complete copies of the Vendors and Invoices tables.
If VendorCopy and InvoiceCopy already exist, first code two DROP TABLE statements to delete them.
*/

USE AP;
GO

DROP TABLE IF EXISTS VendorCopy;
DROP TABLE IF EXISTS InvoiceCopy;

SELECT *
INTO VendorCopy
FROM Vendors;

SELECT * 
INTO InvoiceCopy
FROM Invoices;