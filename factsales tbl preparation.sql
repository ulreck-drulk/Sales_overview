/****** 
Cleaning FactinternetSales Table == Adding to data model
******/
SELECT 

	   [ProductKey]
	  ,[SalesOrderNumber]
      ,dates.FullDateAlternateKey date_ordered -- Joining dimdate to get proper format order date
	  ,[ShipDate] ship_date
	  ,dates2.FullDateAlternateKey due_date -- Joining dimdate to get proper format due date
  --  ,[ShipDateKey]
      ,[CustomerKey]
  --  ,[PromotionKey]
  --  ,[CurrencyKey]
  --  ,[SalesTerritoryKey]
  --  ,[SalesOrderLineNumber]
  --  ,[RevisionNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
  --  ,[ExtendedAmount]
  --  ,[DiscountAmount]
  --  ,[UnitPriceDiscountPct]
  --  ,[ProductStandardCost]
  --  ,[TotalProductCost]
      ,[SalesAmount]
  --  ,[TaxAmt]
  --  ,[Freight]
  --  ,[CarrierTrackingNumber]
  --  ,[CustomerPONumber]
  --  ,[OrderDate]
   
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] sales LEFT OUTER JOIN AdventureWorksDW2019..DimDate dates on sales.OrderDateKey = dates.DateKey LEFT OUTER JOIN AdventureWorksDW2019..DimDate dates2 on sales.DueDateKey = dates2.DateKey
  where sales.OrderDate >= 2012 -- Restricting the data to the last 2 years available
  
  
  /*
  Based on the original request, Sales Mgr stated they have a 2 years review, this can be made dynamic using the following line:
  where sales.OrderDate >= (year(GETDATE())-2)

  The data is restricted due to limited data available.
  */