--Cleansed DIM_Customer Table--
SELECT c.customerkey AS [CustomerKey],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstname AS [FirstName],
      --,[MiddleName]
       c.lastname AS [LastName],
	   c.firstname + ' ' + [lastname] AS [Full_Name],     --Combined First name and Last Name 
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.gender When 'M' THEN 'Male' When 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
       c.datefirstpurchase AS [DateFirstPurchase],
      --,[CommuteDistance]
	   g.city AS [Customer_City],
	   g.[EnglishCountryRegionName] AS [Country]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c              --joined city column from geography table
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] as g ON g.geographykey = c.geographykey
  ORDER BY
  CustomerKey ASC
