use AdventureWorksLT2019
GO
--SalesLT

SELECT * FROM SalesLT.Product
WHERE Name = 'Racing Socks, L'
-- product id 875

SELECT * FROM SalesLT.SalesOrderDetail


SELECT
SalesLT.Customer.CustomerID AS customerCustomerID, 
SalesLT.SalesOrderHeader.CustomerID AS salesOrderHeaderCustomerID,
SalesLT.SalesOrderHeader.SalesOrderID AS salesOrderHeaderOrderID,
SalesLT.SalesOrderDetail.SalesOrderID AS salesOrderDetailOrderID,
SalesLT.SalesOrderDetail.ProductID AS salesOrderDetailProductID,
SalesLT.Product.ProductID AS productProductID,
SalesLT.SalesOrderDetail.OrderQty
FROM
SalesLT.Customer
LEFT JOIN SalesLT.SalesOrderHeader ON
SalesLT.SalesOrderHeader.CustomerID = SalesLT.Customer.CustomerID
LEFT JOIN SalesLT.SalesOrderDetail ON
SalesLT.SalesOrderDetail.SalesOrderID = SalesLT.SalesOrderHeader.SalesOrderID
LEFT JOIN  SalesLT.Product ON
SalesLT.Product.ProductId = SalesLT.SalesOrderDetail.ProductID
WHERE SalesLT.Customer.CompanyName = 'Riding Cycles' AND SalesLT.Product.ProductID = 875







 