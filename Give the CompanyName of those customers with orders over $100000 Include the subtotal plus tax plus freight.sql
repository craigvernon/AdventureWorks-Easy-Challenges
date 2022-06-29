use AdventureWorksLT2019
GO
--SalesLT

SELECT 
SalesLt.Customer.CompanyName
FROM SalesLT.Customer
LEFT JOIN SalesLT.SalesOrderHeader ON
SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
WHERE SalesLT.SalesOrderHeader.SubTotal +
SalesLT.SalesOrderHeader.TaxAmt + 
SalesLT.SalesOrderHeader.Freight > 100000








