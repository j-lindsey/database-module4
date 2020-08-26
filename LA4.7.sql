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
