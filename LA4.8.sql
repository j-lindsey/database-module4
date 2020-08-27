--Learning Activity 4.8

--1.
SELECT CAST(InvoiceTotal AS decimal(10,2)) , 
	CAST(InvoiceTotal AS varchar),
	CONVERT(decimal(10,2), InvoiceTotal),
	CONVERT(varchar, InvoiceTotal, 1)
FROM Invoices;


--2.
SELECT VendorContactFName + ' ' + LEFT(VendorContactLName, 1)+'.' AS Contact,
	SUBSTRING(VendorPhone, 6,9) AS Phone
	FROM Vendors
	WHERE SUBSTRING(VendorPhone, 2, 3) = '559'
	ORDER BY VendorContactFName, VendorContactLName;

--3.
SELECT InvoiceNumber, InvoiceTotal -(PaymentTotal + CreditTotal) AS 'Balance Due', InvoiceDueDate
FROM Invoices
WHERE InvoiceTotal -(PaymentTotal + CreditTotal) > 0
	AND DATEDIFF(Day, InvoiceDueDate, GETDATE())<30;