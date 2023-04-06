-- BDAT 605: Database Principles 

/*
Write a SELECT statement that answers this question: 
Which invoices have a PaymentTotal that's greater than the average PaymentTotal for all paid invoices? 
Return the InvoiceNumber and InvoiceTotal for each invoice.
*/

USE AP;
GO

SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal > 
	(SELECT AVG(PaymentTotal) 
	 FROM Invoices
	 WHERE PaymentTotal <> 0);