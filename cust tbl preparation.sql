/****** 
Cleaning Customer Data == Model preparation
******/
SELECT dcust.[CustomerKey]
      ,dgeo.EnglishCountryRegionName Country
	  ,dgeo.City
      --,[CustomerAlternateKey]
      --,[Title]
      ,dcust.[FirstName] +' '+dcust.[LastName] as [FullName]
	  --,[NameStyle]
      ,dcust.[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , CASE dcust.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,dcust.[EmailAddress]
      ,dcust.[YearlyIncome]
   -- ,dcust.[TotalChildren]
   -- ,dcust.[NumberChildrenAtHome]
      ,dcust.[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,dcust.[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      ,dcust.[HouseOwnerFlag]
      ,dcust.[NumberCarsOwned]
      ,dcust.[AddressLine1]
      ,dcust.[AddressLine2]
      ,dcust.[Phone]
      ,dcust.[DateFirstPurchase]
  --  ,dcust.[CommuteDistance]

  FROM AdventureWorksDW2019..DimCustomer as dcust LEFT OUTER JOIN AdventureWorksDW2019..DimGeography as dgeo ON dgeo.GeographyKey = dcust.GeographyKey --Joines Geography table to disclose country/city names
  order by dcust.CustomerKey desc -- List Ordered by Customer ID
