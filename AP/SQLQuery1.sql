-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns the same result set as this SELECT statement. Substitute a subquery in a WHERE clause for the inner join.

SELECT DISTINCT VendorName
FROM Vendors JOIN Invoices
          ON Vendors.VendorID = Invoices.VendorID
ORDER BY VendorName;
*/

USE AP;
GO

SELECT DISTINCT VendorName
FROM Vendors
WHERE VendorID IN
	(SELECT VendorID 
	 FROM Invoices)
ORDER BY VendorName;