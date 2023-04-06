-- BDAT 605: Database Principles 

/*
Rewrite exercise 6 so it uses a common table expression (CTE) instead of a derived table.
*/

USE AP;
GO

WITH MaxInvoice AS (
	SELECT MAX(InvoiceTotal) AS InvoiceMax 
	FROM Invoices
	WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
	GROUP BY VendorID
)
SELECT SUM(InvoiceMax) AS MaxInvoiceSum
FROM MaxInvoice;
