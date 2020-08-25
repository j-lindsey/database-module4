--LA 4.1 Data Retrieval from Single Table
--1.
SELECT * FROM Vendors
--2.
SELECT VendorID, VendorName FROM Vendors
--3.
SELECT VendorID, InvoiceDate,InvoiceTotal FROM Invoices
--4.
SELECT InvoiceNumber AS Number, InvoiceDate AS Date FROM Invoices
--5.
SELECT VendorName, VendorID, VendorAddress1+' '+ Coalesce(VendorAddress2,' ') AS "Mailing Address" FROM Vendors
--6.
SELECT VendorName, VendorCity + ', ' + VendorState AS Region FROM Vendors
--7.
SELECT DISTINCT InvoiceDate FROM Invoices
--8.
SELECT DISTINCT VendorCity, VendorState FROM Vendors
--9.
SELECT DISTINCT VendorZipCode FROM Vendors
--10.
SELECT * FROM Vendors ORDER BY VendorContactLName, VendorContactFName
--11.
SELECT TOP 5 InvoiceID, InvoiceDate FROM Invoices ORDER BY InvoiceDate DESC
--12.
SELECT TOP 10 PERCENT InvoiceID, InvoiceDate FROM Invoices ORDER BY InvoiceDate
--13.
SELECT TOP 10 PERCENT InvoiceID, InvoiceLineItemAmount FROM InvoiceLineItems ORDER BY InvoiceLineItemAmount DESC
--14.
SELECT TOP 10 PERCENT InvoiceID, InvoiceTotal FROM Invoices ORDER BY InvoiceTotal
--15.
SELECT VendorID, InvoiceTotal, CreditTotal+PaymentTotal-InvoiceTotal AS AmountOwed FROM Invoices
--16.
SELECT * FROM Invoices WHERE PaymentTotal < InvoiceTotal
--17.
SELECT * FROM Vendors WHERE VendorState NOT IN ('CA')
--18.
SELECT * FROM InvoiceLineItems WHERE InvoiceID > 50 AND InvoiceLineItemAmount < 1000
--19.
SELECT * FROM Invoices WHERE InvoiceTotal >= 500 AND InvoiceDate < '2016-01-15'
--20.
SELECT * FROM Invoices WHERE PaymentTotal BETWEEN 0 AND 500
--21.
SELECT * FROM Vendors WHERE VendorState IN ('AL','AB','FL','MS')
--22.
SELECT * FROM Vendors WHERE VendorAddress1 LIKE 'Main%' OR VendorAddress2 LIKE 'Main%'
