-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns: VendorName, InvoiceNumber, InvoiceDate, and InvoiceTotal. 
Return one row per vendor, representing the vendor's invoice with the earliest date.
*/

SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal
FROM Invoices AS I_Main
JOIN Vendors on I_Main.VendorID = Vendors.VendorID
WHERE InvoiceDate = 
	(SELECT MIN(InvoiceDate)
	 FROM Invoices AS I_Sec
	 WHERE I_Main.VendorID = I_Sec.VendorID
	)
ORDER BY VendorName;