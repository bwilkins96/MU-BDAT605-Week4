-- BDAT 605: Database Principles

/*
Write a SELECT statement that returns these columns from the Products table:
The ListPrice column
A column that uses the CAST function to return the ListPrice column with 1 digit to the right of the decimal point
A column that uses the CONVERT function to return the ListPrice column as an integer
A column that uses the CAST function to return the ListPrice column as an integer
*/

USE MyGuitarShop;
GO

SELECT CAST(ListPrice AS decimal(15, 1)) AS DecimalPrice,
       CONVERT(int, ListPrice) AS IntPriceConvert, 
	   CAST(ListPrice AS int) AS IntPriceCast 
FROM Products;