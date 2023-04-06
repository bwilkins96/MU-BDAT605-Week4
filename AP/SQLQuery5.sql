-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns: 
VendorName, InvoiceID, InvoiceSequence, and InvoiceLineItemAmount 
for each invoice that has more than one line item in the InvoiceLineItems table. 

Hint: Use a subquery that tests for InvoiceSequence > 1.
*/

USE AP;
GO

SELECT VendorName, Invoices.InvoiceID, InvoiceSequence, InvoiceLineItemAmount
FROM Vendors 
JOIN Invoices ON Vendors.VendorID = Invoices.VendorID
JOIN InvoiceLineItems ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
WHERE Invoices.InvoiceID IN 
	(SELECT InvoiceID 
	 FROM InvoiceLineItems
	 WHERE InvoiceSequence > 1);
