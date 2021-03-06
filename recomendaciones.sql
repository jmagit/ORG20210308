use [AdventureWorks2017]
go

CREATE PARTITION FUNCTION [_dta_pf__4364](int) AS RANGE LEFT FOR VALUES (0, 274, 275, 276, 277, 278, 279)
go

CREATE PARTITION FUNCTION [_dta_pf__4149](int) AS RANGE LEFT FOR VALUES (75122, 75123)
go

CREATE PARTITION FUNCTION [_dta_pf__5201](int) AS RANGE LEFT FOR VALUES (16493, 19236, 19237)
go

CREATE PARTITION SCHEME [_dta_ps__8066] AS PARTITION [_dta_pf__4364] TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY])
go

CREATE PARTITION SCHEME [_dta_ps__5201] AS PARTITION [_dta_pf__4149] TO ([PRIMARY], [PRIMARY], [PRIMARY])
go

CREATE PARTITION SCHEME [_dta_ps__6497] AS PARTITION [_dta_pf__5201] TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY])
go

DROP INDEX [IX_vProductAndDescription] ON [Production].[vProductAndDescription]
go

DROP INDEX [IX_TransactionHistory_ReferenceOrderID_ReferenceOrderLineID] ON [Production].[TransactionHistory]
go

DROP INDEX [IX_TransactionHistory_ProductID] ON [Production].[TransactionHistory]
go

DROP INDEX [IX_TransactionHistoryArchive_ReferenceOrderID_ReferenceOrderLineID] ON [Production].[TransactionHistoryArchive]
go

DROP INDEX [IX_TransactionHistoryArchive_ProductID] ON [Production].[TransactionHistoryArchive]
go

DROP INDEX [IX_WorkOrderRouting_ProductID] ON [Production].[WorkOrderRouting]
go

DROP INDEX [IX_WorkOrder_ProductID] ON [Production].[WorkOrder]
go

DROP INDEX [IX_WorkOrder_ScrapReasonID] ON [Production].[WorkOrder]
go

DROP INDEX [IX_BillOfMaterials_UnitMeasureCode] ON [Production].[BillOfMaterials]
go

DROP INDEX [numprod] ON [Production].[Product]
go

SET ANSI_PADDING ON

go

CREATE NONCLUSTERED INDEX [_dta_index_Product_8_482100758__K1_K2] ON [Production].[Product]
(
	[ProductID] ASC,
	[Name] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_482100758_17_6] ON [Production].[Product]([Class], [Color])
go

CREATE STATISTICS [_dta_stat_482100758_14_6] ON [Production].[Product]([Weight], [Color])
go

CREATE STATISTICS [_dta_stat_482100758_19_10] ON [Production].[Product]([ProductSubcategoryID], [ListPrice])
go

CREATE STATISTICS [_dta_stat_482100758_18_6] ON [Production].[Product]([Style], [Color])
go

CREATE STATISTICS [_dta_stat_482100758_10_18] ON [Production].[Product]([ListPrice], [Style])
go

CREATE STATISTICS [_dta_stat_482100758_17_19] ON [Production].[Product]([Class], [ProductSubcategoryID])
go

CREATE STATISTICS [_dta_stat_482100758_16_18_10] ON [Production].[Product]([ProductLine], [Style], [ListPrice])
go

CREATE STATISTICS [_dta_stat_482100758_19_2_10] ON [Production].[Product]([ProductSubcategoryID], [Name], [ListPrice])
go

DROP INDEX [IX_ProductReview_ProductID_Name] ON [Production].[ProductReview]
go

DROP INDEX [IX_Document_FileName_Revision] ON [Production].[Document]
go

DROP INDEX [IX_vStateProvinceCountryRegion] ON [Person].[vStateProvinceCountryRegion]
go

DROP INDEX [XMLPROPERTY_Person_Demographics] ON [Person].[Person]
go

DROP INDEX [XMLVALUE_Person_Demographics] ON [Person].[Person]
go

DROP INDEX [XMLPATH_Person_Demographics] ON [Person].[Person]
go

