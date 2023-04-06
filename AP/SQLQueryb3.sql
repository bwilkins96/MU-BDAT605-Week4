-- BDAT 605: Database Principles 

/*
Write an INSERT statement that adds a row to the VendorCopy table for each non-California vendor in the Vendors table. 
(This will result in duplicate vendors in the VendorCopy table.)
*/

USE AP;
GO

INSERT INTO VendorCopy
SELECT VendorName, VendorAddress1, VendorAddress2,
       VendorCity, VendorState, VendorZipCode,
       VendorPhone, VendorContactLName, VendorContactFName,
       DefaultTermsID, DefaultAccountNo
FROM VendorCopy
WHERE VendorState <> 'CA';