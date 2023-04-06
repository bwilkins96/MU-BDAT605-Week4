-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns four columns based on the InvoiceDate column of the Invoices table:
Use the CAST function to return the first column as data type varchar.
Use the CONVERT function to return the second and third columns as a varchar, using style 1 and style 10, respectively.
Use the CAST function to return the fourth column as data type real.
*/

SELECT CAST(InvoiceDate AS Varchar) AS VarDate,
	   CONVERT(Varchar, InvoiceDate, 1) AS VarDate2,
	   CONVERT(Varchar, InvoiceDate, 10) AS VarDate3,
	   CAST(InvoiceDate AS Real) AS RealDate
FROM Invoices;