USE AdventureWorks2025;
GO
SELECT [ProductDescriptionID]
      ,[Description]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2025].[Production].[ProductDescription]
  WHERE [Description] LIKE 'Replacement%'

SELECT [ProductDescriptionID],
       [Description],
       SUBSTRING([Description], LEN('Replacement') + 1) AS [Replacement-Part]
FROM [Production].[ProductDescription]
WHERE [Description] LIKE 'Replacement%';