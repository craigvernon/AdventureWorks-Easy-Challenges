use AdventureWorksLT2019
GO
--SalesLT


SELECT SalesLT.Customer.CompanyName
FROM 
SalesLT.Customer
LEFT JOIN  SalesLT.CustomerAddress ON
SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
LEFT JOIN SalesLT.Address ON
SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
WHERE City = 'Dallas'

