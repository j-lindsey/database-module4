--LA 4.2
--1.
SELECT VendorContactFName, VendorContactLName, VendorName FROM Vendors ORDER BY VendorContactLName, VendorContactFName
--2
SELECT InvoiceNumber AS Number, InvoiceTotal AS Total, PaymentTotal+CreditTotal AS Credits, InvoiceTotal-(PaymentTotal+CreditTotal) AS Balance FROM Invoices
--3.
SELECT VendorContactLName + ', ' + VendorContactFName AS [Full Name] FROM Vendors ORDER BY VendorContactLName, VendorContactFName
--4.
SELECT InvoiceTotal, .1*InvoiceTotal AS [10%], InvoiceTotal*1.1 AS [Plus 10%] FROM Invoices WHERE InvoiceTotal-(PaymentTotal+ CreditTotal) >1000 ORDER BY InvoiceTotal DESC
--5.
SELECT InvoiceNumber AS Number, InvoiceTotal AS Total, PaymentTotal+CreditTotal AS Credits, InvoiceTotal-(PaymentTotal+CreditTotal) AS Balance FROM Invoices WHERE InvoiceTotal BETWEEN 500 AND 10000
--6.
SELECT VendorContactLName + ', ' + VendorContactFName AS [Full Name] FROM Vendors WHERE VendorContactLName LIKE '[A-C]%' OR VendorContactLName LIKE 'E%' ORDER BY VendorContactLName, VendorContactFName
--7.
SELECT * FROM 
	(
	SELECT PaymentDate, InvoiceTotal-(PaymentTotal+CreditTotal) AS Balance, Valid =
		CASE
			WHEN InvoiceTotal-(PaymentTotal+CreditTotal) > 0 AND PaymentDate IS NULL THEN 'Valid'
			WHEN InvoiceTotal-(PaymentTotal+CreditTotal) <= 0 AND PaymentDate IS NOT NULL THEN 'Valid'
			ELSE 'Not Valid'
		END
		FROM Invoices
	) AS Innertable
	WHERE Valid = 'Valid'
	
