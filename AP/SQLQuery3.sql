-- BDAT 605: Database Principles 

/*
Write a SELECT statement that answers this question: 
Which invoices have a PaymentTotal that's greater than the median PaymentTotal for all paid invoices? 
(The median marks the midpoint in a set of values; an equal number of values lie above and below it.) 
Return the InvoiceNumber and InvoiceTotal for each invoice. 

Hint: Begin with the solution to exercise 2, then use the ALL keyword in the WHERE clause and code "TOP 50 PERCENT PaymentTotal" in the subquery.
*/

USE AP;
GO

SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal > ALL
	(SELECT TOP 50 PERCENT PaymentTotal 
	 FROM Invoices
	 WHERE PaymentTotal <> 0
	 ORDER BY PaymentTotal);