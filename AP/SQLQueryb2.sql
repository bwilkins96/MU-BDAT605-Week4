-- BDAT 605: Database Principles 

/*
Write an INSERT statement that adds a row to the InvoiceCopy table with the following values:
VendorID: 32
InvoiceTotal: $434.58
TermsID: 2
InvoiceNumber: AX-014-027
PaymentTotal: $0.00
InvoiceDueDate: 07/8/12
InvoiceDate: 6/21/12
CreditTotal: $0.00
PaymentDate: null
*/

USE AP;
GO

INSERT INTO InvoiceCopy (VendorID, InvoiceTotal, TermsID, InvoiceNumber, PaymentTotal, InvoiceDueDate, InvoiceDate, CreditTotal, PaymentDate)
	VALUES (32, 434.58, 2, 'AX-014-027', 0, '07/08/2012', '06/21/2012', 0, NULL);