-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns a single value that represents the sum of the largest unpaid invoices submitted by each vendor. 
Use a derived table that returns MAX(InvoiceTotal) grouped by VendorID, filtering for invoices with a balance due.
*/

USE AP;
GO

SELECT SUM(InvoiceMax) AS MaxInvoiceSum FROM
	(SELECT MAX(InvoiceTotal) AS InvoiceMax 
	 FROM Invoices
	 WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
	 GROUP BY VendorID) AS MaxInvoice;