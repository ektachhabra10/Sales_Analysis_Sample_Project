-- Cleansed DIM_Products Table--
SELECT p.[ProductKey],
       p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
       p.[EnglishProductName] AS ProductName,
	   ISNULL (ps.EnglishProductSubcategoryName, 'Other') AS [Sub Category],   --joined in from the subcategory Table
	   ISNULL (pc.EnglishProductCategoryName,'Other') AS [Product Category],  --joined in from Category Table
	  --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
       p.[Color] AS [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ISNULL(p.[Size], 'One Size') AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] AS [Product Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
    ISNULL (p.Status, 'Outdated') AS [Product Status]
	  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
  p.ProductKey ASC
