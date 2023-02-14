/****** 
Cleaning Products TBL == Preparing Data Model
******/
SELECT 
		products.[ProductKey]
      ,products.[ProductAlternateKey] as internal_code
	  ,products.[EnglishProductName]
   -- ,products.ProductSubcategoryKey
      ,ISNULL(category.EnglishProductCategoryName, 'Not Classified') AS CategoryName -- Joined from category TBL
	  ,ISNULL(subcategory.EnglishProductSubcategoryName, 'Not Classified') AS SubCategoryName -- Joined from subcategory TBL
   -- ,products.[WeightUnitMeasureCode]
   -- ,products.[SizeUnitMeasureCode]
   -- ,products.[SpanishProductName]
   -- ,products.[FrenchProductName]
   -- ,products.[StandardCost]
   -- ,products.[FinishedGoodsFlag]
      ,products.[Color]
   -- ,products.[SafetyStockLevel]
   -- ,products.[ReorderPoint]
   -- ,products.[ListPrice]
      ,ISNULL(products.[Size],'Not applicable') as Size
   -- ,products.[SizeRange]
   -- ,products.[Weight]
   -- ,products.[DaysToManufacture]
   -- ,products.[ProductLine]
   -- ,products.[DealerPrice]
   -- ,products.[Class]
   -- ,products.[Style]
   -- ,products.[ModelName]
   -- ,products.[LargePhoto]
   -- ,products.[EnglishDescription]
   -- ,products.[FrenchDescription]
   -- ,products.[ChineseDescription]
   -- ,products.[ArabicDescription]
   -- ,products.[StartDate]
   -- ,products.[EndDate]
      ,ISNULL(products.[Status],'Outdated') as Status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as products LEFT OUTER JOIN [AdventureWorksDW2019]..DimProductSubcategory subcategory on products.ProductSubcategoryKey = subcategory.ProductSubcategoryKey 
  LEFT OUTER JOIN [AdventureWorksDW2019]..DimProductCategory as category on subcategory.ProductCategoryKey = category.ProductCategoryKey --Joining category/subcategory tables for classification 
