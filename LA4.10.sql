--Learning Activity 4.10

--1.
CREATE VIEW InvoiceBasic
AS
SELECT VendorName, InvoiceNumber,InvoiceTotal
FROM Invoices JOIN Vendors
ON Vendors.VendorID = Invoices.VendorID;

SELECT * FROM InvoiceBasic
WHERE LEFT(VendorName, 1) LIKE '[N,O,P]%'
ORDER BY VendorName;

--2.
 CREATE VIEW Top10PaidInvoices
 AS 
 SELECT TOP 10 VendorName, SUM(InvoiceTotal) AS SumOfInvoices, MAX(InvoiceDate) AS LastInvoice
 FROM Vendors JOIN Invoices
 ON Vendors.VendorID = Invoices.InvoiceID
 WHERE PaymentDate IS NOT NULL
 GROUP BY VendorName
 ORDER BY SUM(InvoiceTotal) DESC;

 --3.
 CREATE VIEW VendorAddress
 AS
 SELECT VendorID, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode
 FROM Vendors;

 SELECT * FROM VendorAddress
 WHERE VendorID = 4;

 UPDATE VendorAddress
 SET VendorAddress2 = 'Ste 260',
	VendorAddress1 = LEFT(VendorAddress1, DATALENGTH(VendorAddress1)-8)
 WHERE VendorID = 4;


