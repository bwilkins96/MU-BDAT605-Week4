-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns based on the InvoiceTotal column of the Invoices table:
Use the CAST function to return the first column as data type decimal with 2 digits to the right of the decimal point.
Use CAST to return the second column as a varchar.
Use the CONVERT function to return the third column as the same data type as the first column.
Use CONVERT to return the fourth column as a varchar, using style 1.
*/

USE AP;
GO

SELECT CAST(InvoiceTotal AS Decimal(20, 2)),
	   CAST(InvoiceTotal AS Varchar),
	   CONVERT(Decimal(20, 2), InvoiceTotal),
	   CONVERT(Varchar, InvoiceTotal, 1)
FROM Invoices;