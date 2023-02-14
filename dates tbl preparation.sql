/****** 
Cleaning Dates tbl == Model preparation
******/
SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
   -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as weekday_name
   -- ,[SpanishDayNameOfWeek]
   -- ,[FrenchDayNameOfWeek]
   -- ,[DayNumberOfMonth]
   -- ,[DayNumberOfYear]
   -- ,[WeekNumberOfYear]
      ,[EnglishMonthName] as month_name
   -- ,[SpanishMonthName]
   -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] as month_num
      ,[CalendarQuarter] as quarter_position
      ,[CalendarYear] as year_num
      ,[CalendarSemester] as semester
   -- ,[FiscalQuarter]
   -- ,[FiscalYear]
   -- ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear>=2012
  order by year_num desc
--  where CalendarYear >=2019

  
