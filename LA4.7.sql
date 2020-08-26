--Learning Activty 4.7

--1.
SELECT VendorID, SUM(PaymentTotal) AS PaymentSum 
FROM Invoices
GROUP BY VendorID;

--2.
SELECT TOP 10 VendorName, SUM(PaymentTotal) AS PaymentSum
FROM Invoices JOIN Vendors
ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorName
ORDER BY SUM(PaymentTotal) DESC;

--3.
SELECT VendorName, COUNT(InvoiceNumber) AS InvoiceCount, SUM(InvoiceTotal) AS InvoiceSum
FROM Invoices JOIN Vendors
ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorName
ORDER BY COUNT(InvoiceNumber) DESC;

--4.
SELECT VendorName, COUNT(AccountNo) AS 'Total # of Accounts'
FROM Vendors JOIN InvoiceLineItems
ON Vendors.DefaultAccountNo = InvoiceLineItems.AccountNo
GROUP BY VendorName;

--5.
SELECT VendorID, InvoiceDate, InvoiceTotal,
	SUM(InvoiceTotal) OVER(PARTITION BY VendorID) AS VendorTotal,
	COUNT(InvoiceNumber) OVER(PARTITION BY VendorID) AS VendorCount,
	AVG(InvoiceTotal)OVER(PARTITION BY VendorID) AS VendorAvg
FROM  Invoices;

--6.
SELECT InvoiceNumber, InvoiceTotal, PaymentTotal
FROM Invoices
WHERE PaymentTotal >(SELECT AVG(PaymentTotal) FROM Invoices
	WHERE PaymentDate IS NOT NULL);

