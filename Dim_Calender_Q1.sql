--cleansed DIM_Date Table--

SELECT  [DateKey],
      [FullDateAlternateKey] AS Date,
      --[DayNumberOfWeek]
      --[EnglishDayNameOfWeek]
      --[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --[DayNumberOfYear]
      --[WeekNumberOfYear]
      [EnglishMonthName] AS Month,
      --[SpanishMonthName]
      --[FrenchMonthName]
      [MonthNumberOfYear] AS Month_No,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate] 
  WHERE CalendarYear >= 2022
