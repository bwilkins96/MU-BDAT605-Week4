-- BDAT 605: Database Principles 

/*
Write a SELECT statement that returns two columns from the GLAccounts table: AccountNo and Account Description. 
The result set should have one row for each account number that has never been used. 
Use a correlated subquery introduced with the NOT EXISTS operator. Sort the final result set by AccountNo.
*/

USE AP;
GO

SELECT AccountNo, AccountDescription
FROM GLAccounts
WHERE NOT EXISTS 
	(SELECT *
	 FROM InvoiceLineItems
	 WHERE InvoiceLineItems.AccountNo = GLAccounts.AccountNo)
ORDER BY AccountNo;