/****** 
Cleaning FactinternetSales Table == Adding to data model
******/
SELECT 

	   [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey] 
      ,[ShipDateKey] 
  --  ,[ShipDateKey]
      ,[CustomerKey]
  --  ,[PromotionKey]
  --  ,[CurrencyKey]
  --  ,[SalesTerritoryKey]
      ,[SalesOrderNumber]  
  --  ,[SalesOrderLineNumber]
  --  ,[RevisionNumber]
  --  ,[OrderQuantity]
  --  ,[UnitPrice]
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
   
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] sales 
    
  /*
  Based on the original request, Sales Mgr stated they have a 2 years review, this can be made dynamic using the following line:
  where sales.OrderDate >= (year(GETDATE())-2)

  The data is restricted due to limited data available.
  */