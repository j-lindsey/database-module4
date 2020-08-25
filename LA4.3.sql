--Learning Activity 4.3
--1.
SELECT * 
FROM Vendors INNER JOIN Invoices
ON Vendors.VendorID = Invoices.VendorID;

--2.
SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal-(PaymentTotal + CreditTotal) AS Balance
FROM Vendors V INNER JOIN Invoices I
ON V.VendorID = I.VendorID
WHERE InvoiceTotal-(PaymentTotal + CreditTotal) > 0
ORDER BY VendorName;

--3.
SELECT VendorName, DefaultAccountNo, AccountDescription
FROM Vendors V INNER JOIN GLAccounts G
ON V.DefaultAccountNo = G.AccountNo
ORDER BY AccountDescription, VendorName;

--4.
SELECT V.VendorName AS Vendor, I.InvoiceDate AS Date, I.InvoiceNumber AS Number, LI.InvoiceSequence AS #, LI.InvoiceLineItemAmount AS LineITem
FROM Vendors V INNER JOIN Invoices I
ON V.VendorID = I.VendorID
INNER JOIN InvoiceLineItems LI
ON I.InvoiceID = LI.InvoiceID
ORDER BY VendorName, InvoiceDate, InvoiceNumber, InvoiceSequence;

--5.
SELECT VendorName, VendorState FROM Vendors
WHERE VendorState = 'CA'
UNION
SELECT VendorName, 'Outside CA' FROM Vendors
WHERE VendorState != 'CA'
ORDER BY VendorName;