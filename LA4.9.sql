--Learning Activity 4.9

--1.
SELECT * INTO VendorCopy
FROM Vendors;

SELECT * INTO InvoiceCopy
FROM Invoices;

--2.
INSERT INTO InvoiceCopy
VALUES (32,'AX-014-027', '6/21/2016', $434.58, 0,0,2,'07/8/2016',null);

--3.
UPDATE VendorCopy
SET DefaultAccountNo = 403
WHERE DefaultAccountNo = 400;

--4.
UPDATE InvoiceCopy
SET PaymentDate = GETDATE(),
	PaymentTotal = InvoiceTotal - (PaymentTotal + CreditTotal)
WHERE InvoiceTotal - (PaymentTotal + CreditTotal) > 0;

--5.
DELETE FROM VendorCopy
WHERE VendorState = 'MN';

--6.
DELETE FROM VendorCopy
WHERE VendorState NOT IN
(SELECT DISTINCT VendorState FROM VendorCopy
JOIN InvoiceCopy
ON VendorCopy.VendorID = InvoiceCopy.VendorID
);
