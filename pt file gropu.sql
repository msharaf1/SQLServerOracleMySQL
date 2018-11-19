SELECT * FROM [AdventureWorks2016CTP3].HUMANRESOURCES.[Employee]

SELECT * FROM [AdventureWorks2016CTP3].

SELECT * FROM [AdventureWorks2016CTP3].[Sales].[SalesOrderHeader]


USE KBL;
CREATE SCHEMA SALES

SELECT * FROM SALES.SALESORDERHEADER;

SELECT *
FROM [AdventureWorks2016CTP3].[Sales].[SalesOrderHeader]

SET IDENTITY_INSERT SALES.SALESORDERHEADERLIST ON

INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM [AdventureWorks2016CTP3].[Sales].[SalesOrderHeader]


INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM SALES.SALESORDERHEADERLIST;

INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM SALES.SALESORDERHEADERLIST;

INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM SALES.SALESORDERHEADERLIST;

INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM SALES.SALESORDERHEADERLIST;

INSERT INTO SALES.SALESORDERHEADERLIST ([SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate])
SELECT [SalesOrderID], [RevisionNumber], [OrderDate], [DueDate], [ShipDate], [Status], [OnlineOrderFlag], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [ShipMethodID], [CreditCardID], [CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [TotalDue], [Comment], [rowguid], [ModifiedDate]
FROM SALES.SALESORDERHEADERLIST;


USE KBL;
GO
CHECKPOINT;
GO
CHECKPOINT; -- run twice to ensure file wrap-around
GO
DBCC SHRINKFILE(KBLLOG, 200); -- unit is set in MBs
GO

SELECT * FROM SALES.SALESORDERHEADERLIST
where salesorderid <50;

kill 54;
