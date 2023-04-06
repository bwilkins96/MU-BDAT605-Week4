-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns the name, city, and state of each vendor that's located in a unique city and state. 
In other words, don't include vendors that have a city and state in common with another vendor.
*/

USE AP;
GO

SELECT VendorName, VendorCity, VendorState
FROM Vendors
WHERE VendorState + VendorCity NOT IN 
	(SELECT VendorState + VendorCity 
	 FROM Vendors
	 GROUP BY VendorState + VendorCity
	 HAVING COUNT(*) > 1
	);