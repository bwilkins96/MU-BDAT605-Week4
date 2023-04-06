-- BDAT 605: Database Principles 

/*
Write an UPDATE statement that modifies the InvoiceCopy table. 
Change the PaymentDate to today's date and the PaymentTotal to the balance due for each invoice with a balance due. 
Set today's date with a literal date string, or use the GETDATE() function.
*/

USE AP;
GO

UPDATE InvoiceCopy
SET PaymentDate = GETDATE(), PaymentTotal = InvoiceTotal - CreditTotal
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0;