CREATE NONCLUSTERED INDEX [_dta_index_Person_8_274100017_0_K1_5_7_8258] ON [Person].[Person]
(
	[BusinessEntityID] ASC
)
INCLUDE([FirstName],[LastName]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [_dta_ps__8066]([BusinessEntityID])
go

DROP INDEX [IX_EmailAddress_EmailAddress] ON [Person].[EmailAddress]
go

DROP INDEX [IX_PersonPhone_PhoneNumber] ON [Person].[PersonPhone]
go

DROP INDEX [IX_BusinessEntityAddress_AddressTypeID] ON [Person].[BusinessEntityAddress]
go

DROP INDEX [IX_BusinessEntityAddress_AddressID] ON [Person].[BusinessEntityAddress]
go

DROP INDEX [IX_Address_StateProvinceID] ON [Person].[Address]
go

DROP INDEX [IX_BusinessEntityContact_ContactTypeID] ON [Person].[BusinessEntityContact]
go

DROP INDEX [IX_BusinessEntityContact_PersonID] ON [Person].[BusinessEntityContact]
go

DROP INDEX [IX_SalesOrderDetail_ProductID] ON [Sales].[SalesOrderDetail]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderDetail_8_1810105489_0_K1_K9] ON [Sales].[SalesOrderDetail]
(
	[SalesOrderID] ASC,
	[LineTotal] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [_dta_ps__5201]([SalesOrderID])
go

CREATE STATISTICS [_dta_stat_1810105489_1_5] ON [Sales].[SalesOrderDetail]([SalesOrderID], [ProductID])
go

DROP INDEX [IX_SalesOrderHeader_CustomerID] ON [Sales].[SalesOrderHeader]
go

DROP INDEX [IX_SalesOrderHeader_SalesPersonID] ON [Sales].[SalesOrderHeader]
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_8_1922105888__K7_1_2_3_4_5_6_9_10_11_12_13_14_15_16_17_18_19_20_21_22_24_25_26] ON [Sales].[SalesOrderHeader]
(
	[OnlineOrderFlag] ASC
)
INCLUDE([SalesOrderID],[RevisionNumber],[OrderDate],[DueDate],[ShipDate],[Status],[PurchaseOrderNumber],[AccountNumber],[CustomerID],[SalesPersonID],[TerritoryID],[BillToAddressID],[ShipToAddressID],[ShipMethodID],[CreditCardID],[CreditCardApprovalCode],[CurrencyRateID],[SubTotal],[TaxAmt],[Freight],[Comment],[rowguid],[ModifiedDate]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_8_1922105888__K13_K12_4_23] ON [Sales].[SalesOrderHeader]
(
	[TerritoryID] ASC,
	[SalesPersonID] ASC
)
INCLUDE([DueDate],[TotalDue]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_8_1922105888__K6_4_23] ON [Sales].[SalesOrderHeader]
(
	[Status] ASC
)
INCLUDE([DueDate],[TotalDue]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_8_1922105888__K1_20] ON [Sales].[SalesOrderHeader]
(
	[SalesOrderID] ASC
)
INCLUDE([SubTotal]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE NONCLUSTERED INDEX [_dta_index_SalesOrderHeader_8_1922105888__K23] ON [Sales].[SalesOrderHeader]
(
	[TotalDue] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_1922105888_11_1] ON [Sales].[SalesOrderHeader]([CustomerID], [SalesOrderID])
go

CREATE STATISTICS [_dta_stat_1922105888_12_11_17] ON [Sales].[SalesOrderHeader]([SalesPersonID], [CustomerID], [CreditCardID])
go

CREATE STATISTICS [_dta_stat_1922105888_17_13_12] ON [Sales].[SalesOrderHeader]([CreditCardID], [TerritoryID], [SalesPersonID])
go

CREATE STATISTICS [_dta_stat_1922105888_11_17_13_12] ON [Sales].[SalesOrderHeader]([CustomerID], [CreditCardID], [TerritoryID], [SalesPersonID])
go

DROP INDEX [IX_Customer_TerritoryID] ON [Sales].[Customer]
go

CREATE NONCLUSTERED INDEX [_dta_index_Customer_8_1653580929__K2_K1] ON [Sales].[Customer]
(
	[PersonID] ASC,
	[CustomerID] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE STATISTICS [_dta_stat_1653580929_1_2] ON [Sales].[Customer]([CustomerID], [PersonID])
go

DROP INDEX [IX_Store_SalesPersonID] ON [Sales].[Store]
go

DROP INDEX [IX_CountryRegionCurrency_CurrencyCode] ON [Sales].[CountryRegionCurrency]
go

DROP INDEX [IX_ShoppingCartItem_ShoppingCartID_ProductID] ON [Sales].[ShoppingCartItem]
go

DROP INDEX [IX_SpecialOfferProduct_ProductID] ON [Sales].[SpecialOfferProduct]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE VIEW [Sales].[_dta_mv_27] WITH SCHEMABINDING
 AS 
SELECT  [Sales].[SalesOrderDetail].[ProductID] as _col_1,  [Sales].[Customer].[PersonID] as _col_2,  [Sales].[SalesOrderDetail].[SalesOrderID] as _col_3,  [Sales].[SalesOrderDetail].[SalesOrderDetailID] as _col_4 FROM  [Sales].[Customer],  [Sales].[SalesOrderDetail],  [Sales].[SalesOrderHeader]   WHERE  [Sales].[SalesOrderDetail].[SalesOrderID] = [Sales].[SalesOrderHeader].[SalesOrderID]  AND  [Sales].[Customer].[CustomerID] = [Sales].[SalesOrderHeader].[CustomerID]  

go

SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

go

CREATE UNIQUE CLUSTERED INDEX [_dta_index__dta_mv_27_c_8_1108198998__K3_K4] ON [Sales].[_dta_mv_27]
(
	[_col_3] ASC,
	[_col_4] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE VIEW [Sales].[_dta_mv_32] WITH SCHEMABINDING
 AS 
SELECT  [Sales].[SalesOrderHeader].[SalesPersonID] as _col_1,  count_big(*) as _col_2, SUM( [AdventureWorks2017].[Sales].[SalesOrderHeader].[TotalDue] ) as _col_3 FROM  [Sales].[SalesOrderHeader]  GROUP BY  [Sales].[SalesOrderHeader].[SalesPersonID]  

go

SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

go

CREATE UNIQUE CLUSTERED INDEX [_dta_index__dta_mv_32_c_8_1188199283__K1] ON [Sales].[_dta_mv_32]
(
	[_col_1] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

SET QUOTED_IDENTIFIER ON
go

SET ARITHABORT ON
go

SET CONCAT_NULL_YIELDS_NULL ON
go

SET ANSI_NULLS ON
go

SET ANSI_PADDING ON
go

SET ANSI_WARNINGS ON
go

SET NUMERIC_ROUNDABORT OFF
go

CREATE VIEW [Sales].[_dta_mv_2] WITH SCHEMABINDING
 AS 
SELECT  [Sales].[SalesOrderDetail].[ProductID] as _col_1,  SUM([AdventureWorks2017].[Sales].[SalesOrderDetail].[OrderQty]) as _col_2, count_big(*) as _col_3 FROM  [Sales].[SalesOrderDetail]  GROUP BY  [Sales].[SalesOrderDetail].[ProductID]  

go

SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

go

CREATE UNIQUE CLUSTERED INDEX [_dta_index__dta_mv_2_c_8_708197573__K1] ON [Sales].[_dta_mv_2]
(
	[_col_1] ASC
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PRIMARY]
go

CREATE NONCLUSTERED INDEX [_dta_index_CreditCard_8_1525580473_0_K1_2_3] ON [Sales].[CreditCard]
(
	[CreditCardID] ASC
)
INCLUDE([CardType],[CardNumber]) WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [_dta_ps__6497]([CreditCardID])
go

DROP INDEX [IX_PurchaseOrderDetail_ProductID] ON [Purchasing].[PurchaseOrderDetail]
go

DROP INDEX [IX_PurchaseOrderHeader_EmployeeID] ON [Purchasing].[PurchaseOrderHeader]
go

DROP INDEX [IX_PurchaseOrderHeader_VendorID] ON [Purchasing].[PurchaseOrderHeader]
go

DROP INDEX [IX_ProductVendor_UnitMeasureCode] ON [Purchasing].[ProductVendor]
go

DROP INDEX [IX_ProductVendor_BusinessEntityID] ON [Purchasing].[ProductVendor]
go

DROP INDEX [IX_JobCandidate_BusinessEntityID] ON [HumanResources].[JobCandidate]
go

DROP INDEX [IX_EmployeeDepartmentHistory_DepartmentID] ON [HumanResources].[EmployeeDepartmentHistory]
go

DROP INDEX [IX_EmployeeDepartmentHistory_ShiftID] ON [HumanResources].[EmployeeDepartmentHistory]
go

DROP INDEX [IX_Employee_OrganizationLevel_OrganizationNode] ON [HumanResources].[Employee]
go

DROP INDEX [IX_Employee_OrganizationNode] ON [HumanResources].[Employee]
go

